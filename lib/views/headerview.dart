


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolistupdated/views/changeusername.dart';
import 'package:todolistupdated/views/deleteview.dart';
import 'package:todolistupdated/viewmodel/viewmodel.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Consumer<AppViewModel>(builder: (conext ,viewModel , child){

        return  Row(
          children: [

            Expanded( flex:3,child: Text("Welcome ${viewModel.username}")),

            Expanded( flex:1,child: IconButton( onPressed: () {

              viewModel.bottomSheetBuilder(SettingsBottomSheetView(), context);

            }, icon: Icon(Icons.settings),),),
            Expanded( flex:1,child: IconButton( onPressed: () {

              viewModel.bottomSheetBuilder(DeleteBottomSheetView(), context);

            }, icon: Icon(Icons.delete),),)

          ],
        ) ;
      })
    ;
  }
}