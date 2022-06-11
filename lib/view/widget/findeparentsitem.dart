import 'package:chatflutter/data/module/partner.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class FindParentsItem extends StatelessWidget {
  final Partner partner ;
  FindParentsItem({required this.partner}) ;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(height: 175,width: double.infinity,),
        Container(
          height: 150,
          child: Card(
            elevation: 9,
            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CircleAvatar(),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text(partner.userName.toString()),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text('Age: ${partner.age}'),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text(partner.cityName.toString()),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
            left: MediaQuery.of(context).size.width/12,
            child:Container(
              height: 50,
              width: 5*MediaQuery.of(context).size.width/6,
              child: ElevatedButton(
                style: Theme.of(context).elevatedButtonTheme.style,
                onPressed: () {

                },
                child: Row(
                  children: [
                    SvgPicture.asset('images/Svg/bxs-message-detail.svg',color: Colors.white,),
                    Text(' Send a message'),
                  ],
                ),
              ),
            )
        )
      ]

    );
  }
}
