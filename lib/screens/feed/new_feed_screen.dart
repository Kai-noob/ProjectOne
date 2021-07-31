import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutterproject/constants/constants.dart';
import 'package:flutterproject/helpers/custom_category_icon.dart';
import 'package:flutterproject/helpers/custom_suffixicon.dart';
import '';

class NewFeed extends StatefulWidget {
  const NewFeed({Key? key}) : super(key: key);

  @override
  _NewFeedState createState() => _NewFeedState();
}

final List<String> imgList = [
  "assets/images/farmerimage.jpeg",
  "assets/images/farmerimage1.jpeg",
  "assets/images/farmerimage2.jpeg",
  "assets/images/farmerimage3.jpeg",
];

class _NewFeedState extends State<NewFeed> {
  final List<Widget> imageSliders = imgList
      .map((item) => Container(
            child: Container(
              margin: EdgeInsets.all(10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                child: Container(
                    child: Image.asset(
                  item,
                  fit: BoxFit.cover,
                  height: 500.0,
                  width: 300,
                )),
              ),
            ),
          ))
      .toList();

  int _current = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         floatingActionButton: FloatingActionButton(
        backgroundColor: kbodyColor,
        onPressed: (){},
        child: Icon(Icons.trending_up),
      ),
floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation:0.0,
        title: Text("Project", style: TextStyle(color: Colors.black)),
        centerTitle: true,
        actions: [
          IconButton(onPressed: (){}, icon: CustomSuffixIcon(svgicon: "assets/icons/search.svg",))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildCarousel(),
            buildDot(),
            buildCategoryTitlePart(),
            buildCategoryPart(),
            buildLocationTitlePart(),
            Container(
              height: MediaQuery.of(context).size.height*0.45,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CustomPostContainer(),
                  CustomPostContainer(),
                  CustomPostContainer(),
                  CustomPostContainer(),
                  CustomPostContainer()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Row buildLocationTitlePart() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Row(
            children: [
              Text(
                "ဒေသအလိုက်",
                style: TextStyle(fontSize: 25),
              ),
                Padding(
                  padding: const EdgeInsets.only(left:5.0),
                  child: CustomSmallIcon(svgicon: "assets/icons/location.svg"),
                ),
            ],
          ),
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              "အားလုံးကြည့်ရန်",
              style: TextStyle(color: kbodyColor),
            ))
      ],
    );
  }

  Padding buildCategoryTitlePart() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Row(
        children: [
          Text(
            "အမျိုးအစားများ",
            style: TextStyle(fontSize: 25),
          ),
            Padding(
                  padding: const EdgeInsets.only(left:5.0),
                  child: CustomSmallIcon(svgicon: "assets/icons/menu.svg"),
                ),
        ],
      ),
    );
  }

  Container buildCategoryPart() {
    return Container(
        height: MediaQuery.of(context).size.height*0.115,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            CustomCategoryIcon(
                label: "ဆန်", icon: "assets/icons/rice.svg", onTap: () {}),
            CustomCategoryIcon(
                label: "နှမ်း", icon: "assets/icons/sesame.svg", onTap: () {}),
            CustomCategoryIcon(
                label: "ကြက်သွန်",
                icon: "assets/icons/onion.svg",
                onTap: () {}),
            CustomCategoryIcon(
                label: "အာလူး", icon: "assets/icons/potato.svg", onTap: () {}),
            CustomCategoryIcon(
                label: "ခရမ်းချဥ်သီး",
                icon: "assets/icons/tomato.svg",
                onTap: () {}),
            CustomCategoryIcon(
                label: "ငရုတ်သီး",
                icon: "assets/icons/chilli.svg",
                onTap: () {}),
            CustomCategoryIcon(
                label: "ဆန်", icon: "assets/icons/chilli.svg", onTap: () {})
          ],
        ));
  }

  Row buildDot() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: imgList.map((url) {
        int index = imgList.indexOf(url);
        return Container(
          width: 8.0,
          height: 8.0,
          margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _current == index
                ? Color.fromRGBO(0, 0, 0, 0.9)
                : Color.fromRGBO(0, 0, 0, 0.4),
          ),
        );
      }).toList(),
    );
  }

  CarouselSlider buildCarousel() {
    return CarouselSlider(
      items: imageSliders,
      options: CarouselOptions(
          autoPlay: true,
          enlargeCenterPage: true,
          aspectRatio: 2.0,
          autoPlayCurve: Curves.easeOutQuint,
          enlargeStrategy: CenterPageEnlargeStrategy.height,
          onPageChanged: (index, reason) {
            setState(() {
              _current = index;
            });
          }),
    );
  }
}

class CustomPostContainer extends StatelessWidget {
  const CustomPostContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
                  color: Colors.white60,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.black12)),
      child: Column(
        children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.end,
             children: [
               Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            children: [
                              CustomSmallIcon(svgicon: "assets/icons/clock.svg"),
                              Text("2min ago"),
                            ],
                          ),
                        ),
             ],
           ),
          ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.asset("assets/images/onionimag.jpeg",
                  fit: BoxFit.cover)),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                color: Colors.white54,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Row(
                        children: [
                           CustomSmallIcon(svgicon: "assets/icons/fruits.svg"),
                          Text("ကြက်သွန်"),
                        ],
                      ),
                    ),
                      Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                     Text("ကျပ်",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                      Text("ငါးသိန်း")
                    ],),
                    Row(
                      children: [
                        CustomSmallIcon(svgicon: "assets/icons/location.svg"),
                        Text("သာစည်")
                      ],
                    ),
                   
                  ],
                ),
              )
            ],
          ),
          
        ],
      ),
    );
  }
}
