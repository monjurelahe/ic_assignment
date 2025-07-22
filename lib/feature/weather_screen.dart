import 'package:flutter/material.dart';
import 'package:weather_app/core/appcolors.dart';
import 'package:weather_app/core/textstyle.dart';
import 'package:weather_app/feature/rest_screen.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 950,
        width: 428,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bgimage.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 31),
            //SunnyImage
            Image.asset('assets/icons/sun.png'),
            SizedBox(height: 21),
            Text('Weather', style: AppFontStyle.whiteHeading),
            SizedBox(height: 11),
            Text('ForeCasts', style: AppFontStyle.yellowHeading),
            SizedBox(height: 51),
            SizedBox(
              width: 304,
              height: 55,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const RestScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Appcolors.yellowColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Text(
                  'Get Start',
                  style: TextStyle(
                    color: Colors.indigo.shade900,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
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
