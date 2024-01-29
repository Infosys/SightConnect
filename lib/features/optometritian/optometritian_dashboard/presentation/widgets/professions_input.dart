import 'dart:math';

import 'package:eye_care_for_all/core/constants/app_size.dart';
import 'package:eye_care_for_all/features/optometritian/optometritian_dashboard/presentation/provider/optometritian_add_patient_provider.dart';
import 'package:eye_care_for_all/shared/theme/app_shadow.dart';
import 'package:eye_care_for_all/shared/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProfessionsInput extends ConsumerStatefulWidget {
  const ProfessionsInput({super.key});

  @override
  ConsumerState<ProfessionsInput> createState() => _ProfessionsInputState();
}

class _ProfessionsInputState extends ConsumerState<ProfessionsInput> {
  String _currentInput = '';

  List<String> professions = [
    "Accountant",
    "Acrobat",
    "Actor",
    "Actress",
    "Acupressurist",
    "Administrator",
    "Aerodynamicist",
    "Aeronautical Engineer",
    "Agriculture",
    "Agronomist",
    "AI Developer",
    "Air Hostess",
    "Airforce",
    "Artist",
    "Assistant Professor",
    "Autorickshaw Driver",
    "Bacteriologist",
    "Banker",
    "Barber",
    "Bartender",
    "Bibliographer",
    "Bio-engineer",
    "Blacksmith",
    "Bodyguard",
    "Book Binder",
    "Botanist",
    "Bus Driver",
    "Builder",
    "Business",
    "Businessman",
    "C.I.D",
    "C.M. OF",
    "Cabinet Speaker",
    "Cameraman",
    "Cardiologist",
    "Carpenter",
    "Cashier",
    "CBI",
    "Chancellor",
    "Chartered Accountant",
    "Chef Cook",
    "Chirologist",
    "Chirographist",
    "Chiromantist",
    "Civil Engineer",
    "Cricketer",
    "Counsellor",
    "Dancer",
    "Dean",
    "Dentist",
    "Deputy Commissioner Of Police",
    "Deputy Inspector General Of Police",
    "Dermatologist",
    "Dialysis Technician",
    "Dietary Manager",
    "Director",
    "Disc Jockey",
    "Dhobi",
    "Doctor",
    "Dog Trainer",
    "Draftsman",
    "E.C.G Technician",
    "Economist",
    "Educator",
    "Editor",
    "Electrical Engineer",
    "Electrician",
    "Endocrinologist",
    "Engineer",
    "Entertainer",
    "Entomologist",
    "Environmentalist",
    "Epidemiologist",
    "Evangelist",
    "Executive",
    "Farmer",
    "Fire Fighter",
    "Fire Officer",
    "Fireman",
    "Fishermen",
    "Footballer",
    "Garbage Collector",
    "Gardener",
    "Gastroenterologist",
    "Gate Keeper",
    "Gem Polisher",
    "Gemcutter",
    "Gemologist",
    "Generalogist",
    "Geograher",
    "Geologist",
    "Geometrician",
    "Geophysicist",
    "Goldsmith",
    "Government Service",
    "Hardware Engineer",
    "Health Physicist",
    "Hematologist",
    "Herpetologist",
    "Home Guard",
    "Horse Trainer",
    "House Maid",
    "House Wife",
    "Hunter",
    "Immunologist",
    "Inspector General Police",
    "Interior Designer",
    "Internist",
    "Interpreter",
    "Interrogator",
    "Janitor",
    "Jester",
    "Jeweller",
    "Jockey",
    "Journalist",
    "Judge",
    "Laryngoscopist",
    "Laywer",
    "Lecturer",
    "Letter Press",
    "Librarian",
    "Line Inspector",
    "Lock Smith",
    "Locomotive Driver",
    "Locomotive Engineer",
    "Lyricist",
    "M.L.A",
    "M.P",
    "Magistrate",
    "Maidservant",
    "Managerial Officer",
    "Mammalogist",
    "Manual Labour",
    "Marketing",
    "Martial Artist",
    "Mason",
    "Matador",
    "Mayor",
    "Mayoress",
    "Mechanic",
    "Mechanical Engineer",
    "N.C.C",
    "Nanny",
    "Navy",
    "Nematologist",
    "Neotologist",
    "Neurologist",
    "No Occupation",
    "Not Applicable",
    "Nurse",
    "Obstetrician",
    "Oncologist",
    "Oologist",
    "Ophthalmic Technician",
    "Ophthalmologist",
    "Optical Engineer",
    "Optician",
    "Optometrist",
    "Orthologist",
    "Orthodontist",
    "Orthopedist",
    "Osteologist",
    "Painter",
    "Paleontologist",
    "Parasitologist",
    "Pastors",
    "Pathologist",
    "Patient Care Attendant",
    "Pawnbroker",
    "Pediatric Dentist",
    "Pediatrician",
    "Penologist",
    "Pharmacist",
    "Pharmacologist",
    "Philatelist",
    "Philologist",
    "Phlebotomist",
    "Pilot",
    "Policewoman",
    "Politician",
    "Policeman",
    "Postman",
    "Professor",
    "Project Manager",
    "Private Service",
    "R.T.C",
    "Radiologist",
    "Railway Guard",
"Railways",
"Receptionist",
"Referee",
"Reporter",
"Retired Staff",
"Rheumatologist",
"Sales Person",
"Sanitary Inspector",
"School Principal",
"Scientist",
"Scout",
"Screen Writer",
"Scribe",
"Sculptor",
"Secretary",
"Secretary General",
"Security Guard",
"Seismologist",
"Senator",
"Servant",
"Shopkeeper",
"Social Worker",
"Software Engineer",
"Sportsman",
"Tailor",
"Tanner",
"Teacher",
"Telephone Operator",
"Ticket Collector",
"Ticket Inspector",
"Toxicologist",
"Tourist Guide",
"Trader",
"Translator",
"Travel Agent",
"Typist",
"Ultrasound Technician",
"Unemployed",
"Urologist",
"Veterinarian",
"Vice Chancellor",
"Vice President Of India",
"Video Editor",
"Videographer",
"Vocalist",
"Writer",
"Waiter",
"Washerman",
"Waterman",
"Welding Engineer",
"Welfare Officer",
"Wrestler",
"X-Ray Machine Operator",
"Youth Leader",
"Zoo Keeper",
"Zoo Manager",
"Zoologist"
  ];

  List<String> _filteredSuggestions = [];
  final _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _currentInput = _controller.text;
        _filteredSuggestions = professions
            .where((suggestion) => suggestion
                .toLowerCase()
                .contains(_currentInput.toLowerCase()))
            .toList();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var data = ref.watch(optometritianAddPatientProvider);

    return Column(
      children: [
        TextFormField(
          style: const TextStyle(
            fontFamily: 'Roboto',
          ),
          // readOnly: true,
          focusNode: _focusNode,
          controller: _controller,
          onChanged: (value) => data.setProfession(value),
          decoration: InputDecoration(
            labelText: "Profession",
            labelStyle: applyRobotoFont(
              fontSize: 14,
            ),
          ),
        ),
        if (_currentInput.isNotEmpty)
          Container(
            width: double.infinity,
            height: min(_filteredSuggestions.length * AppSize.klheight * 2,
                AppSize.height(context) * 0.5),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: applyMediumShadow(),
            ),
            child: ListView.builder(
              shrinkWrap: true,
              // itemCount: min(5, _filteredSuggestions.length),
              itemCount: _filteredSuggestions.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_filteredSuggestions[index]),
                  onTap: () {
                    data.setProfession(_filteredSuggestions[index]);
                    _controller.text = _filteredSuggestions[index];
                    _filteredSuggestions = [];
                    _focusNode.unfocus();
                  },
                );
              },
            ),
          ),
      ],
    );
  }
}
