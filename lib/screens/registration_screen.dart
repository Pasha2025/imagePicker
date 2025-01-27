import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

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
      body: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
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
            TextFormField(
              maxLength: 50,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  hintText: "Enter your Email",
                  label: Text("Email"),
                  prefixIcon: Icon(Icons.email),
                  border: OutlineInputBorder()),
            ),
            textFieldDefaultDap,
            TextFormField(
              obscureText: visiblePassword,
              maxLength: 10,
              keyboardType: TextInputType.text,
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
            ElevatedButton(onPressed: () {}, child: const Text("Registration")),
            TextButton(
                onPressed: () {},
                child: const Text(
                  "Already have account..?",
                  style: TextStyle(color: Colors.red),
                ))
          ],
        ),
      ),
    );
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
