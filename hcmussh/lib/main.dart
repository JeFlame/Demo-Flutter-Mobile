import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Dashboard(),
    );
  }
}

class CustomSizedBox extends StatelessWidget {
  final String pictureLink;
  final String pictureName;

  const CustomSizedBox({
    super.key,  
    required this.pictureLink,
    required this.pictureName,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SecondDashboard()),
        );
      },
      child: SizedBox(
        width: 160.0,
        height: 160.0,
        child: Card(
          color: const Color.fromARGB(224, 62, 62, 62),
          elevation: 2.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0)
          ),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Image.asset("assets/$pictureLink.png", width: 64.0),
                  const SizedBox(height: 10.0),
                  Text(pictureName, style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0
                  )),
                  const SizedBox(height: 5.0),
                  const Text("2 Items", style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w100
                  ))
                ],
              ),
            )
          )
        )
      )
    );
  }
}

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Screen'),
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.menu, color: Colors.white, size: 50.0,),
                  Image.asset("assets/driver.png", width: 50.0,)
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(18.0),
              child: Text(
                "Dashboard options",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.start,
              )
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(
                child: Wrap( 
                  spacing: 20.0,
                  runSpacing: 20.0,
                  children: const [
                    CustomSizedBox(
                      pictureLink: "diet",
                      pictureName: "Food",
                    ),
                    CustomSizedBox(
                      pictureLink: "customer-service",
                      pictureName: "Food",
                    ),
                    CustomSizedBox(
                      pictureLink: "hospital-building",
                      pictureName: "Food",
                    ),
                    CustomSizedBox(
                      pictureLink: "picture",
                      pictureName: "Food",
                    ),
                  ],
                )
              )
            )
          ],
        ),
      )
    );
  }
}

class SecondDashboard extends StatelessWidget {
  const SecondDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(18.0),
              child: Text(
                "Dashboard options",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold
                ),
                textAlign: TextAlign.start,
              )
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Center(
                child: Wrap( 
                  spacing: 20.0,
                  runSpacing: 20.0,
                  children: [
                    SizedBox(
                      width: 160.0,
                      height: 160.0,
                      child: Card(
                        color: const Color.fromARGB(224, 62, 62, 62),
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset("assets/diet.png", width: 64.0),
                                const SizedBox(height: 10.0),
                                const Text("Food", style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0
                                )),
                                const SizedBox(height: 5.0),
                                const Text("2 Items", style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w100
                                ))
                              ],
                            ),
                          )
                        )
                      )
                    ),
                    SizedBox(
                      width: 160.0,
                      height: 160.0,
                      child: Card(
                        color: const Color.fromARGB(224, 62, 62, 62),
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset("assets/diet.png", width: 64.0),
                                const SizedBox(height: 10.0),
                                const Text("Food", style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0
                                )),
                                const SizedBox(height: 5.0),
                                const Text("2 Items", style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w100
                                ))
                              ],
                            ),
                          )
                        )
                      )
                    ),
                    SizedBox(
                      width: 160.0,
                      height: 160.0,
                      child: Card(
                        color: const Color.fromARGB(224, 62, 62, 62),
                        elevation: 2.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Image.asset("assets/diet.png", width: 64.0),
                                const SizedBox(height: 10.0),
                                const Text("Food", style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0
                                )),
                                const SizedBox(height: 5.0),
                                const Text("2 Items", style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w100
                                ))
                              ],
                            ),
                          )
                        )
                      )
                    )
                  ],
                )
              )
            )
          ],
        ),
      )
    );
  }
}