import 'package:bbc_news_admin/pages/screens/topStories.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  static const String id = 'splashPage';

  @override
  State<SplashPage> createState() => _SplashPageState();
}
class _SplashPageState extends State<SplashPage> {


  @override
  Widget build(BuildContext context) {

    Future.delayed(const Duration(seconds: 3)).then((value) => Navigator.pushAndRemoveUntil(context,
        MaterialPageRoute(builder: (_) => const TopStories()), (route) => false));

    return Scaffold(
      backgroundColor: const Color(0xffa01213),
      body: Center(
        child: Container(
          height: 180,
          width: 180,
          decoration:  BoxDecoration(
            color:  const Color(0xffa01213),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.white)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text('BBC NEWS',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
              SizedBox(height: 13,),
              Text('Admin',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),),
            ],
          ),
        ),
      ),
    );
  }
}
