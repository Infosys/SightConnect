import 'package:flutter/material.dart';

class AppStepper extends StatefulWidget {
  const AppStepper({
    super.key,
    required this.steps,
    required this.stepNames,
    required this.onStepTapped,
    required this.onSubmit,
    this.axis = Axis.horizontal,
  });

  final List<Widget> steps;
  final List<String> stepNames;
  final void Function(int) onStepTapped;
  final VoidCallback onSubmit;
  final Axis axis;

  @override
  _AppStepperState createState() => _AppStepperState();
}

class _AppStepperState extends State<AppStepper> {
  int currentStep = 0;

  void _nextStep() {
    if (currentStep < widget.steps.length - 1) {
      setState(() {
        currentStep++;
      });
    }
  }

  void _previousStep() {
    if (currentStep > 0) {
      setState(() {
        currentStep--;
      });
    }
  }

  void _onStepTapped(int index) {
    setState(() {
      currentStep = index;
    });
    widget.onStepTapped(index);
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: _StepLayout(
            axis: widget.axis,
            steps: widget.steps,
            stepNames: widget.stepNames,
            currentStep: currentStep,
            onStepTapped: _onStepTapped,
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.only(top: 8.0),
          sliver: SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (currentStep > 0)
                      OutlinedButton(
                        onPressed: _previousStep,
                        child: const Text('BACK'),
                      ),
                    if (currentStep < widget.steps.length - 1)
                      ElevatedButton(
                        onPressed: _nextStep,
                        child: const Text('NEXT'),
                      ),
                    if (currentStep == widget.steps.length - 1)
                      ElevatedButton(
                        onPressed: widget.onSubmit,
                        child: const Text('SUBMIT'),
                      ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ],
    );
  }
}

class _StepLayout extends StatelessWidget {
  const _StepLayout({
    required this.axis,
    required this.steps,
    required this.stepNames,
    required this.currentStep,
    required this.onStepTapped,
  });

  final Axis axis;
  final List<Widget> steps;
  final List<String> stepNames;
  final int currentStep;
  final void Function(int) onStepTapped;

  @override
  Widget build(BuildContext context) {
    if (axis == Axis.horizontal) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.arrow_left,
                size: 22,
              ),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(steps.length, (index) {
                      return GestureDetector(
                        onTap: () => onStepTapped(index),
                        child: Container(
                          width: 60,
                          height: 60,
                          margin: const EdgeInsets.all(4),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                width: 24,
                                height: 24,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: currentStep == index
                                      ? Theme.of(context).primaryColor
                                      : Colors.grey,
                                ),
                                child: Center(
                                  child: Text(
                                    '${index + 1}',
                                    style: const TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 4),
                              Flexible(
                                child: Text(
                                  stepNames[index],
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: currentStep == index
                                        ? Theme.of(context).primaryColor
                                        : Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ),
              const Icon(
                Icons.arrow_right,
                size: 22,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(steps.length, (index) {
              return Container(
                margin: const EdgeInsets.all(4),
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: currentStep == index
                      ? Theme.of(context).primaryColor
                      : Colors.grey,
                ),
              );
            }),
          ),
          if (currentStep < steps.length)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: steps[currentStep],
            ),
        ],
      );
    } else if (axis == Axis.vertical) {
      return Column(
        children: List.generate(steps.length, (index) {
          return Column(
            children: [
              GestureDetector(
                onTap: () => onStepTapped(index),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 8.0),
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: currentStep == index
                            ? Theme.of(context).primaryColor
                            : Colors.grey,
                      ),
                      child: Center(
                        child: Text(
                          '${index + 1}',
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    Flexible(
                      child: Text(
                        stepNames[index],
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          color: currentStep == index
                              ? Theme.of(context).primaryColor
                              : Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              if (currentStep == index)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: steps[index],
                ),
            ],
          );
        }),
      );
    } else {
      return const SizedBox();
    }
  }
}
