import 'package:flutter/material.dart';
import 'package:karan_voip/audiocall.dart';
import 'package:karan_voip/videocall.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("VOIP"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(150.0),
            child: Image.network(
              "https://media-exp1.licdn.com/dms/image/C5603AQEtKa-xmG-iMw/profile-displayphoto-shrink_800_800/0/1647024889743?e=1653523200&v=beta&t=8M_ibGI5ljztATPii_i7rTthPDeD3Ip1CMNLQOSmPSQ",
              height: 200.0,
              width: 200.0,
              fit: BoxFit.cover,
            ),
          ),
          Text(
            "Karan Solanki",
            style: Theme.of(context).textTheme.headline3,
          ),
          Text(
            "+918655758533",
            style: Theme.of(context).textTheme.headline6,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => VideoCallScreen()));
                  },
                  icon: Icon(
                    Icons.video_call,
                    size: 44,
                  ),
                  color: Colors.teal,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => AudioScreen()));
                  },
                  icon: Icon(
                    Icons.phone,
                    size: 35,
                  ),
                  color: Colors.teal,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
