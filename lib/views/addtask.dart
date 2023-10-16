

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolistupdated/views/alertdialog.dart';
import 'package:todolistupdated/viewmodel/viewmodel.dart';

class AddTask extends StatelessWidget {
  const AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Consumer<AppViewModel>(builder:  ( context , viewModel , child   ){

        return
          FloatingActionButton(onPressed: (){


            Navigator.push(context, MaterialPageRoute(builder: (context)=>AlertshowDialog()));

          },
            child: Icon(Icons.add),
          )    ;
      }             )
    ;
  }
}