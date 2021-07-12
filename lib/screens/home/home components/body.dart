import 'package:flutter/material.dart';
import 'package:Vintage_Shop/constants.dart';
import 'package:Vintage_Shop/screens/home/home components/product.dart';
import 'package:Vintage_Shop/screens/home/home components/itemcard.dart';
import 'package:Vintage_Shop/screens/login/login.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Text(
            "Vintage Shop",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
            child: GridView.builder(
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: defaultPadding,
                  crossAxisSpacing: defaultPadding,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) => ItemCard(
                      product: products[index],
                    )),
          ),
        ),
        IconButton(
          icon: Icon(Icons.login_rounded),
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => LoginScreen())),
        ),
      ],
    );
  }
}
