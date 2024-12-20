import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:sole_de_luxe/screens/list_shoesentry.dart';
// import 'package:sole_de_luxe/screens/menu.dart';
import 'package:sole_de_luxe/widgets/left_drawer.dart';

class ShoesEntryFormPage extends StatefulWidget {
  const ShoesEntryFormPage({super.key});

  @override
  State<ShoesEntryFormPage> createState() => _ShoesEntryFormPageState();
}

class _ShoesEntryFormPageState extends State<ShoesEntryFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _shoes = "";
  double _price = 0.0;
  String _description = "";
  String _color = "";
  String _condition = "";
  int _releaseYear = 0;

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();

    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Form Tambah Shoes',
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
      ),
      drawer: const LeftDrawer(),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Shoes Name",
                    labelText: "Shoes Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _shoes = value!;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Shoes Name cannot be empty!";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Price",
                    labelText: "Price",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _price = double.tryParse(value!) ?? 0.0;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Price cannot be empty!";
                    }
                    if (double.tryParse(value) == null) {
                      return "Price must be a number!";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Description",
                    labelText: "Description",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _description = value!;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Description cannot be empty!";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Color",
                    labelText: "Color",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _color = value!;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Color cannot be empty!";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Condition",
                    labelText: "Condition",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _condition = value!;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Condition cannot be empty!";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Release Year",
                    labelText: "Release Year",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _releaseYear = int.tryParse(value!) ?? 0;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Release Year cannot be empty!";
                    }
                    if (int.tryParse(value) == null) {
                      return "Release Year must be a number!";
                    }
                    return null;
                  },
                ),
              ),
              // Align(
              //   alignment: Alignment.bottomCenter,
              //   child: Padding(
              //     padding: const EdgeInsets.all(8.0),
              //     child: ElevatedButton(
              //       style: ButtonStyle(
              //         backgroundColor: MaterialStateProperty.all(
              //             Theme.of(context).colorScheme.primary),
              //       ),
              //       onPressed: () async {
              //         if (_formKey.currentState!.validate()) {
              //             final response = await request.postJson(
              //                 "http://127.0.0.1:8000/create-flutter/",
              //                 jsonEncode(<String, dynamic>{
              //                     'name': _shoes, // Gunakan _shoes bukan name
              //                     'price': _price, // Gunakan _price bukan price
              //                     'description': _description,
              //                     'color': _color,
              //                     'condition': _condition,
              //                     'release_year': _releaseYear,
              //                 }),
              //             );

              //             if (context.mounted) {
              //                if (response['status'] == 'success') {
              //                 ScaffoldMessenger.of(context)
              //                     .showSnackBar(const SnackBar(
              //                     content: Text("New shoes successfully saved!"),
              //                 ));
              //                 Navigator.pushReplacement(
              //                     context,
              //                     MaterialPageRoute(builder: (context) => const ShoesEntryPage()), // Ubah ke halaman list
              //                 );
              //             }
              //             }
              //         }
              //       },
              //       child: const Text(
              //         "Save",
              //         style: TextStyle(color: Colors.white),
              //       ),
              //     ),
              //   ),
              // ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Theme.of(context).colorScheme.primary),
                    ),
                    onPressed: () async {
                      if (_formKey.currentState!.validate()) {
                        // Kirim data ke server
                        final response = await request.postJson(
                          "http://127.0.0.1:8000/create-flutter/",
                          jsonEncode(<String, dynamic>{
                            'name': _shoes,
                            'price': _price,
                            'description': _description,
                            'color': _color,
                            'condition': _condition,
                            'release_year': _releaseYear,
                          }),
                        );

                        if (context.mounted) {
                          if (response['status'] == 'success') {
                            // Tampilkan dialog yang berisi data yang berhasil disimpan
                            showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: const Text('Shoes berhasil disimpan'),
                                  content: SingleChildScrollView(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text('Name: $_shoes'),
                                        Text('Price: \$$_price'),
                                        Text('Description: $_description'),
                                        Text('Color: $_color'),
                                        Text('Condition: $_condition'),
                                        Text('Release Year: $_releaseYear'),
                                      ],
                                    ),
                                  ),
                                  actions: [
                                    TextButton(
                                      child: const Text('OK'),
                                      onPressed: () {
                                        Navigator.pop(context); // Tutup dialog
                                        _formKey.currentState!.reset(); // Reset form
                                        Navigator.pushReplacement(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => const ShoesEntryPage(),
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
                          } else {
                            // Jika gagal, tampilkan pesan error
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("Failed to save shoes entry!"),
                              ),
                            );
                          }
                        }
                      }
                    },
                    child: const Text(
                      "Save",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}