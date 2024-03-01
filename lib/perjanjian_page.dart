import 'package:flutter/material.dart';
import 'package:sali_hepeng/verifikasi_page.dart';

class Perjanjian extends StatefulWidget {
  const Perjanjian({Key? key}) : super(key: key);

  @override
   _PerjanjianState createState() => _PerjanjianState();
}

class _PerjanjianState extends State<Perjanjian> {
  final ScrollController _scrollController = ScrollController();
  bool _isFabVisible = true;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.position.pixels >=
            _scrollController.position.maxScrollExtent &&
        _isFabVisible) {
      setState(() {
        _isFabVisible = false;
      });
    } else if (_scrollController.position.pixels <
            _scrollController.position.maxScrollExtent &&
        !_isFabVisible) {
      setState(() {
        _isFabVisible = true;
      });
    }
  }

  void _scrollToBottom() {
    _scrollController.animateTo(
      _scrollController.position.maxScrollExtent,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text("Daftar / Masuk"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'Perjanjian Pengguna',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Padding(
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
                  const Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'Kebijakan Privasi',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Padding(
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
                  Container(
                    padding: const EdgeInsets.only(bottom: 20, top: 10.0),
                    color: Colors.grey[200],
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor:
                                const Color.fromARGB(255, 0, 135, 255),
                            disabledBackgroundColor:
                                const Color.fromARGB(255, 230, 243, 255),
                            disabledForegroundColor:
                                const Color.fromARGB(255, 176, 218, 255),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            minimumSize: const Size(350, 55),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const VerifikasiPage()),
                            );
                          },
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
            ),
          ),
        ],
      ),
      floatingActionButton: _isFabVisible
          ? Padding(
              padding: const EdgeInsets.only(bottom: 70.0), 
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Opacity( 
                  opacity: 0.7, 
                  child: FloatingActionButton(
                    onPressed: _scrollToBottom,
                    child: const Icon(Icons.arrow_downward),
                  ),
                ),
              ),
            )
          : null,
    );
  }

}
