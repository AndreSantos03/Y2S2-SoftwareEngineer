import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';

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
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        unselectedWidgetColor: squaresColor,
      ),
      child: GestureDetector(
        onTap: () {
          setState(() {
            _isOpen = !_isOpen;
          });
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
                    title: Text(
                      _selectedLanguages.isNotEmpty
                          ? _selectedLanguages.join(', ')
                          : 'Linguagens de programação',
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
                        title: const Text(
                          'JavaScript',
                          style: TextStyle(
                            color: Color(0xffffffff),
                            fontFamily: 'Poppins',
                            fontSize: 20,
                            height: 1.3,
                          ),
                        ),
                        value: _selectedLanguages.contains('JavaScript'),
                        onChanged: (value) {
                          setState(() {
                            if (value!) {
                              _selectedLanguages.add('JavaScript');
                            } else {
                              _selectedLanguages.remove('JavaScript');
                            }
                          });
                        },
                      ),
                      CheckboxListTile(
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
                        value: _selectedLanguages.contains('Python'),
                        onChanged: (value) {
                          setState(() {
                            if (value!) {
                              _selectedLanguages.add('Python');
                            } else {
                              _selectedLanguages.remove('Python');
                            }
                          });
                        },
                      ),
                      CheckboxListTile(
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
                        value: _selectedLanguages.contains('Java'),
                        onChanged: (value) {
                          setState(() {
                            if (value!) {
                              _selectedLanguages.add('Java');
                            } else {
                              _selectedLanguages.remove('Java');
                            }
                          });
                        },
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
