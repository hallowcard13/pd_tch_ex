import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as httpclient;
import '../models/university_model.dart';

class SecondTaskView extends StatefulWidget {
  const SecondTaskView({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SecondTaskView();
}

class _SecondTaskView extends State<SecondTaskView> {
  Future<List<UniversityModel>> getData() async {
    List<UniversityModel> result = [];
    var endpoint = Uri.http(
        'universities.hipolabs.com', '/search', {'country': 'Philippines'});
    var res = await httpclient.get(endpoint);
    if (res.statusCode == 200) {
      List<dynamic> json = jsonDecode(res.body);
      result = json.map((e) => UniversityModel.fromjson(e)).toList();
      return result;
    }
    return result;
  }

  @override
  @override
  Widget build(context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          elevation: 1,
          title: const Text('Universities'),
        ),
        body: Container(
          padding: const EdgeInsets.all(15.0),
          height: 800,
          child: FutureBuilder<List<UniversityModel>>(
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(vertical: 10.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black12),
                          boxShadow: const [
                            BoxShadow(color: Colors.black26, blurRadius: 4.0)
                          ]),
                      width: MediaQuery.of(context).size.width > 375.0
                          ? MediaQuery.of(context).size.width * 0.95
                          : 375,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4.0),
                            child: Row(
                              children: [
                                const Icon(Icons.school),
                                Flexible(
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      snapshot.data![index].name,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4.0),
                            child: Row(
                              children: [
                                const Icon(Icons.location_on),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(snapshot.data![index].province),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 4.0),
                            child: Row(
                              children: [
                                const Icon(Icons.language),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Text(snapshot.data![index].domain),
                                ),
                              ],
                            ),
                          )
                        ]),
                      ),
                    );
                  },
                  itemCount: snapshot.data!.length,
                );
              }
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                    child: SizedBox(
                  height: 50.0,
                  width: 50.0,
                  child: CircularProgressIndicator(),
                ));
              }
              return const Center(
                child: Text('Please check your internet'),
              );
            },
            future: getData(),
          ),
        ));
  }
}
