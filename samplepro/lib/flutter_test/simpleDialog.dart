
//error ...........
  Future showSimpaleDialog() async{
    switch(
      await showDialog(
        context: context,
       builder: (BuildContext context){
         return SimpleDialog(
           title: new Text('mustafa farrokh'),
           children: [
             new SimpleDialogOption(
               child: Text('yes'),
               onPressed: (){Navigator.pop(context);},
             ),
             new SimpleDialogOption(
               child: Text('yes'),
               onPressed: (){Navigator.pop(context);},
             ),
             new SimpleDialogOption(
               child: Text('yes'),
               onPressed: (){Navigator.pop(context);},
             )
           ],

         );
       }
       )
    )

  }
