
import 'package:chatflutter/controller/provider/listofcityProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../core/AppData.dart';
import 'customDropDownButton.dart';

class GetListOfCountry extends StatelessWidget {
  ListOfCountryProvider? provider;
  CustomDropWownButton? providerdrop ;
  @override
  Widget build(BuildContext context) {
    provider = Provider.of<ListOfCountryProvider>(context);
    providerdrop = Provider.of<CustomDropWownButton>(context);
    if (provider!.state == ListScreenState.initail) {
      provider!.getListOfCountry();
      return  Center(child: Container(height: 50,width: 2*MediaQuery.of(context).size.width/3, decoration: BoxDecoration(border: Border.all(),),child: Text('country')));
    }
    return CustomDropDownButton(
        hint: 'country',
        items: provider!.listofnameofCountries!.map((e) => e).toList()
    );
  }
}

/////////////////////////////////////////////////////////////
