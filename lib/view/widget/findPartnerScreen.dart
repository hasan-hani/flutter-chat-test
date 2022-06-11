import 'package:chatflutter/core/apiLink.dart';
import 'package:chatflutter/data/apiData/crud.dart';
import 'package:chatflutter/view/screen/homePageWithFindPartnerSearchResult.dart';
import 'package:chatflutter/view/screen/signupScreen.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'customTextField.dart';
import 'listOfCountryDropDown.dart';

class FindPartner extends StatefulWidget {

  @override
  State<FindPartner> createState() => _FindPartnerState();
}

class _FindPartnerState extends State<FindPartner> {
  DateTime? _selectedDate = DateTime(2022);
  TextEditingController betweenController=new TextEditingController();
  TextEditingController andController=new TextEditingController();
  TextEditingController _textEditingController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GetListOfCountry(),//drop down city
        ApiDropDownButton(),//drop Down country
        Text('Partner age'),
        _rowagebetwen('between','Age',Icons.add,betweenController,(val){}),
        _rowagebetwen('  And      ','Age',Icons.add,andController,(val){}),
        Container(
          width: 5*MediaQuery.of(context).size.width/6,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Directionality(
              textDirection:TextDirection.rtl ,
              child: TextFormField(
                controller: _textEditingController,
                onTap: () async {
                  DateTime? newSelectedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2040),
                  );
                  if (newSelectedDate != null) {
                    _selectedDate = newSelectedDate;
                    _textEditingController.text =
                        formatDate(_selectedDate!, [yyyy, '-', mm, '-', dd])
                            .toString();
                  }
                },
                decoration: InputDecoration(
                  hintTextDirection: TextDirection.ltr,
                  hintText: 'Date:/ /',
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  prefixIcon: SvgPicture.asset('images/Svg/calendar-date-fill.svg'),
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
        ), //datepiker
        Container(
          width:5*MediaQuery.of(context).size.width/6,
          height: 50,
          child: ElevatedButton(
              style: Theme.of(context).elevatedButtonTheme.style,
              onPressed:() {
                Navigator.of(context).pushNamed(HomePageWithPartnerSearchResult.id);
              },

              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('search ',style:TextStyle(fontSize: 25)),
                    SvgPicture.asset('images/Svg/search-2.svg')
                  ],
                ),
              )),
        )
      ],
    );
  }
}


_rowagebetwen(String text,String hint,IconData icon,TextEditingController mycontroller,String? Function(String?)? vaild ){
  return(
      Row(
          children:[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(text),
            ),
            CustomTextFiel(hint: hint, icon: icon, mycontroller: mycontroller, vaild: vaild)

          ]


      )
  );
}

_SearchButtonWidget(BuildContext context){

  Container(
    width:5*MediaQuery.of(context).size.width/6,
    height: 50,
    child: ElevatedButton(
        style: Theme.of(context).elevatedButtonTheme.style,
        onPressed:() {
          //Navigator.of(context).pushNamed(HomePageWithPartnerSearchResult.id);
        },

        child: Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text('search ',style:TextStyle(fontSize: 25)),
          SvgPicture.asset('images/Svg/search-2.svg')
        ],
      ),
    )),
  );

}
