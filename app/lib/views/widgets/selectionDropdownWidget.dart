import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';

class LanguageSelectionDropdown extends StatefulWidget {
  const LanguageSelectionDropdown({super.key});

  @override
  State<LanguageSelectionDropdown> createState() => _LanguageSelectionDropdownState();
}

class _LanguageSelectionDropdownState extends State<LanguageSelectionDropdown> {
  bool _isOpen = false;
  final List<String> _selectedLanguages = [];
  String _selectedOption = '';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isOpen = !_isOpen;
        });
      },
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue),
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
            SizedBox(height: 8.0),
            Row(
              children: [
                Expanded(
                  child: Text(
                    _selectedLanguages.isNotEmpty ? _selectedLanguages.join(', ') : 'Select languages...',
                    style: TextStyle(
                      color: _selectedLanguages.isNotEmpty ? Colors.black :  Color(0xffffffff),
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      height: 1.3,
                    ),
                  ),
                ),
                Icon(
                  _isOpen ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                  color: Colors.blue,
                ),
              ],
            ),
            if (_isOpen)
              Container(
                margin: EdgeInsets.only(top: 16.0),
                child: ExpansionTile(
                  title: Text('Select Languages'),
                  children: [
                    CheckboxListTile(
                      title: Text('JavaScript'),
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
                      title: Text('Python'),
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
                      title: Text('Java'),
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
            SizedBox(height: 8.0),
            Row(
              children: [
                Expanded(
                  child: Text(
                    _selectedOption.isNotEmpty
                        ? _selectedOption
                        : 'Select an option...',
                    style: TextStyle(
                      color: _selectedOption.isNotEmpty
                          ? Colors.black
                          : Color(0xffffffff),
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      height: 1.3,
                    ),
                  ),
                ),
                Icon(
                  _isOpen ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                  color: Colors.blue,
                ),
              ],
            ),
            if (_isOpen)
              Container(
                margin: EdgeInsets.only(top: 16.0),
                child: ExpansionTile(
                  title: Text('Select Option'),
                  children: [
                    CheckboxListTile(
                      title: Text('Allow Remote'),
                      value: _selectedOption == 'Allow Remote',
                      onChanged: (value) {
                        setState(() {
                          if (value!) {
                            _selectedOption = 'Allow Remote';
                          } else {
                            _selectedOption = '';
                          }
                        });
                      },
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
