import 'package:flutter/material.dart';
import 'package:shopping_app/screens/product_list.dart';

class GridSingleItem extends StatelessWidget {
  final String title;
  final String imgUrl;
  GridSingleItem(this.title, this.imgUrl);

  void navigateToProductList(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (context) => ProductList(
              title: title,
            )));
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => navigateToProductList(context),
      child: Card(
        elevation: 10,
        margin: EdgeInsets.all(10),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 150,
          margin: EdgeInsets.all(10),
          child: Row(
            children: [
              Image.network(imgUrl),
              SizedBox(
                width: 30,
              ),
              Center(
                  child: Text(
                title,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
