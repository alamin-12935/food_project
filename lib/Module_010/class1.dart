import 'package:flutter/material.dart';
class M10class1 extends StatelessWidget {
  const M10class1({super.key});


  @override
  Widget build(BuildContext context) {
    TextEditingController PhoneController =TextEditingController();
    TextEditingController PasswordController =TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Instracity',style: TextStyle(
            fontWeight: FontWeight.w700),),
        backgroundColor: Colors.pink,
        centerTitle: true,
      ),
      body:

      SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                SizedBox(height: 20,),
                TextField(
                  controller: PhoneController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    helperText: 'PhoneNumber',
                    hintText: 'Enter your PhoneNumber',
                    labelText: 'PhoneNumber',
                    helperStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.blue
                    ),
                    hintStyle: TextStyle(
                        fontSize: 20,
                        color: Colors.black
                    ),
                    labelStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.purple
                    ),
                    prefixIcon: Icon(Icons.phone),
                    suffixIcon: Icon(Icons.check),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  controller: PasswordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    helperText: 'Password',
                    hintText: 'Enter your Password',
                    labelText: 'Password',
                    helperStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.blue
                    ),
                    hintStyle: TextStyle(
                        fontSize: 20,
                        color: Colors.black
                    ),
                    labelStyle: TextStyle(
                        fontSize: 15,
                        color: Colors.purple
                    ),
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50)
                    ),
                  ),
                ),
                SizedBox(
                  width: 320,
                  height: 35,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          foregroundColor: Colors.black
                      ),
                      onPressed: (){
                        if(PhoneController.text.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('please enter phone Number'))

                          );
                        }
                        else if(PhoneController.text.length!=11){
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('please enter valid phone number'))
                          );
                        }else{
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text(PasswordController.text))
                          );
                        }
                        // ScaffoldMessenger.of(
                        //     context).showSnackBar(
                        //     SnackBar(content: Text(
                        //         PhoneController.text))
                        // );
                        //print(PhoneController.text);
                      }, child: Text('Login')),
                ),
                SizedBox(height: 10,),
                TextButton(onPressed: (){

                  // print('forget this id');
                }, child: Text('Forgettom Password?')),
                SizedBox(
                  height: 50,
                ),
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadiusGeometry.circular(20),
                      border: Border.all(
                        width: 1,
                        color: Colors.black,

                      ),
                      boxShadow:[
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            offset: Offset(4, 10)
                        ),
                        BoxShadow(
                            color: Colors.orange.withOpacity(0.3),
                            offset: Offset(-10, -10)
                        )
                      ]
                  ),

                  height: 100,
                  width: 200,

                  child: Text('Continer text',
                    style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                )
              ],
            ),
          )
      ) ,
    );
  }
}
