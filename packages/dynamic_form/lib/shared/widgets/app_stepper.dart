import 'package:flutter/material.dart';

enum AppStepState {
  indexed,
  editing,
  complete,
  disabled,
  error,
}

enum AppStepperType {
  vertical,
  horizontal,
}

@immutable
class AppStep {
  const AppStep({
    required this.title,
    this.subtitle,
    required this.content,
    this.state = AppStepState.indexed,
    this.isActive = false,
  });

  final Widget title;
  final Widget? subtitle;
  final Widget content;
  final AppStepState state;
  final bool isActive;
}

class AppStepper extends StatefulWidget {
  const AppStepper({
    super.key,
    required this.steps,
    this.currentStep = 0,
    this.onStepTapped,
    this.onStepContinue,
    this.onStepCancel,
    this.type = AppStepperType.vertical,
    this.controller,
    this.physics,
  });

  final List<AppStep> steps;
  final int currentStep;
  final ValueChanged<int>? onStepTapped;
  final VoidCallback? onStepContinue;
  final VoidCallback? onStepCancel;
  final AppStepperType type;
  final ScrollController? controller;
  final ScrollPhysics? physics;

  @override
  State<AppStepper> createState() => _AppStepperState();
}

class _AppStepperState extends State<AppStepper> with TickerProviderStateMixin {
  late List<GlobalKey> _keys;
  final Map<int, AppStepState> _oldStates = <int, AppStepState>{};

  @override
  void initState() {
    super.initState();
    _keys = List<GlobalKey>.generate(
      widget.steps.length,
      (int i) => GlobalKey(),
    );

    for (int i = 0; i < widget.steps.length; i += 1) {
      _oldStates[i] = widget.steps[i].state;
    }
  }

  @override
  void didUpdateWidget(AppStepper oldWidget) {
    super.didUpdateWidget(oldWidget);
    assert(widget.steps.length == oldWidget.steps.length);

    for (int i = 0; i < oldWidget.steps.length; i += 1) {
      _oldStates[i] = oldWidget.steps[i].state;
    }
  }

  bool _isFirst(int index) {
    return index == 0;
  }

  bool _isLast(int index) {
    return widget.steps.length - 1 == index;
  }

  bool _isCurrent(int index) {
    return widget.currentStep == index;
  }

  bool _isDark() {
    return Theme.of(context).brightness == Brightness.dark;
  }

  Widget _buildLine(bool visible, bool isActive) {
    return Container(
      width: visible ? 1.0 : 0.0,
      height: 16.0,
      color: isActive
          ? Theme.of(context).colorScheme.primary
          : Colors.grey.shade400,
    );
  }

  Widget _buildCircleChild(int index, bool oldState) {
    final AppStepState state =
        oldState ? _oldStates[index]! : widget.steps[index].state;
    final bool isDarkActive = _isDark() && widget.steps[index].isActive;

    switch (state) {
      case AppStepState.indexed:
      case AppStepState.disabled:
        return Text(
          '${index + 1}',
          style: TextStyle(
            fontSize: 12.0,
            color: isDarkActive ? Colors.black87 : Colors.white,
          ),
        );
      case AppStepState.editing:
        return Icon(
          Icons.edit,
          color: isDarkActive ? Colors.black87 : Colors.white,
          size: 18.0,
        );
      case AppStepState.complete:
        return Icon(
          Icons.check,
          color: isDarkActive ? Colors.black87 : Colors.white,
          size: 18.0,
        );
      case AppStepState.error:
        return const Center(
            child: Text('!',
                style: TextStyle(fontSize: 12.0, color: Colors.white)));
    }
  }

  Color _circleColor(int index) {
    final bool isActive = widget.steps[index].isActive;
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    if (!_isDark()) {
      return isActive
          ? colorScheme.primary
          : colorScheme.onSurface.withOpacity(0.38);
    } else {
      return isActive ? colorScheme.secondary : colorScheme.surface;
    }
  }

  Widget _buildCircle(int index, bool oldState) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      width: 24.0,
      height: 24.0,
      child: AnimatedContainer(
        curve: Curves.fastOutSlowIn,
        duration: kThemeAnimationDuration,
        decoration: BoxDecoration(
          color: _circleColor(index),
          shape: BoxShape.circle,
        ),
        child: Center(
          child: _buildCircleChild(index,
              oldState && widget.steps[index].state == AppStepState.error),
        ),
      ),
    );
  }

  Widget _buildVerticalControls(int stepIndex) {
    final ThemeData themeData = Theme.of(context);
    final ColorScheme colorScheme = themeData.colorScheme;
    final MaterialLocalizations localizations =
        MaterialLocalizations.of(context);

    return Container(
      margin: const EdgeInsets.only(top: 16.0),
      child: ConstrainedBox(
        constraints: const BoxConstraints.tightFor(height: 48.0),
        child: Row(
          children: <Widget>[
            TextButton(
              onPressed: widget.onStepContinue,
              style: TextButton.styleFrom(
                backgroundColor: colorScheme.primary,
                foregroundColor: colorScheme.onPrimary,
              ),
              child: Text(localizations.continueButtonLabel.toUpperCase()),
            ),
            Container(
              margin: const EdgeInsetsDirectional.only(start: 8.0),
              child: TextButton(
                onPressed: widget.onStepCancel,
                style: TextButton.styleFrom(
                  foregroundColor: Colors.black54,
                ),
                child: Text(localizations.cancelButtonLabel.toUpperCase()),
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextStyle _titleStyle(int index) {
    final ThemeData themeData = Theme.of(context);
    final TextTheme textTheme = themeData.textTheme;

    switch (widget.steps[index].state) {
      case AppStepState.indexed:
      case AppStepState.editing:
      case AppStepState.complete:
        return textTheme.bodyLarge!;
      case AppStepState.disabled:
        return textTheme.bodyLarge!.copyWith(
          color: _isDark() ? Colors.white38 : Colors.black38,
        );
      case AppStepState.error:
        return textTheme.bodyLarge!.copyWith(
          color: _isDark() ? Colors.red.shade400 : Colors.red,
        );
    }
  }

  TextStyle _subtitleStyle(int index) {
    final ThemeData themeData = Theme.of(context);
    final TextTheme textTheme = themeData.textTheme;

    switch (widget.steps[index].state) {
      case AppStepState.indexed:
      case AppStepState.editing:
      case AppStepState.complete:
        return textTheme.bodySmall!;
      case AppStepState.disabled:
        return textTheme.bodySmall!.copyWith(
          color: _isDark() ? Colors.white38 : Colors.black38,
        );
      case AppStepState.error:
        return textTheme.bodySmall!.copyWith(
          color: _isDark() ? Colors.red.shade400 : Colors.red,
        );
    }
  }

  Widget _buildHeaderText(int index) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        AnimatedDefaultTextStyle(
          style: _titleStyle(index),
          duration: kThemeAnimationDuration,
          curve: Curves.fastOutSlowIn,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          child: widget.steps[index].title,
        ),
        if (widget.steps[index].subtitle != null)
          Container(
            margin: const EdgeInsets.only(top: 2.0),
            child: AnimatedDefaultTextStyle(
              style: _subtitleStyle(index),
              duration: kThemeAnimationDuration,
              curve: Curves.fastOutSlowIn,
              child: widget.steps[index].subtitle!,
            ),
          ),
      ],
    );
  }

  Widget _buildVerticalHeader(int index) {
    final bool isActive = widget.steps[index].isActive;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              _buildLine(!_isFirst(index), isActive),
              _buildCircle(index, false),
              _buildLine(!_isLast(index), isActive),
            ],
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsetsDirectional.only(start: 12.0),
              child: _buildHeaderText(index),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildVerticalBody(int index) {
    return Stack(
      children: <Widget>[
        PositionedDirectional(
          start: 24.0,
          top: 0.0,
          bottom: 0.0,
          child: SizedBox(
            width: 24.0,
            child: Center(
              child: SizedBox(
                width: !_isLast(index) ? 1.0 : 0.0,
                child: Container(
                  color: widget.steps[index].isActive
                      ? Theme.of(context).colorScheme.primary
                      : Colors.grey.shade400,
                ),
              ),
            ),
          ),
        ),
        AnimatedCrossFade(
          firstChild: Container(height: 0.0),
          secondChild: Container(
            margin: const EdgeInsetsDirectional.only(
              start: 60.0,
              end: 24.0,
              bottom: 24.0,
            ),
            child: Column(
              children: <Widget>[
                widget.steps[index].content,
                _buildVerticalControls(index),
              ],
            ),
          ),
          firstCurve: const Interval(0.0, 0.6, curve: Curves.fastOutSlowIn),
          secondCurve: const Interval(0.4, 1.0, curve: Curves.fastOutSlowIn),
          sizeCurve: Curves.fastOutSlowIn,
          crossFadeState: _isCurrent(index)
              ? CrossFadeState.showSecond
              : CrossFadeState.showFirst,
          duration: kThemeAnimationDuration,
        ),
      ],
    );
  }

  Widget _buildVertical() {
    return ListView(
      controller: widget.controller,
      shrinkWrap: true,
      physics: widget.physics,
      children: <Widget>[
        for (int i = 0; i < widget.steps.length; i += 1)
          Column(
            key: _keys[i],
            children: <Widget>[
              InkWell(
                onTap: widget.steps[i].state != AppStepState.disabled
                    ? () {
                        Scrollable.ensureVisible(
                          _keys[i].currentContext!,
                          curve: Curves.fastOutSlowIn,
                          duration: kThemeAnimationDuration,
                        );

                        widget.onStepTapped?.call(i);
                      }
                    : null,
                canRequestFocus: widget.steps[i].state != AppStepState.disabled,
                child: _buildVerticalHeader(i),
              ),
              _buildVerticalBody(i),
            ],
          ),
      ],
    );
  }

  Widget _buildHorizontal() {
    final List<Widget> children = <Widget>[
      for (int i = 0; i < widget.steps.length; i += 1) ...<Widget>[
        InkResponse(
          onTap: widget.steps[i].state != AppStepState.disabled
              ? () {
                  widget.onStepTapped?.call(i);
                }
              : null,
          canRequestFocus: widget.steps[i].state != AppStepState.disabled,
          child: Row(
            children: <Widget>[
              Container(
                height: 72.0,
                constraints: const BoxConstraints(maxWidth: 72.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Center(child: _buildCircle(i, false)),
                    Container(
                      margin: const EdgeInsetsDirectional.only(start: 12.0),
                      child: _buildHeaderText(i),
                    ),
                  ],
                ),
              ),
              // Container(
              //   margin: const EdgeInsetsDirectional.only(start: 12.0),
              //   child: _buildHeaderText(i),
              // ),
            ],
          ),
        ),
        if (!_isLast(i))
          Expanded(
            child: Container(
              key: Key('line$i'),
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              height: 1.0,
              color: widget.steps[i].isActive
                  ? Theme.of(context).colorScheme.primary
                  : Colors.grey.shade400,
            ),
          ),
      ],
    ];

    final List<Widget> stepPanels = <Widget>[];
    for (int i = 0; i < widget.steps.length; i += 1) {
      stepPanels.add(
        Visibility(
          maintainState: true,
          visible: i == widget.currentStep,
          child: widget.steps[i].content,
        ),
      );
    }

    return Column(
      children: <Widget>[
        Material(
          elevation: 2,
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 24.0),
            height: 72.0,
            child: Row(
              children: children,
            ),
          ),
        ),
        Expanded(
          child: ListView(
            controller: widget.controller,
            physics: widget.physics,
            padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 8),
            children: <Widget>[
              AnimatedSize(
                curve: Curves.fastOutSlowIn,
                duration: kThemeAnimationDuration,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: stepPanels),
              ),
              _buildVerticalControls(widget.currentStep),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return widget.type == AppStepperType.vertical
        ? _buildVertical()
        : _buildHorizontal();
  }
}
