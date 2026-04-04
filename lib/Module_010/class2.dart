import 'package:flutter/material.dart';
class M10class2 extends StatelessWidget {
  const M10class2({super.key});


  @override
  Widget build(BuildContext context) {
    final _formkey = GlobalKey<FormState>();
    TextEditingController phoneController =TextEditingController();
    TextEditingController passwordController =TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text('Flutter',style: TextStyle(
            color: Colors.white,fontSize: 30,
            fontWeight: FontWeight.w700
        ),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                Image.network('https://cdn.freebiesupply.com/images/thumbs/2x/apple-logo.png',
                  width: 200,
                  height: 150,),
                GestureDetector(
                    onTap:  (){
                      print('clicked');
                    },
                    child: Image.asset('asset/apple.png',width: 200,height: 150,)),
                TextButton(onPressed: (){
                  print('this is image');
                }, child: Image.network('https://www.shutterstock.com/shutterstock/photos/2574217129/display_1500/stock-photo-romantic-date-on-st-valentines-day-in-the-restaurant-exchange-of-gifts-2574217129.jpg',height: 200,width: 200,)),
                Text('Loading....',style: TextStyle(fontSize: 20),),
                TextFormField(
                  controller: phoneController,
                  decoration: InputDecoration(
                    labelText: 'Number',
                    hintText: 'Enter your phone number',
                    helperText: 'phone number',
                    border: OutlineInputBorder(),
                  ),
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return'please Enter your phone number';
                    }else if(value.length !=11){
                      return'Enter valid phone number';
                    }else{
                      return null;
                    }
                  },
                ),

                SizedBox(height: 40,),
                TextFormField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    labelText: 'password',
                    hintText: 'Enter your password',
                    helperText: 'password',
                    border: OutlineInputBorder(),
                  ),

                  validator: (value){
                    if (value == null || value.isEmpty){
                      return'please Enter your password';
                    }else if(value.length < 6){
                      return'please must be min 6 char';
                    }else{
                      return null;
                    }
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 320,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange,
                          foregroundColor: Colors.white
                      ),
                      onPressed: (){
                        if(_formkey.currentState!.validate()){
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Login successful')));
                        }
                      }, child: Text('Login')),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
