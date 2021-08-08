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
      appBar: AppBar(
        backgroundColor: context.canvasColor,
      ),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: EdgeInsets.zero,
                children: [
                  "\$ ${catalog.price}".text.bold.xl4.red800.make(),
                  ElevatedButton(
                    onPressed: (){}, 
                    child: "Add to cart".text.make(),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(context.theme.buttonColor),
                      shape: MaterialStateProperty.all(StadiumBorder())
                    ),
                    ).wh(120,50)
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
                  catalog.name.text.xl4.color(context.accentColor).bold.make(),
                  catalog.desc.text.xl.make(),
                  10.heightBox,
                  "Labore justo kasd ut et sadipscing aliquyam. Sadipscing et ea et rebum voluptua, sed sanctus sit dolor amet sed magna et, et sit at ut sadipscing accusam et et aliquyam sit, sadipscing accusam takimata sit diam dolores at elitr tempor. Erat invidunt at stet amet voluptua stet et consetetur. Elitr."
                  .text
                  .textStyle(context.captionStyle!)
                  .make().p8()
                ],
              ).py32(),
              color: context.cardColor,)))
            
          
        ],),
      ),
    );
  }
}
