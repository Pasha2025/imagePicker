import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pasha_debugd/screens/dashboard_screen.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  SizedBox textFieldDefaultDap = const SizedBox(
    height: 16,
  );
  bool visiblePassword = false;
  XFile? pickedXFile;
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passworsTextEditingController = TextEditingController();

  @override
  void initState() {
    //calls only ones
    // api fetching, runtime permission, locations,etc
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // call multiple times
    super.didChangeDependencies();
  }

  String defaultImage =
      "https://www.pngall.com/wp-content/uploads/5/User-Profile-PNG-Picture.png";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text("Registration Screen"),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Container(
            padding: const EdgeInsets.all(8),
            child: Column(children: [
              CachedNetworkImage(
                  height: 200,
                  width: 200,
                  imageUrl:
                      "https://th.bing.com/th/id/OIP.XAuYSVkhX9E8uZNJ2ukLvwAAAA?rs=1&pid=ImgDetMain"),
              Text(
                "welcome To The App , Create your account enjoy the Shopping ",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Stack(
                children: [
                  pickedXFile != null
                      ? CircleAvatar(
                          radius: 60,
                          backgroundImage: FileImage(File(pickedXFile!.path)),
                        )
                      : CircleAvatar(
                          radius: 60,
                          backgroundImage:
                              CachedNetworkImageProvider(defaultImage)),
                  // const CircleAvatar(
                  //     radius: 60,
                  // backgroundImage: CachedNetworkImageProvider(
                  //     "https://www.pngall.com/wp-content/uploads/5/User-Profile-PNG-Picture.png")),
                  Positioned(
                      bottom: 0,
                      right: 8,
                      child: InkWell(
                          onTap: () async {
                            ImagePicker imagePicker = ImagePicker();
                            pickedXFile = await imagePicker.pickImage(
                                source: ImageSource.gallery,
                                imageQuality: 50,
                                preferredCameraDevice: CameraDevice.front);
                            if (pickedXFile != null) {
                              print("image picked: ${pickedXFile!.path}");
                              setState(() {});
                            } else {
                              print("image not picked ");
                            }
                          },
                          child: Icon(Icons.photo_camera, size: 32)))
                ],
              ),
              // name field
              textFieldDefaultDap,
              TextField(),
              TextFormField(
                controller: nameTextEditingController,
                maxLength: 50,
                onTapOutside: (event) {
                  // for closing keyword when touched outside
                  FocusScope.of(context).unfocus();
                },
                keyboardType: TextInputType.text,
                onChanged: (value) {
                  print("value : $value");
                  //_formKey.currentState.validate();
                },
                validator: (value) {
                  if (value == null || value.isEmpty || value.length < 3) {
                    return 'please enter valid Name ';
                  }
                  return null;
                },
                //textInputAction: TextInputAction.next,
                onEditingComplete: () {
                  FocusScope.of(context).nextFocus();
                },
                decoration: InputDecoration(
                    hintText: "Enter your Name",
                    label: Text("Name"),
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder()),
              ),
              textFieldDefaultDap,
              TextFormField(
                controller: emailTextEditingController,
                maxLength: 50,
                keyboardType: TextInputType.text,
                onChanged: (value) {
                  print("value : $value");
                  //_formKey.currentState.validate();
                },
                validator: (value) {
                  if (value == null || value.isEmpty || value.length < 3) {
                    return 'please enter valid email address ';
                  }
                  return null;
                },
                textInputAction: TextInputAction.next,
                onEditingComplete: () {
                  FocusScope.of(context).nextFocus();
                },
                decoration: InputDecoration(
                    hintText: "Enter your Email",
                    label: Text("Email"),
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder()),
              ),
              textFieldDefaultDap,
              TextFormField(
                controller: passworsTextEditingController,
                obscureText: visiblePassword,
                maxLength: 10,
                keyboardType: TextInputType.text,
                validator: (value) {
                  if (value == null || value.isEmpty || value.length < 8) {
                    return 'please enter the currect password ';
                  }
                  return null;
                },
                textInputAction: TextInputAction.done,
                onEditingComplete: () {
                  FocusScope.of(context).nextFocus();
                },
                decoration: InputDecoration(
                    hintText: "Enter your password",
                    label: Text("password"),
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            visiblePassword = !visiblePassword;
                          });
                        },
                        child: Icon(visiblePassword
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined)),
                    border: OutlineInputBorder()),
              ),
              textFieldDefaultDap,
              ElevatedButton(
                  onPressed: () {
                    FocusScope.of(context).unfocus();
                    // Navigator.of(context).push(route);
                    // Navigator.of(context).pushAndRemoveUntil(route);
                    // Navigator.of(context).pushReplacement(route);

                    // Navigator.of(context).push(MaterialPageRoute(
                    //     builder: (ctx) => DashboardScreen()));
                    //validate();
                    // if (pickedXFile == null) {
                    //   print("please select image");
                    //   Fluttertoast.showToast(msg: "please select image");
                    // } else if (_formKey.currentState!.validate()) {
                    //   print("processing your request");
                    //   Fluttertoast.showToast(
                    //       msg: "Account create Sucssesfully succesfully");
                    // } else {
                    //   print("Something went wrong");
                    // }
                  },
                  child: const Text("Register")),
              TextButton(
                  onPressed: () {
                    nameTextEditingController.clear();
                    emailTextEditingController.clear();
                    passworsTextEditingController.clear();
                  },
                  child: const Text(
                    "Clear textfields",
                    style: TextStyle(color: Colors.red),
                  )),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    "Already have account?",
                    style: TextStyle(color: Colors.blue),
                  ))
            ]),
          ),
        ),
      ),
    );
  }

  validate() {
    String name, email, password;
    name = nameTextEditingController.text;
    email = emailTextEditingController.text;
    password = passworsTextEditingController.text;

    if (name.isEmpty) {
      Fluttertoast.showToast(msg: "Enter valid name");
    } else if (email.isEmpty) {
      Fluttertoast.showToast(msg: "Enter valid email");
    } else if (password.isEmpty || password.length < 8) {
      Fluttertoast.showToast(msg: "Enter valid password");
    } else {
      Fluttertoast.showToast(msg: "Success");
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(
              builder: (ctx) => DashboardScreen(
                    email: email,
                  )),
          (route) => false);
    }
  }

  @override
  void didUpdateWidget(covariant RegistrationScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    super.dispose();
  }
}
