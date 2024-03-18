import 'package:flutter/material.dart';
import 'package:money_formatter/money_formatter.dart';
import 'package:sali_hepeng/pin_page.dart';
import 'package:sali_hepeng/theme/theme.dart';

class SubmitPinjaman extends StatefulWidget {
  const SubmitPinjaman({super.key});

  @override
  State<SubmitPinjaman> createState() => SubmitPinjamanState();
}

class SubmitPinjamanState extends State<SubmitPinjaman> {
  double _moneySliderValue = 600000;
  double _daySliderValue = 30;

  double CostValue() {
    double interest = _moneySliderValue * 35 / 100;

    if (_daySliderValue == 30) {
      return interest + (_moneySliderValue * 10 / 100);
    } else if (_daySliderValue == 90) {
      return interest + (_moneySliderValue * 15 / 100);
    } else if (_daySliderValue == 150) {
      return interest + (_moneySliderValue * 20 / 100);
    } else {
      return interest; // Handle the default case
    }
  }

  @override
  Widget build(BuildContext context) {
    String dayValue = _daySliderValue.toStringAsFixed(0);
    MoneyFormatter loan = MoneyFormatter(
      amount: _moneySliderValue,
      settings: MoneyFormatterSettings(
          symbol: 'Rp.',
          thousandSeparator: '.',
          decimalSeparator: ',',
          symbolAndNumberSeparator: ' ',
          fractionDigits: 0,
          compactFormatType: CompactFormatType.short),
    );
    MoneyFormatter totalCost = MoneyFormatter(
      amount: _moneySliderValue + CostValue(),
      settings: MoneyFormatterSettings(
          symbol: 'Rp.',
          thousandSeparator: '.',
          decimalSeparator: ',',
          symbolAndNumberSeparator: ' ',
          fractionDigits: 0,
          compactFormatType: CompactFormatType.short),
    );
    MoneyFormatter cost = MoneyFormatter(
      amount: CostValue(),
      settings: MoneyFormatterSettings(
          symbol: 'Rp.',
          thousandSeparator: '.',
          decimalSeparator: ',',
          symbolAndNumberSeparator: ' ',
          fractionDigits: 0,
          compactFormatType: CompactFormatType.short),
    );
    MoneyFormatterOutput fo = loan.output;
    MoneyFormatterOutput to = totalCost.output;
    MoneyFormatterOutput co = cost.output;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 230, 243, 255),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'PinjamDuit',
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                fontFamily: 'DMSans',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
        ),
        backgroundColor: const Color.fromARGB(255, 230, 243, 255),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 25, bottom: 15),
            child: Row(
              children: [
                Image.asset('assets/images/icon/ic_money.png'),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Tentukan Nominal Pinjaman',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 18,
                        fontFamily: 'DMSans',
                      ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              image: const DecorationImage(
                image: AssetImage('assets/images/bg_card.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  fo.symbolOnLeft,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'DMSans',
                      ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: myTheme.sliderTheme.activeTickMarkColor,
                      inactiveTrackColor: myTheme.sliderTheme.inactiveTrackColor,
                      trackShape: const RoundedRectSliderTrackShape(),
                      thumbColor: myTheme.sliderTheme.thumbColor,
                      thumbShape: myTheme.sliderTheme.thumbShape,
                      overlayColor: myTheme.sliderTheme.overlayColor,
                      overlayShape: myTheme.sliderTheme.overlayShape,
                      showValueIndicator: ShowValueIndicator.never,
                    ),
                    child: Slider(
                      value: _moneySliderValue,
                      min: 600000,
                      max: 1000000,
                      divisions: 4,
                      onChanged: (double value) {
                        setState(() {
                          _moneySliderValue = value;
                        });
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Rp. 600.000',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Colors.white,
                              fontFamily: 'DMSans',
                            ),
                      ),
                      Text(
                        'Rp. 1.000.000',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Colors.white,
                              fontFamily: 'DMSans',
                            ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            padding: const EdgeInsets.only(left: 25, bottom: 15),
            child: Row(
              children: [
                Image.asset('assets/images/icon/ic_calendar.png'),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'Tentukan Tenor Pinjaman',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontSize: 18,
                        fontFamily: 'DMSans',
                      ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 25),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              image: const DecorationImage(
                image: AssetImage('assets/images/bg_card.png'),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Text(
                  '$dayValue Hari',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: 'DMSans',
                      ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: myTheme.sliderTheme.activeTickMarkColor,
                      inactiveTrackColor: myTheme.sliderTheme.inactiveTrackColor,
                      trackShape: const RoundedRectSliderTrackShape(),
                      thumbColor: myTheme.sliderTheme.thumbColor,
                      thumbShape: myTheme.sliderTheme.thumbShape,
                      overlayColor: myTheme.sliderTheme.overlayColor,
                      overlayShape: myTheme.sliderTheme.overlayShape,
                      showValueIndicator: ShowValueIndicator.never,
                    ),
                    child: Slider(
                      value: _daySliderValue,
                      min: 30,
                      max: 150,
                      divisions: 2,
                      onChanged: (double value) {
                        setState(() {
                          _daySliderValue = value;
                        });
                      },
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '30 Hari',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Colors.white,
                              fontFamily: 'DMSans',
                            ),
                      ),
                      Text(
                        '150 Hari',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Colors.white,
                              fontFamily: 'DMSans',
                            ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          const Spacer(),
          Container(
            height: 300,
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Image.asset('assets/images/icon/ic_simulasi.png'),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Simulasi Pinjaman',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'DMSans'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Nominal Pinjaman',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontFamily: 'DMSans',
                          color: Color.fromARGB(255, 176, 176, 176)),
                    ),
                    Text(
                      fo.symbolOnLeft,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontFamily: 'DMSans',
                          ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Tenor',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontFamily: 'DMSans',
                          color: Color.fromARGB(255, 176, 176, 176)),
                    ),
                    Text(
                      '$dayValue Hari',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontFamily: 'DMSans',
                          ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Biaya (Sudah termasuk PPN)',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontFamily: 'DMSans',
                          color: Color.fromARGB(255, 176, 176, 176)),
                    ),
                    Text(
                      co.symbolOnLeft,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontFamily: 'DMSans',
                          ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  color: Color.fromARGB(255, 230, 243, 255),
                  height: 1,
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Pembayaran',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontFamily: 'DMSans',
                          color: Color.fromARGB(255, 176, 176, 176)),
                    ),
                    Text(
                      to.symbolOnLeft,
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontFamily: 'DMSans',
                          ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: const Color.fromARGB(255, 0, 135, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      minimumSize: const Size(double.infinity, 60)),
                  onPressed: () {
                    Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PinEntryScreen()),
                        );
                  },
                  child: const Text(
                    'Ajukan Pinjaman',
                    style: TextStyle(fontSize: 16, fontFamily: 'DMSans'),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
