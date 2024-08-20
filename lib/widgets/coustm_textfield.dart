import 'package:flutter/material.dart';

class CoustmTextfield extends StatelessWidget {
  const CoustmTextfield({super.key, this.hinttext, this.onsave});
  final String? hinttext;
  final void Function(String?)? onsave;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26),
      child: TextFormField(
                    validator: (data) {
                      if (data?.isEmpty ?? true) {
                        return 'feild is requird';
                      } else {
                        return null;
                      }
                    },
                    onSaved: onsave,
                    cursorColor: const Color.fromARGB(255, 79, 33, 243),
                    decoration:  InputDecoration(
                    labelText: hinttext,
                     enabledBorder: const OutlineInputBorder(
                     borderSide:
                       BorderSide(color: Color.fromARGB(255, 20, 75, 121)),
                            borderRadius: BorderRadius.all(Radius.circular(12))),
                          border: const OutlineInputBorder(
                          borderSide: BorderSide(),
                        )),
                  ),
    );


  }
}