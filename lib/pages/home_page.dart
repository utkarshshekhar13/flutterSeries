import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catalog/core/store.dart';
import 'package:flutter_catalog/models/cart.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:flutter_catalog/widgets/home_widgets/catalog_header.dart';
import 'package:flutter_catalog/widgets/home_widgets/catalog_list.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:http/http.dart' as http;
// import 'package:flutter_catalog/widgets/drawer.dart';
// import 'package:flutter_catalog/widgets/item_widget.dart';
// import 'package:flutter_catalog/widgets/themes.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // final url = "https://api.jsonbin.io";
  final url = Uri.https(
      'api.jsonbin.io', '/b/604dbddb683e7e079c4eefd3', {'q': '{https}'});

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    // final catalogJson =
    //     await rootBundle.loadString("assets/files/catalog.json");
    final response = await http.get(url);
    final catalogJson = response.body;
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final _cart = (VxState.store as MyStore).cart;
    return Scaffold(
      floatingActionButton: VxBuilder(
          builder: (BuildContext context, store, VxStatus? status) =>
              FloatingActionButton(
                backgroundColor: context.theme.buttonColor,
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.cartRoute);
                },
                child: Icon(
                  CupertinoIcons.cart,
                  color: Colors.white,
                ),
              ).badge(
                  color: Vx.red500,
                  size: 22,
                  count: _cart.items.length,
                  textStyle: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
          mutations: {AddMutation, RemoveMutation}),
      backgroundColor: context.canvasColor,
      body: SafeArea(
        child: Container(
            padding: Vx.m32,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CatalogHeader(),
                if (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                  CatalogList().py16().expand()
                else
                  CircularProgressIndicator().centered().expand(),
              ],
            )),
      ),
    );
  }
}









/* 

ListView.builder(
          itemCount: CatalogModel.items.length,
          // itemCount: CatalogModel.items.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              item: CatalogModel.items[index],
              // item: CatalogModel.items[index],
            );
          },
        )

*/


/*

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Catalog App",
          // style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
            ? GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 16,
                    crossAxisSpacing: 16),
                itemBuilder: (context, index) {
                  final item = CatalogModel.items[index];
                  return Card(
                      clipBehavior: Clip.antiAlias,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: GridTile(
                        header: Container(
                            padding:
                                const EdgeInsets.all(12), //constant in style
                            decoration: BoxDecoration(color: Colors.deepPurple),
                            child: Text(
                              item.name,
                              style: TextStyle(color: Colors.white),
                            )),
                        child: Image.network(item.image),
                        footer: Container(
                            padding:
                                const EdgeInsets.all(12), //constant in style
                            decoration: BoxDecoration(color: Colors.black),
                            child: Text(
                              item.price.toString(),
                              style: TextStyle(color: Colors.white),
                            )),
                      ));
                },
                itemCount: CatalogModel.items.length,
              )
            : Center(
                child: CircularProgressIndicator(),
              ),
      ),
      drawer: MyDrawer(),
    );
  }


 */