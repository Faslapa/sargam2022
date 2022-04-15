import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:online_food_ordering_web/model.dart/product_model.dart';

import '../../../constants.dart';

class Products extends StatelessWidget {
  const Products({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);
  final Product product;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kPadding / 2),
      child: InkWell(
        onTap: press,
        child: Material(
          color: Color.fromARGB(255, 244, 237, 237),
          elevation: 5,
          borderRadius: BorderRadius.circular(15),
          child: Container(
            padding: EdgeInsets.all(5.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.asset(
                    product.image, fit: BoxFit.fill,
                  ),
                ),
                
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: AutoSizeText(
                    
                    product.title,
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    minFontSize: 12,
                    style: TextStyle(
                      fontSize: 25, color:Color.fromARGB(226, 3, 2, 48),fontWeight: FontWeight.bold
                    ),
                    
                    
                    
                  
                  ),
                ),
              
              ],
              
            ),
          ),
        ),
      ),
    );
  }
}
