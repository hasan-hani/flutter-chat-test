import 'package:flutter/material.dart';

class CustomTextFiel extends StatefulWidget {
  final String hint;
  final IconData icon;
  final mycontroller;
  final String? Function(String?)? vaild;
  const CustomTextFiel(
      {required this.hint,
      required this.icon,
      required this.mycontroller,
      required this.vaild});

  @override
  State<CustomTextFiel> createState() => _CustomTextFielState();
}

class _CustomTextFielState extends State<CustomTextFiel> {
  bool isvalid = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 2 * MediaQuery.of(context).size.width / 3,
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: TextFormField(
                validator: widget.vaild,
                autovalidateMode: AutovalidateMode.always,
                onChanged: (value) {
                  setState(() {
                    if (value!= null||value.trim()=='') {
                      isvalid = true;
                    } else {
                      isvalid = false;
                    }
                  });
                },
                controller: widget.mycontroller,
                obscureText: widget.hint == 'Password',
                keyboardType: (widget.hint == 'phone'||  widget.hint=='Age')
                    ? TextInputType.numberWithOptions()
                    : TextInputType.text,
                decoration: InputDecoration(
                  hintTextDirection: TextDirection.ltr,
                  hintText: widget.hint,
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  prefixIcon: Icon(widget.icon,
                    color:(widget.hint=='Email'||widget.hint=='Password'||widget.hint=='Reenter password')?
                    Colors.black :Colors.transparent,),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      width: 2,
                      style: BorderStyle.solid,
                      color: Colors.black,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2,
                        style: BorderStyle.solid,
                        color: Colors.black),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                        width: 2,
                        style: BorderStyle.solid,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
          ),
          if (isvalid)
            Icon(
              Icons.check,
              color: Theme.of(context).primaryColor,
            )
        ],
      ),
    );
  }
}
