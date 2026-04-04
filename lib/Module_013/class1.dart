import 'package:flutter/material.dart';

class M13class1 extends StatefulWidget {
  const M13class1({super.key});

  @override
  State<M13class1> createState() => _M13class1State();
}

class _M13class1State extends State<M13class1> {
  int number = 0;
  bool isShow =false;
  bool liked = false;
  String longtext = 'Hi Iam AL-AMIN khan iam a sutdent,Iam 20 years old,i live in chandpur but sutdy perpus iam stay in a lakshmipur city ,iam study of a lakshmipur polytechnicInstitute,my department is Computer tachnology,my label is 7th semestar';
  bool line = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('STATEFUL_WIDGET')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              number.toString(),
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                     number++;
                    });
                  },
                  child: Text(
                    '+',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      number--;
                    });
                  },
                  child: Text(
                    '-',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(50.0),
              child: TextField(
                obscureText: isShow,
                decoration: InputDecoration(
                  hintText: 'password',hintStyle: TextStyle(fontSize: 15),
                  prefixIcon: Icon(Icons.lock,size: 17,),
                  suffixIcon: IconButton(onPressed: (){
                    setState(() {
                      isShow = !isShow;
                    });
                  }, icon: Icon(isShow ? Icons.visibility_off :Icons.visibility))
                ),
              ),
            ),
            
            IconButton(onPressed: (){
              setState(() {
                liked = !liked;
              });
            }, icon: Icon(liked ? Icons.favorite : Icons.favorite_border),
              color: liked ? Colors.red : Colors.white,
            ),

           Column(
             children: [
               Text(line ? longtext :'Hi Iam AL-AMIN khan iam a sutdent,Iam 20 years old,I live in chandpur but sutdy perpuse'),
               TextButton(onPressed: (){
                 setState(() {
                   line = !line;
                 });
               }, child: Text(line ? 'Hide' : '...More'))
             ],
           ),

            
          ],
        ),
      ),
    );
  }
}
