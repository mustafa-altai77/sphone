import 'package:flutter/material.dart';
import 'package:store/presintation/screen/screen_product.dart';
import 'package:store/presintation/widget/myTitle.dart';

class ScreenDetails extends StatelessWidget {
  const ScreenDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff3f5f9),
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Icon(
                              Icons.arrow_back_ios_sharp,
                              color: Colors.grey,
                            ),
                          ),
                          onTap: ()=> Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_)=>ScreenProduct())),
                        ),
                        Container(
                            width: 80,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  myTitle(
                                      title: '5',
                                      size: 15,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                  Icon(
                                    Icons.star,
                                    color: Colors.deepOrange,
                                  )
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Column(
                  children: [
                    Container(
                      height: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/images/s23.jpg'))),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            border:
                                Border.all(color: Colors.deepOrange, width: 2),
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/images/1.jpg'),
                        ),
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/images/2.jpg'),
                        ),
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/images/3.jpg'),
                        ),
                      ),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('assets/images/4.jpg'),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        height: 250,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(30),
                                topLeft: Radius.circular(30)),
                            color: Colors.white),
                        child: Padding(
                          padding: const EdgeInsets.all(18),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              myTitle(
                                  title: 'Samsung Galaxy S23, 128GB',
                                  size: 20,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold),
                              SizedBox(
                                height: 75,
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Text(
                                      'Samsung Galaxy S23, 128GB, Green, UAE Version, 5G Mobile Phone, Dual SIM, Android Smartphone, 1 Year Manufacturer Warranty',
                                      style: TextStyle(
                                          color: Colors.black54,
                                          height: 1.5,
                                          fontSize: 15),
                                      maxLines: 3)),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 2),
                                    child: Text('See More Detail ',
                                        style: TextStyle(
                                            color: Colors.deepOrange,
                                            fontSize: 15)),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 2),
                                    child: Icon(
                                      Icons.navigate_next,
                                      color: Colors.deepOrange,
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                            color: Color(0xfff3f5f9),
                            borderRadius: BorderRadius.only(

                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30))),

                        child: Padding(
                          padding:  EdgeInsets.only(top: 10,left: 8),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10,top: 10),
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          color: Colors.brown,
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10,top: 10),
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          color: Colors.black26,
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10,top: 10),
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10,top: 10),
                                    child: Container(
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          border: Border.all(width: 2)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Container(
                                          width: 30,
                                          height: 30,
                                          decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            Padding(
                              padding: const EdgeInsets.only(right: 15),
                              child: Row(

                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(50),
                                        ),
                                        child: Center(child: Text('-',style: TextStyle(color: Colors.grey,fontSize: 40),))
                                        ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(50),
                                          ),
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.grey,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.red.shade100,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20)),
                ),
                child: InkWell(
                  child: Icon(
                    Icons.favorite,
                    size: 30,
                    color: Colors.red,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20)),
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Add to Cart',style: TextStyle(fontSize: 16),
                    ),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrange,shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                    )),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
