import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:sole_de_luxe/models/shoes_entry.dart';
import 'package:sole_de_luxe/widgets/left_drawer.dart';

class ShoesEntryPage extends StatefulWidget {
    const ShoesEntryPage({super.key});
    
    @override
    State<ShoesEntryPage> createState() => _ShoesEntryPageState();
}

class _ShoesEntryPageState extends State<ShoesEntryPage> {
    Future<List<ShoesEntry>> fetchShoes(CookieRequest request) async {
        // Ganti URL sesuai dengan URL Django Anda
        // Untuk Android emulator
        // final response = await request.get('http://10.0.2.2:8000/json/');
        final response = await request.get('http://127.0.0.1:8000/json/'); // Untuk web
        
        // Melakukan decode response menjadi bentuk json
        var data = response;
        
        // Melakukan konversi data json menjadi object ShoesEntry
        List<ShoesEntry> listShoes = [];
        for (var d in data) {
            if (d != null) {
                listShoes.add(ShoesEntry.fromJson(d));
            }
        }
        return listShoes;
    }

    @override
    Widget build(BuildContext context) {
        final request = context.watch<CookieRequest>();
        return Scaffold(
            appBar: AppBar(
                title: const Text('Shoes Entry List'),
                backgroundColor: const Color.fromARGB(255, 2, 50, 34), // Warna tema Sole de Luxe
                foregroundColor: Colors.white,
            ),
            drawer: const LeftDrawer(),
            body: FutureBuilder(
                future: fetchShoes(request),
                builder: (context, AsyncSnapshot snapshot) {
                    if (snapshot.data == null) {
                        return const Center(child: CircularProgressIndicator());
                    } else {
                        if (!snapshot.hasData || snapshot.data!.isEmpty) {
                            return const Center(
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                        Text(
                                            'No shoes available.',
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Color(0xff59A5D8)
                                            ),
                                        ),
                                        SizedBox(height: 8),
                                    ],
                                ),
                            );
                        } else {
                            return ListView.builder(
                                itemCount: snapshot.data!.length,
                                itemBuilder: (_, index) => Card(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 16,
                                        vertical: 12
                                    ),
                                    elevation: 4,
                                    child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                                Text(
                                                    "${snapshot.data![index].fields.name}",
                                                    style: const TextStyle(
                                                        fontSize: 24.0,
                                                        fontWeight: FontWeight.bold,
                                                    ),
                                                ),
                                                const SizedBox(height: 10),
                                                Row(
                                                    children: [
                                                        Container(
                                                            padding: const EdgeInsets.symmetric(
                                                                horizontal: 8,
                                                                vertical: 4,
                                                            ),
                                                            decoration: BoxDecoration(
                                                                color: const Color.fromARGB(255, 2, 50, 34),
                                                                borderRadius: BorderRadius.circular(8),
                                                            ),
                                                            child: Text(
                                                                "\$${snapshot.data![index].fields.price}",
                                                                style: const TextStyle(
                                                                    color: Colors.white,
                                                                    fontWeight: FontWeight.bold,
                                                                ),
                                                            ),
                                                        ),
                                                        const SizedBox(width: 10),
                                                        Container(
                                                            padding: const EdgeInsets.symmetric(
                                                                horizontal: 8,
                                                                vertical: 4,
                                                            ),
                                                            decoration: BoxDecoration(
                                                                color: Colors.grey[200],
                                                                borderRadius: BorderRadius.circular(8),
                                                            ),
                                                            child: Text(
                                                                snapshot.data![index].fields.color,
                                                                style: const TextStyle(
                                                                    fontWeight: FontWeight.bold,
                                                                ),
                                                            ),
                                                        ),
                                                    ],
                                                ),
                                                const SizedBox(height: 10),
                                                Text(
                                                    "Condition: ${snapshot.data![index].fields.condition}",
                                                    style: const TextStyle(
                                                        fontSize: 16,
                                                    ),
                                                ),
                                                Text(
                                                    "Release Year: ${snapshot.data![index].fields.releaseYear}",
                                                    style: const TextStyle(
                                                        fontSize: 16,
                                                    ),
                                                ),
                                                const SizedBox(height: 10),
                                                Text(
                                                    "Description: ${snapshot.data![index].fields.description}",
                                                    style: const TextStyle(
                                                        fontSize: 14,
                                                        color: Colors.grey,
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),
                                ),
                            );
                        }
                    }
                },
            ),
        );
    }
}