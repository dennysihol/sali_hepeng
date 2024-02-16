import 'package:flutter/material.dart';
import 'package:sali_hepeng/login_page.dart';


class Perjanjian extends StatefulWidget {

  const Perjanjian ({super.key});

  @override
  _PerjanjianState createState() {
    // TODO: implement createState
    return _PerjanjianState();
  }

}


class _PerjanjianState extends State<Perjanjian> {


  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginForm()),
            );
          },
        ),
        title: const Text("Daftar / Masuk"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: const <Widget>[
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text('Perjanjian Pengguna', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                      'Fusce volutpat feugiat nunc vel aliquet. '
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                      'Fusce volutpat feugiat nunc vel aliquet. '
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                      'Fusce volutpat feugiat nunc vel aliquet. '
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                      'Fusce volutpat feugiat nunc vel aliquet. '
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                      'Fusce volutpat feugiat nunc vel aliquet. '
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                      'Fusce volutpat feugiat nunc vel aliquet. '
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                      'Fusce volutpat feugiat nunc vel aliquet. '
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                      'Fusce volutpat feugiat nunc vel aliquet. '
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                      'Fusce volutpat feugiat nunc vel aliquet. '
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                      'Fusce volutpat feugiat nunc vel aliquet. '
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                      'Fusce volutpat feugiat nunc vel aliquet. '
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                      'Fusce volutpat feugiat nunc vel aliquet. '
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                      'Fusce volutpat feugiat nunc vel aliquet. '
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                      'Fusce volutpat feugiat nunc vel aliquet. '
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                      'Fusce volutpat feugiat nunc vel aliquet. '
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                      'Fusce volutpat feugiat nunc vel aliquet. '
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                      'Fusce volutpat feugiat nunc vel aliquet. '
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                      'Fusce volutpat feugiat nunc vel aliquet. '
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                      'Fusce volutpat feugiat nunc vel aliquet. '
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                      'Fusce volutpat feugiat nunc vel aliquet. '
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                      'Fusce volutpat feugiat nunc vel aliquet. '
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                      'Fusce volutpat feugiat nunc vel aliquet. '
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                      'Fusce volutpat feugiat nunc vel aliquet. '
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                      'Fusce volutpat feugiat nunc vel aliquet. '
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                      'Fusce volutpat feugiat nunc vel aliquet. '
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                      'Fusce volutpat feugiat nunc vel aliquet. '
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                      'Fusce volutpat feugiat nunc vel aliquet. '
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                      'Fusce volutpat feugiat nunc vel aliquet. '
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                      'Fusce volutpat feugiat nunc vel aliquet. '
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                      'Fusce volutpat feugiat nunc vel aliquet. '
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                      'Fusce volutpat feugiat nunc vel aliquet. '

                      // Add more text content as needed
                      ),
                ),
                // Add more text content as needed
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            color: Colors.grey[200],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: const Color.fromARGB(255, 0, 135, 255),
                    disabledBackgroundColor:
                        const Color.fromARGB(255, 230, 243, 255),
                    disabledForegroundColor:
                        const Color.fromARGB(255, 176, 218, 255),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    minimumSize: const Size(150, 40),
                  ),
                  onPressed: null,
                  child: const Text(
                    'Batal',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: const Color.fromARGB(255, 0, 135, 255),
                    disabledBackgroundColor:
                        const Color.fromARGB(255, 230, 243, 255),
                    disabledForegroundColor:
                        const Color.fromARGB(255, 176, 218, 255),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    minimumSize: const Size(150, 40),
                  ),
                  onPressed: null,
                  child: const Text(
                    'Setuju',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
