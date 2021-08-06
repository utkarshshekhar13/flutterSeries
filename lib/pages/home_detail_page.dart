import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_catalog/models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;
  
  const HomeDetailPage({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: MyTheme.creamColor,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children: [
                  "\$ ${catalog.price}".text.bold.xl4.red800.make(),
                  ElevatedButton(
                    onPressed: (){}, 
                    child: "Buy".text.make(),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(MyTheme.darkBluishColor),
                      shape: MaterialStateProperty.all(StadiumBorder())
                    ),
                    ).wh(100,50)
                ],
              ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(children: [
          Hero(
            tag: Key(catalog.id.toString()),
            child: Image.network(catalog.image)).h32(context),
          Expanded(child: VxArc(
            arcType: VxArcType.CONVEY,
            height: 30.0,
            edge: VxEdge.TOP,
            child: Container(
              width: context.screenWidth,
              child:Column(
                children: [
                  catalog.name.text.xl4.color(MyTheme.darkBluishColor).bold.make(),
                  catalog.desc.text.xl.make(),
                ],
              ).py64(),
              color: Colors.white,)))
            
          
        ],),
      ),
    );
  }
}
