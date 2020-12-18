import 'package:flutter/material.dart';
import 'package:newscast/screens/category_news.dart';

class CategoryTile extends StatelessWidget {
  final backgroundColor;
  final String categoryName;
  CategoryTile({this.backgroundColor, this.categoryName});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CategoryNews(
              category: categoryName.toLowerCase(),
            ),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
        child: Stack(
          children: [
            Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: backgroundColor),
                child: Text(
                  categoryName,
                  style: TextStyle(color: Colors.white),
                )),
          ],
        ),
      ),
    );
  }
}
