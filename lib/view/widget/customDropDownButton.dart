import 'package:chatflutter/controller/provider/listofcityProvider.dart';
import 'package:chatflutter/core/AppData.dart';
import 'package:chatflutter/view/screen/signupScreen.dart';
import 'package:chatflutter/view/widget/customTextField.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';





class CustomDropDownButton extends StatefulWidget {
  final String hint;
  final  List<String> items;
  const CustomDropDownButton({
  required this.hint,
  required this.items,
  }) ;
  @override
  State<CustomDropDownButton> createState() => _CustomDropDownButtonState();
}
class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  bool isVaild=false ;
  String? selectedValue ;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 2 * MediaQuery.of(context).size.width / 3,
              child: DropdownButtonFormField(
                hint: Text(widget.hint),
                items: widget.items
                    .map((item) => DropdownMenuItem(
                  child: Text(item),
                  value: item,
                ))
                    .toList(),
                value: selectedValue,
                onChanged: (item) {
                  setState(() {
                    isVaild = true;
                    selectedValue = item.toString();
                    globalselectedCountry=selectedValue ;
                    print(globalselectedCountry) ;
                    listOfCityProvider!.state=ListScreenState.initail ;
                    listOfCityProvider!.notifyListeners();
                    //CustomDropWownButton().notifyListeners() ;
                  });
                },
              ),
            ),
            if (isVaild)
              (Icon(
                Icons.check,
                color: Theme.of(context).primaryColor,
              ))
          ],
        ),
      ),
    );
  }
}


class CustomDropWownButton extends ChangeNotifier {
  List<String>? items ;
  String? hint ;
  bool isvalid = false;
  // bool? isvalid ;
  CustomDropWownButton();
  CustomDropWownButton.ins(this.items, this.hint);
  CustomD(BuildContext context) {
    String? selectedValue;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 2 * MediaQuery.of(context).size.width / 3,
          child: DropdownButtonFormField(
            hint: Text(hint!),
            items: items!
                .map((item) => DropdownMenuItem(
                      child: Text(item),
                      value: item,
                    ))
                .toList(),
            value: selectedValue,
            onChanged: (item) {
              isvalid = true;
              selectedValue = item.toString();
              selectedCityname=selectedValue ;
              print(selectedCityname);
              notifyListeners();
            },
          ),
        ),
        Visibility(
            visible: isvalid,
            child: Icon(
              Icons.check,
              color: Theme.of(context).primaryColor,
            ))
      ],
    );
  }



  CustomDropWidget(BuildContext context, String hint1 , List<String> items1) {
    String? selectedValue;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 2 * MediaQuery.of(context).size.width / 3,
          child: DropdownButtonFormField(
            hint: Text(hint1),
            items: items1
                .map((item) => DropdownMenuItem(
              child: Text(item),
              value: item,
            ))
                .toList(),
            value: selectedValue,
            onChanged: (item) {
              isvalid = true;
              selectedValue = item.toString();

            },
          ),
        ),
        Visibility(
            visible: isvalid,
            child: Icon(
              Icons.check,
              color: Theme.of(context).primaryColor,
            ))
      ],
    );
  }
}



