import 'package:flutter/material.dart';
import 'package:hackthon/Constraint.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SizedBox(
      height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
           const Spacer(),
          SizedBox(
            height: 207,
            width: 172,
            child: Image.asset('assets/Vector3.png'),
          ),
          const Spacer(),
          const Lcontainer(),
          const Spacer(),
        ],
      ),
     ),
    );
  }
}
class Lcontainer extends StatelessWidget {
  const Lcontainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      width: 360,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow:const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 50.0, // soften the shadow
            spreadRadius: 1.0, //extend the shadow
            offset: Offset(
              15.0, // Move to right 10  horizontally
              15.0, // Move to bottom 10 Vertically
            ),
          )
        ] 
      ),
      child: Column(
        children: [
          Padding(
              padding: const EdgeInsets.only(top:30.0),
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: txtbg, borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: TextFormField(
                 
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.black,
                        ),
                        hintText: "Enter Email",
                        contentPadding:
                            EdgeInsets.only(top: 15, bottom: 10, left: 30)),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom:20.0),
              child: Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                    color: txtbg, borderRadius: BorderRadius.circular(30)),
                child: Center(
                  child: TextFormField(
                    decoration: const InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.black,
                        ),
                        hintText: "Enter Your Password",
                        contentPadding:
                            EdgeInsets.only(top: 15, bottom: 10, left: 30)),
                  ),
                ),
              ),
            ),
            
             ElevatedButton(onPressed: (){},
              style:  ButtonStyle(
                shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                 backgroundColor: MaterialStateProperty.all(bg),
                 padding: MaterialStateProperty.all(const EdgeInsets.symmetric(
                      horizontal: 70, vertical: 13))),
              child: const  Text("Login"),
              ),
              
           const Padding(
             padding:  EdgeInsets.all(10.0),
             child: Text("OR",style: TextStyle(color: Colors.grey,fontSize: 18),),
           ),    

           ElevatedButton(onPressed: (){},
              style:  ButtonStyle(
                 shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),),
                 backgroundColor: MaterialStateProperty.all(bg),
                 padding: MaterialStateProperty.all(const EdgeInsets.symmetric(
                      horizontal: 70, vertical: 13))),
              child: const  Text("Login With Phone "),
              ),
              const Spacer(),
              Text("Create Account",style: TextStyle(color:txts,fontSize: 18,fontWeight: FontWeight.w700),),
              const Divider(thickness: 2, indent: 120, endIndent: 120, color: Colors.grey, height: 20, ),
              const Spacer(),

              
        ],
      ),
    );
  }
}