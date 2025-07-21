import 'package:flutter/material.dart';
import 'package:weather_app/core/imagepath.dart';
import 'package:weather_app/core/textstyle.dart';

class ForeCast extends StatelessWidget {
  const ForeCast({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bgimage.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 21),
              Text(
                'North America',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Max: 24\u00B0',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  SizedBox(width: 21),
                  Text(
                    'Min: 18\u00B0',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ],
              ),
              SizedBox(height: 27),
              Text(
                '7-Days Forecasts',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 13),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back_ios, color: Colors.white),
                  _buildContainer(
                    temperature: '19\u00B0C',
                    day: 'Mon',
                    imagePath: Assetpath.sun,
                  ),
                  _buildContainer(
                    temperature: '18\u00B0C',
                    day: 'Tue',
                    imagePath: Assetpath.rain,
                  ),
                  _buildContainer(
                    temperature: '18\u00B0C',
                    day: 'Wed',
                    imagePath: Assetpath.rain,
                  ),
                  _buildContainer(
                    temperature: '19\u00B0C',
                    day: 'Thu',
                    imagePath: Assetpath.sun,
                  ),
                  Icon(Icons.arrow_forward_ios, color: Colors.white),
                ],
              ),
              // SizedBox(
              //   height: 200,
              //   child: ListView.builder(
              //     scrollDirection: Axis.horizontal,
              //     physics: NeverScrollableScrollPhysics(),
              //     itemCount: 4,
              //     itemBuilder: (context, index) {
              //       return Padding(
              //         padding: const EdgeInsets.all(8.0),
              //         child: Container(
              //           height: 100,
              //           width: 100,
              //           color: Colors.amber,
              //         ),
              //       );
              //     },
              //   ),
              // ),
              SizedBox(height: 31),
              Container(
                height: 165,
                width: 352,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  gradient: LinearGradient(
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft,
                    colors: [Color(0xff3E2D8F), Color(0xff9D52AC)],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Image(image: AssetImage(Assetpath.crosshairs)),
                          SizedBox(width: 11),
                          Text('Air Quality', style: AppFontStyle.smallerText),
                        ],
                      ),
                    ),

                    Text('3-Low Health Risk', style: AppFontStyle.subHeading),
                    SizedBox(height: 11),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Image(image: AssetImage(Assetpath.line))],
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('See more', style: AppFontStyle.smallerText),
                          Icon(Icons.arrow_forward_ios, color: Colors.white),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 16),

              //2 Containers
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 150,
                    width: 165,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(19),
                      gradient: LinearGradient(
                        colors: [Color(0xff3E2D8F), Color(0xff9D52AC)],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContainer({
    required String temperature,
    required String day,
    required String imagePath,
    //List<Color>? gradientColor,
  }) {
    return Container(
      height: 172,
      width: 82,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        //gradient:gradientColor != null ? LinearGradient(colors:gradientColor, begin: Alignment.topCenter, end: Alignment.bottomCenter) :null,
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xff3E2D8F), Color(0xff8E78C8)],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 13),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(temperature, style: AppFontStyle.subtitle),
            Image.asset(imagePath),
            Text(day, style: AppFontStyle.subtitle),
          ],
        ),
      ),
    );
  }
}
