import 'package:flutter/material.dart';

class Form1 extends StatelessWidget {
  Form1({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(
          child: Text(
            'Email & Phone From',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: Form(
        key: _formKey,
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              validator: (value){
                if(value!.isEmpty){
                  return 'Please enter email';
                }
                if(!RegExp(r'.*@gmail.com$').hasMatch(value)){
                  return 'Please enter valid email';
                }
                return null;
              },
                controller: emailController,
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(), labelText: 'Enter Email')),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              validator: (value){
                if(value!.isEmpty){
                  return 'Please enter phone number';
                }
                if(!RegExp(r'^[0-9]{10}').hasMatch(value)){
                  return 'Please enter valid phone number';
                }
              },
                controller: phoneController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Enter Phone')),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(onPressed: () {
              print('IS VALIDATE : ${_formKey.currentState!.validate()}');
              print(emailController.text);
              print(phoneController.text);
            }, child: Text("Submit"))
          ],
        ),
      )),
    );
  }
}
