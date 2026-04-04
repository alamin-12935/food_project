import 'package:flutter/material.dart';
class M11class3 extends StatelessWidget {
  const M11class3({super.key});


  @override
  Widget build(BuildContext context) {
    void showAlertDialog() {
      showDialog(context: context, builder: (context) =>
          AlertDialog(
            icon: Icon(Icons.delete, color: Colors.red,)
            , title: Text('this is title'),
            content: Text('Are you sure...?'),
            actions: [
              TextButton(onPressed: () {}, child: Text('YES')),
              TextButton(onPressed: () {}, child: Text('No')),
            ],
          ));
    }
    void showSimpleDialog() {
      showDialog(context: context, builder: (context) =>
          SimpleDialog(
            title: Text('slecet your Subject'),
            children: [
              SimpleDialogOption(
                onPressed: (){
                  print('Clicked');
                },child: Text('English'),
              ),
              SimpleDialogOption(
                onPressed: (){
                  print('Clicked');
                },child: Text('Math'),
              ),
              SimpleDialogOption(
                onPressed: (){
                  print('Clicked');
                },child: Text('Bangla'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [

                    TextField(decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                        labelText: 'Enter Subject',
                        hintText: 'Enter your Subject'
                    ),),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(onPressed: (){}, child: Text('Cancel')),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green,
                                foregroundColor: Colors.white),
                            onPressed: (){}, child: Text('Submit'))
                      ],
                    )
                  ],
                ),
              )

            ],
          ));
    }


    void showSimpleSnecber(){
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Item Delete'),
          action: SnackBarAction(label: 'Undo', onPressed: (){})
      ));
    }

    void  showBottomSheet(){
      showModalBottomSheet(context: context, builder: (context)=>Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Choose Option'),
            ListTile(title: Text('option-1'),),
            ListTile(title: Text('option-2'),),
            ListTile(title: Text('option-3'),),
          ],
        ),
      ));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Alert',style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold
        ),
        ),
      ),
      body:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){
              showAlertDialog();
            }, child: Text('Alert Dialog')),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              showSimpleDialog();
            }, child: Text('simple Dialog')),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              showSimpleSnecber();
            }, child: Text('Simple Snecber')),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              showBottomSheet();
            }, child: Text('Bottom Sheet')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        print('Add a New page');
      },child: Icon(Icons.add,color: Colors.deepOrange),),
    );
  }
}