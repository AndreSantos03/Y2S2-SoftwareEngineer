import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';
import 'package:provider/provider.dart';
import 'package:myapp/models/language_selection_model.dart';

class LanguageSelectionDropdown extends StatefulWidget {
  const LanguageSelectionDropdown({super.key});

  @override
  State<LanguageSelectionDropdown> createState() =>
      _LanguageSelectionDropdownState();
}

class _LanguageSelectionDropdownState extends State<LanguageSelectionDropdown> {
  bool _isOpen = false;
  final List<String> _selectedLanguages = [];
  String _selectedRemote = '';

  Color squaresColor = const Color.fromRGBO(102, 152, 173, 1);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        unselectedWidgetColor: squaresColor,
      ),
      child: GestureDetector(
        onTap: () {
          Provider.of<LanguageSelectionModel>(context, listen: false).toggleIsOpen();
        },
        child: Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Atualiza as tuas competências \n para usá-las como filtro',
                textAlign: TextAlign.center,
                style: SafeGoogleFont(
                  'Poppins',
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  height: 1.3,
                  color: const Color(0xffffffff),
                ),
              ),
              const SizedBox(height: 8.0),
              Container(
                margin: const EdgeInsets.only(top: 16.0),
                child: ExpansionTile(
                  title: Selector<LanguageSelectionModel, String>(
                    selector: (_, provider) =>
                    provider.selectedLanguages.isNotEmpty
                        ? provider.selectedLanguages.join(', ')
                        : 'Linguagens de programação',
                    builder: (_, value, __) => Text(
                      value,
                      style: const TextStyle(
                        color: Color(0xffffffff),
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        height: 1.3,
                      ),
                    ),
                  ),
                  children: [
                    Consumer<LanguageSelectionModel>(
                      builder: (_, provider, __) => CheckboxListTile(
                        activeColor: squaresColor,
                        title: const Text(
                          'Python',
                          style: TextStyle(
                            color: Color(0xffffffff),
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            height: 1.3,
                          ),
                        ),
                        value: provider.selectedLanguages.contains('Python'),
                        onChanged: (value) {
                          provider.toggleLanguage('Python');
                        },
                      ),
                    ),
                    Consumer<LanguageSelectionModel>(
                      builder: (_, provider, __) => CheckboxListTile(
                        activeColor: squaresColor,
                        title: const Text(
                          'Java',
                          style: TextStyle(
                            color: Color(0xffffffff),
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            height: 1.3,
                          ),
                        ),
                        value: provider.selectedLanguages.contains('Java'),
                        onChanged: (value) {
                          provider.toggleLanguage('Java');
                        },
                      ),
                    ),
                    Consumer<LanguageSelectionModel>(
                      builder: (_, provider, __) => CheckboxListTile(
                        activeColor: squaresColor,
                        title: const Text(
                          'JavaScript',
                          style: TextStyle(
                            color: Color(0xffffffff),
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            height: 1.3,
                          ),
                        ),
                        value: provider.selectedLanguages.contains('JavaScript'),
                        onChanged: (value) {
                          provider.toggleLanguage('JavaScript');
                        },
                      ),
                    ),
                    Consumer<LanguageSelectionModel>(
                      builder: (_, provider, __) => CheckboxListTile(
                        activeColor: squaresColor,
                        title: const Text(
                          'SQL',
                          style: TextStyle(
                            color: Color(0xffffffff),
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            height: 1.3,
                          ),
                        ),
                        value: provider.selectedLanguages.contains('SQL'),
                        onChanged: (value) {
                          provider.toggleLanguage('SQL');
                        },
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8.0),
                Container(
                  margin: const EdgeInsets.only(top: 16.0),
                  child: ExpansionTile(
                    title: Text(
                      _selectedRemote.isNotEmpty
                          ? 'Interesse em trabalho remoto: Sim'
                          : 'Interesse em trabalho remoto',
                      style: const TextStyle(
                        color: Color(0xffffffff),
                        fontFamily: 'Poppins',
                        fontSize: 20,
                        height: 1.3,
                      ),
                    ),
                    children: [
                      CheckboxListTile(
                        activeColor: squaresColor,
                        title: Text(
                          _selectedRemote.isNotEmpty
                              ? _selectedRemote
                              : 'Sim',
                          style: const TextStyle(
                            color: Color(0xffffffff),
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            height: 1.3,
                          ),
                        ),
                        value: _selectedRemote == 'Sim',
                        onChanged: (value) {
                          setState(() {
                            _selectedRemote = value! ? 'Sim' : '';
                          });
                        },
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
