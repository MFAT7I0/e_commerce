import 'package:first_broject/models/build_container_categories.dart';
import 'package:first_broject/models/container_builder.dart';
import 'package:flutter/material.dart';


final List<ContainerItemsF> container = [
  ContainerItemsF(
      image: 'assets/images/shoes image Product.png',
      text: 'FS - Nike Air Max 270 React',
      price: 299.43),
  ContainerItemsF(
      image: 'assets/images/bag image Product .png',
      text: 'FS - QUILTED MAXI CROSS',
      price: 299.43),
  ContainerItemsF(
      image: 'assets/images/shoes Product (3).png',
      text: 'FS - Nike Air Max 270 React',
      price: 299.43),
  ContainerItemsF(
      image: 'assets/images/red bag Product (4).png',
      text: 'Nike Air Max 270 React ENG',
      price: 299.43),
];





class FirstCategory extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:  SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 26.0,left: 16),
                child: Row(
                  children: [
                    Icon(Icons.arrow_back_ios, size: 24,color: Color(0xff9098B1)),
                    Text('Favorite Product',style: TextStyle(color: Color(0xff223263),fontWeight: FontWeight.w700,fontSize: 16),)
                  ],
                ),
              ),
              SizedBox(height: 28,),
              Divider(color: Color(0xffEBF0FF),),
              SizedBox(
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 0.75,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: container.length,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return BuildContainerItemsForCategories(
                        image: container[index].image,
                        text: container[index].text,
                        price: container[index].price,
                        oldPrice: null,
                        discount: null,
                      );
                    }),
              ),
            ],
          ),
        ),

      ),
    );
  }
}
