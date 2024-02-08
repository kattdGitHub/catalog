import 'package:flutter/material.dart';
import 'package:singh/Widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: Colors.white,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceAround,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price!}".text.bold.xl.red500.make(),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(context.theme.hintColor),
                shape: MaterialStateProperty.all(
                  StadiumBorder(),
                ),
              ),
              child: "Add to cart".text.color(Colors.white).make(),
            ).wh(130, 50)
          ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(
                catalog.id.toString(),
              ),
              child: Image.network(catalog?.image ?? ""),
            ).h32(context),
            Expanded(
              child: VxArc(
                height: 25.0,
                arcType: VxArcType.convey,
                edge: VxEdge.top,
                child: Container(
                  color: Colors.white,
                  width: context.screenWidth,
                  child: Column(
                    children: [
                      SizedBox(height: 25),
                      (catalog.name ?? "")
                          .text
                          .xl4
                          .color(MyTheme.drakBluishColor)
                          .bold
                          .make(),
                      (catalog.desc ?? "")
                          .text
                          .textStyle(context.captionStyle)
                          .xl
                          .make(),
                      10.heightBox,
                      " Dolor sea takimata ipsum sea eirmod aliquyam est. Eos \n ipsum voluptua eirmod elitr,no dolor dolor amet eirmod\n dolor labore dolores magna. Amet vero vero vero kasd, \n dolore sea sed sit invidunt nonumy est sit clita. Diam\n aliquyam amet tempor diam no aliquyam invidunt. Elitr\n lorem eirmod dolore clita. Rebum."
                          .text
                          .textStyle(
                            context.captionStyle,
                          )
                          .size(12)
                          .make()
                          .py16()
                    ],
                  ),
                ), //.py64()),
              ),
            )
          ],
        ),
      ),
    );
  }
}
