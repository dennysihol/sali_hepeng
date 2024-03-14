import 'package:flutter/material.dart';
import 'package:sali_hepeng/otp_page.dart';
import 'package:sali_hepeng/theme/theme.dart';

class Kebijakan extends StatefulWidget {
  const Kebijakan({super.key});

  @override
  State<Kebijakan> createState() => _KebijakanState();
}

class _KebijakanState extends State<Kebijakan> {
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
      duration: const Duration(milliseconds: 400),
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
          titleTextStyle: myTheme.appBarTheme.titleTextStyle),
      body: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.all(20),
            child: Text(
              'Kebijakan Privasi',
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              controller: _scrollController,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(fontSize: 14),
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
                                  builder: (context) => const OtpPage()),
                            );
                          },
                          child: Text(
                            'Setuju',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                    color: Colors.white),
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
