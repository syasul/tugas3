import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:tugas3/widget/nav.dart';

class AddProd extends StatefulWidget {
  const AddProd({Key? key}) : super(key: key);

  @override
  State<AddProd> createState() => _AddProdState();
}

class _AddProdState extends State<AddProd> {
  FilePicker? result;
  String? _fileName;
  PlatformFile? pickedFile;
  bool isLoading = false;
  File? filetoDisplay;

  void pickfile() async {
    try {
      setState(() {
        isLoading = true;
      });

      var result = await FilePicker.platform
          .pickFiles(allowMultiple: false, type: FileType.image);

      if (result != null) {
        _fileName = result.files.first.name;
        pickedFile = result.files.first;
        // filetoDisplay = File(pickedFile!.path.toString());
      }

      setState(() {
        isLoading = false;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.blueAccent,
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => ScreenNav()));
          },
        ),
        title: const Text(
          'Add Product',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 10,
          left: 15,
          right: 15,
        ),
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: [
            const Center(
              child: Text(
                'Product Information',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
                  fontSize: 18,
                ),
              ),
            ),
            Divider(
              color: Colors.black.withOpacity(0.5),
              height: 10,
              thickness: 0.5,
              indent: 20,
              endIndent: 20,
            ),
            Container(
              child: const Text(
                'Product Image',
                style: TextStyle(fontFamily: 'Poppins', fontSize: 15),
              ),
            ),
            GestureDetector(
              onTap: (() {}),
              child: Container(
                width: double.infinity,
                height: 200,
                margin: const EdgeInsets.only(top: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.black, width: 1.5),
                ),
                child: const Icon(
                  Icons.add,
                  size: 50,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, left: 10),
              child: const Text(
                'Product Name',
                style: TextStyle(fontFamily: 'Poppins', fontSize: 15),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(),
              child: TextFormField(
                decoration: InputDecoration(
                  //  border: InputBorder.none,
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.black, width: 2.0),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
                  fillColor: Colors.white,
                  filled: true,

                  hintText: 'Product Name',
                  // hintStyle: ,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, left: 10),
              child: const Text(
                'Product ID',
                style: TextStyle(fontFamily: 'Poppins', fontSize: 15),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(),
              child: TextFormField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  //  border: InputBorder.none,
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.black, width: 2.0),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
                  fillColor: Colors.white,
                  filled: true,

                  hintText: 'Product ID',
                  // hintStyle: ,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, left: 10),
              child: const Text(
                'Price',
                style: TextStyle(fontFamily: 'Poppins', fontSize: 15),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(),
              child: TextFormField(
                decoration: InputDecoration(
                  //  border: InputBorder.none,
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.black, width: 2.0),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
                  fillColor: Colors.white,
                  filled: true,

                  hintText: 'Price',
                  // hintStyle: ,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, left: 10),
              child: const Text(
                'Stock',
                style: TextStyle(fontFamily: 'Poppins', fontSize: 15),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(),
              child: TextFormField(
                decoration: InputDecoration(
                  //  border: InputBorder.none,
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.black, width: 2.0),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
                  fillColor: Colors.white,
                  filled: true,

                  hintText: 'Stock',
                  // hintStyle: ,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, left: 10),
              child: const Text(
                'Description',
                style: TextStyle(fontFamily: 'Poppins', fontSize: 15),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(),
              child: TextFormField(
                maxLines: 6,
                decoration: InputDecoration(
                  //  border: InputBorder.none,
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.black, width: 2.0),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
                  fillColor: Colors.white,
                  filled: true,

                  hintText: 'Description  ',
                  // hintStyle: ,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15, left: 10),
              child: const Text(
                'Low Stock Warning',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10),
              child: const Text(
                'Change value to 0 for disable low stock warning',
                style: TextStyle(
                    fontFamily: 'Poppins', fontSize: 10, color: Colors.grey),
              ),
            ),
            Divider(
              color: Colors.black.withOpacity(0.5),
              height: 10,
              thickness: 0.5,
              indent: 20,
              endIndent: 20,
            ),
            Container(
              margin: const EdgeInsets.only(top: 5, bottom: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  //  border: InputBorder.none,
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Colors.black, width: 2.0),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 18, horizontal: 20),
                  fillColor: Colors.white,
                  filled: true,

                  hintText: '0',
                  // hintStyle: ,
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (c) => ScreenNav()));
              },
              child: Container(
                  height: 60,
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                  ),
                  margin: const EdgeInsets.only(
                    bottom: 10,
                    top: 10,
                  ),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFF1089FF),
                        Color(0xff19B9EB),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Color(0xff19B9EB),
                        spreadRadius: 0,
                        blurRadius: 10,
                        offset: Offset(0, 0.9),
                      ),
                    ],
                  ),
                  child: const Text(
                    "Add Product",
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.white,
                        fontFamily: "Poppins",
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
