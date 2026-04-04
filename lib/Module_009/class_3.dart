import 'package:flutter/material.dart';
class M09class3 extends StatelessWidget {
  const M09class3({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter'),
          backgroundColor: Colors.orange,
          centerTitle: true,
        ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange[900],
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        // borderRadius: BorderRadius.circular(30)
                        // borderRadius: BorderRadius.all(Radius.circular(10))
                        // borderRadius: BorderRadius.only(topRight:Radius.circular(50))
                          borderRadius: BorderRadius.circular(30)
                      )
                  ),
                  onPressed: (){}, child: Text('save')),
              SizedBox(height: 30,),
              SizedBox(
                //width: 300,
                width: double.infinity,
                height: 60,
                child: SingleChildScrollView(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange[900],
                          foregroundColor: Colors.black,
                          shape: RoundedRectangleBorder(
                            // borderRadius: BorderRadius.circular(30)
                            // borderRadius: BorderRadius.all(Radius.circular(10))
                            // borderRadius: BorderRadius.only(topRight:Radius.circular(50))
                              borderRadius: BorderRadius.circular(30)
                          )
                      ),
                      onPressed: (){
                        // print("I'am here");
                      }, child: Text('save As')),
                ),
              ),

              OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.deepPurpleAccent,
                      foregroundColor: Colors.black
                  ),
                  onPressed: (){}, child: Text('submit')),
              SizedBox(
                height: 30,
              ),
              TextButton(onPressed: (){}, child: Text('read More')),

              Icon(Icons.delete_forever,color: Colors.pinkAccent,size: 100,),

              IconButton(onPressed: (){
                // print('Calling');
              }, icon: Icon(Icons.call)),

              GestureDetector(
                  onTap: (){
                    // print('10tk sand');
                  },
                  onLongPress: (){
                    // print('100tk sand');
                  },
                  onDoubleTap: (){
                    // print('1000tk sand');
                  },

                  child: Text('this is a Hard line'))

            ],
          ),
        )
      // Text("I'am a Student"),
      // backgroundColor: Colors.brown[600],
      // backgroundColor: Colors.blue.withOpacity(1),
      // backgroundColor: Colors.pinkAccent.shade700,

    );
  }
}
