import 'package:flutter/material.dart';

import 'Homepage.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  TextEditingController _name = TextEditingController();
  TextEditingController _username = TextEditingController();
  TextEditingController _phone = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _conformpassword = TextEditingController();
  var formkey = GlobalKey<FormState>();
  var fullname = '';
  var userfullname = '';
  var phonenumber = '';
  var emailid = '';
  var writepass = '';
  var fullconformpass = '';
  var group = 'M';
  var gender = '';
  var selected = 'Gj';
  var state = '';
  bool _ischeked = false;
  var errormassage = '';
  _handalRadio(value) {
    setState(() {
      group = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
      ),
      body: Form(
        key: formkey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: size.height * 1.3,
              width: size.width,
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name",
                        style: TextStyle(
                            fontSize: 20.0, color: Colors.amberAccent.shade200),
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.length <= 0) {
                            return "Please enter your name";
                          } else {
                            bool namevalid = RegExp(
                                    r"^\s*([A-Za-z]{1,}([\.,] |[-']| ))+[A-Za-z]+\.?\s*$")
                                .hasMatch(value);
                            if (!namevalid) {
                              "Please enter your valid name";
                            }
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                        controller: _name,
                        keyboardType: TextInputType.name,
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Text(
                        "Username",
                        style: TextStyle(
                            fontSize: 20.0, color: Colors.amberAccent.shade200),
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.length <= 0) {
                            return "Please enter your username";
                          } else {
                            bool usernamevalid =
                                RegExp(r"^[A-Za-z][A-Za-z0-9_]{7,29}$")
                                    .hasMatch(value);
                            if (!usernamevalid) {
                              return "Please enter your valid username";
                            }
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                        controller: _username,
                        keyboardType: TextInputType.name,
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Text(
                        "Phone",
                        style: TextStyle(
                            fontSize: 20.0, color: Colors.amberAccent.shade200),
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.length <= 0) {
                            return "Please enter your phone number";
                          } else if (value.length != 10) {
                            return "Please enter your valid number";
                          } else {
                            bool phonevalid = RegExp(r"^(?:[+0]9)?[0-9]{10}$")
                                .hasMatch(value);
                            if (!phonevalid) {
                              return "Please enter your valid number";
                            }
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                        controller: _phone,
                        keyboardType: TextInputType.phone,
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Text(
                        "Email",
                        style: TextStyle(
                            fontSize: 20.0, color: Colors.amberAccent.shade200),
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.length <= 0) {
                            return "Please enter your email";
                          } else {
                            bool emailvalid = RegExp(
                                    r"^([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})$")
                                .hasMatch(value);
                            if (!emailvalid) {
                              "Please enter your valid email";
                            }
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                        controller: _email,
                        keyboardType: TextInputType.emailAddress,
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Text(
                        "Password",
                        style: TextStyle(
                            fontSize: 20.0, color: Colors.amberAccent.shade200),
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.length <= 0) {
                            return "Please enter your password";
                          } else {
                            final passwordvalid = RegExp(
                                    r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\><*~]).{8,}/pre>')
                                .hasMatch(value);
                            if (!passwordvalid) {
                              "Please enter your valid password";
                            }
                            return null;
                          }
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                        controller: _password,
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Text(
                        "Conform Password",
                        style: TextStyle(
                            fontSize: 20.0, color: Colors.amberAccent.shade200),
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Conform password is required please enter';
                          }
                          if (value != _password.text) {
                            return 'Conform password not matching';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                        ),
                        controller: _conformpassword,
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Gender:",
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.amberAccent.shade200),
                          ),
                          Text(
                            "Male",
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.amberAccent.shade200),
                          ),
                          Radio(
                              value: "M",
                              groupValue: group,
                              onChanged: _handalRadio),
                          Text(
                            "Female",
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.amberAccent.shade200),
                          ),
                          Radio(
                              value: "F",
                              groupValue: group,
                              onChanged: _handalRadio),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Row(
                        children: [
                          Text(
                            "State:",
                            style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.amberAccent.shade200),
                          ),
                          SizedBox(
                            width: size.width * 0.2,
                          ),
                          DropdownButton(
                            value: selected,
                            items: [
                              DropdownMenuItem(
                                child: Text("Gujrat"),
                                value: "Gj",
                              ),
                              DropdownMenuItem(
                                child: Text("Maharastra"),
                                value: "Mh",
                              ),
                              DropdownMenuItem(
                                child: Text("Punjab"),
                                value: "Pb",
                              ),
                            ],
                            onChanged: (value) {
                              setState(() {
                                selected = value!;
                              });
                              return null;
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: _ischeked,
                            onChanged: (value) {
                              setState(() {
                                _ischeked = value!;
                              });
                            },
                          ),
                          RichText(
                              text: TextSpan(
                                  text: "I accsept",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.amberAccent.shade200),
                                  children: [
                                WidgetSpan(
                                    child: SizedBox(
                                  width: size.width * 0.01,
                                )),
                                TextSpan(
                                  text: "tarm's and condition",
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.red.shade200),
                                )
                              ])),
                        ],
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Center(
                        child: InkWell(
                          onTap: () {
                            if (formkey.currentState!.validate()) {
                              if (_ischeked == true) {
                                setState(() {
                                  var nm = _name.text.toString();
                                  fullname = nm;
                                  var unm = _username.text.toString();
                                  userfullname = unm;
                                  var ph = _phone.text.toString();
                                  phonenumber = ph;
                                  var em = _email.text.toString();
                                  emailid = em;
                                  var pass = _password.text.toString();
                                  writepass = pass;
                                  var copass = _conformpassword.text.toString();
                                  fullconformpass = copass;
                                  gender = group;
                                  state = selected;
                                  _name.text = '';
                                  _username.text = '';
                                  _phone.text = '';
                                  _email.text = '';
                                  _password.text = '';
                                  _conformpassword.text = '';
                                });
                                Navigator.of(context).push(MaterialPageRoute(builder:(context) => Homepage(),));
                              }
                            } else {
                              setState(() {
                                errormassage = "Please fill detail";
                              });
                            }
                          },
                          child: Container(
                            height: size.height * 0.05,
                            width: size.width * 0.5,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.lightGreen.shade300,
                            ),
                            child: Center(
                                child: Text(
                              "Submit",
                              style: TextStyle(fontSize: 25.0),
                            )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
