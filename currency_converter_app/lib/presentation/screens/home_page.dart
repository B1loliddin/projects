import 'package:currency_converter_app/core/apis.dart';
import 'package:currency_converter_app/core/service_locator.dart';
import 'package:currency_converter_app/domain/models/currency/currency.dart';
import 'package:currency_converter_app/services/constants/fonts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController firstController = TextEditingController();
  TextEditingController secondController = TextEditingController();
  List<Currency> currencies = [];
  List<String> currenciesCcy = [];
  String firstCcy = '';
  String secondCcy = '';
  String exchangeRate = '';
  double firstCcyRate = 0;
  double secondCcyRate = 0;
  String firstFlag = '';
  String secondFlag = '';

  @override
  void initState() {
    super.initState();
    getAllCurrencies();

    firstController.addListener(() {
      if (firstController.text.isNotEmpty) {
        secondController.text =
            ((double.parse(firstController.text) * firstCcyRate) /
                    secondCcyRate)
                .toString();
      } else {
        secondController.text = '';
      }
      setState(() {});
    });
  }

  void getAllCurrencies() async {
    currencies = await repository.fetchAllCurrencies();
    currenciesCcy = currencies.map((item) => item.ccy).toList();
    firstCcy = currenciesCcy[0];
    secondCcy = currenciesCcy[1];
    firstCcyRate = double.parse(currencies[0].rate);
    secondCcyRate = double.parse(currencies[1].rate);
    exchangeRate = '1 $firstCcy = ${firstCcyRate / secondCcyRate} $secondCcy';
    firstFlag =
        'https://${Api.baseUrlFlag}/w640/${firstCcy.substring(0, 2).toLowerCase()}.png';
    secondFlag =
        'https://${Api.baseUrlFlag}/w640/${secondCcy.substring(0, 2).toLowerCase()}.png';
    setState(() {});
  }

  void changeCurrency() {
    String tempCcy = firstCcy;
    firstCcy = secondCcy;
    secondCcy = tempCcy;
    double tempRate = firstCcyRate;
    firstCcyRate = secondCcyRate;
    secondCcyRate = tempRate;
    exchangeRate = '1 $firstCcy = ${firstCcyRate / secondCcyRate} $secondCcy';

    if (firstController.text.isNotEmpty) {
      secondController.text =
          ((double.parse(firstController.text) * firstCcyRate) / secondCcyRate)
              .toString();
    } else {
      secondController.text = '';
    }
    firstFlag =
        'https://${Api.baseUrlFlag}/w640/${firstCcy.substring(0, 2).toLowerCase()}.png';
    secondFlag =
        'https://${Api.baseUrlFlag}/w640/${secondCcy.substring(0, 2).toLowerCase()}.png';
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F6F6),
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: <Widget>[
          /// background circle
          const BackgroundCircle(),

          /// all items
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(height: 70),

                  /// header text
                  const HeaderText(),
                  const SizedBox(height: 10),

                  /// sub header text
                  const SubHeaderText(),
                  const SizedBox(height: 80),
                  DecoratedBox(
                    decoration: CustomFonts.mainContainerStyle(),
                    child: SizedBox(
                      width: MediaQuery.sizeOf(context).width,
                      height: 280,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Amount',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                    color: Color(0xFF989898),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  children: <Widget>[
                                    /// flag
                                    ClipOval(
                                      child: Image(
                                        image: NetworkImage(firstFlag),
                                        width: 50,
                                        height: 50,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const SizedBox(width: 18),

                                    /// dropdown menu
                                    DropdownButton<String>(
                                      value: firstCcy,
                                      underline: const SizedBox.shrink(),
                                      icon:
                                          const Icon(Icons.keyboard_arrow_down),
                                      items: currenciesCcy.map((String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                      onChanged: (String? value) {
                                        firstCcy = value!;
                                        exchangeRate =
                                            '1 $firstCcy = ${firstCcyRate / secondCcyRate} $secondCcy';
                                        firstFlag =
                                            'https://${Api.baseUrlFlag}/w640/${firstCcy.substring(0, 2).toLowerCase()}.png';
                                        setState(() {});
                                      },
                                    ),
                                    const SizedBox(width: 28),

                                    /// text field
                                    Expanded(
                                      child: TextField(
                                        controller: firstController,
                                        textAlign: TextAlign.end,
                                        keyboardType: TextInputType.number,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 18),
                                        inputFormatters: [
                                          FilteringTextInputFormatter(
                                              RegExp(r'[0-9]'),
                                              allow: true),
                                        ],
                                        decoration: CustomFonts
                                            .customTextFieldDecoration(),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            CurrencyChanger(onPressed: changeCurrency),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  'Converted Amount',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 15,
                                    color: Color(0xFF989898),
                                  ),
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  children: <Widget>[
                                    /// flag
                                    ClipOval(
                                      child: Image(
                                        image: NetworkImage(secondFlag),
                                        width: 50,
                                        height: 50,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    const SizedBox(width: 18),

                                    /// dropdown menu
                                    DropdownButton<String>(
                                      value: secondCcy,
                                      underline: const SizedBox.shrink(),
                                      icon:
                                          const Icon(Icons.keyboard_arrow_down),
                                      items: currenciesCcy.map((String value) {
                                        return DropdownMenuItem<String>(
                                          value: value,
                                          child: Text(value),
                                        );
                                      }).toList(),
                                      onChanged: (value) {
                                        secondCcy = value!;
                                        exchangeRate =
                                            '1 $firstCcy = ${firstCcyRate / secondCcyRate} $secondCcy';
                                        secondFlag =
                                            'https://${Api.baseUrlFlag}/w640/${secondCcy.substring(0, 2).toLowerCase()}.png';
                                        setState(() {});
                                      },
                                    ),
                                    const SizedBox(width: 28),

                                    /// text field
                                    Expanded(
                                      child: TextField(
                                        controller: secondController,
                                        readOnly: true,
                                        textAlign: TextAlign.end,
                                        keyboardType: TextInputType.number,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18,
                                        ),
                                        decoration: CustomFonts
                                            .customTextFieldDecoration(),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),

                  /// exchange rate text
                  const ExchangeRateText(),
                  const SizedBox(height: 10),

                  /// exchange rate
                  ExchangeRate(text: exchangeRate),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ExchangeRate extends StatelessWidget {
  final String text;

  const ExchangeRate({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 18,
        color: Colors.black,
      ),
    );
  }
}

class ExchangeRateText extends StatelessWidget {
  const ExchangeRateText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Indicative Exchange Rate',
      style: TextStyle(
        fontWeight: FontWeight.w400,
        fontSize: 16,
        color: Color(0xFFA1A1A1),
      ),
    );
  }
}

class CurrencyChanger extends StatelessWidget {
  final void Function() onPressed;

  const CurrencyChanger({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const Divider(color: Color(0xFFE7E7EE)),
        ClipOval(
          child: ColoredBox(
            color: const Color(0xFF26278D),
            child: SizedBox(
              width: 50,
              height: 50,
              child: MaterialButton(
                onPressed: onPressed,
                child: const Image(
                  image: AssetImage(
                    'assets/icons/ic_change.png',
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class SubHeaderText extends StatelessWidget {
  const SubHeaderText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Check live rates, set rate alerts, receive notifications and more.',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 16,
          color: Color(0xFF808080),
        ),
      ),
    );
  }
}

class HeaderText extends StatelessWidget {
  const HeaderText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Currency Converter',
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 25,
          color: Color(0xFF1F2261),
        ),
      ),
    );
  }
}

class BackgroundCircle extends StatelessWidget {
  const BackgroundCircle({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return ClipOval(
      clipper: BackgroundCircleClipper(),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.black,
          gradient: RadialGradient(
            colors: <Color>[
              const Color(0xFFEAEAFE),
              const Color(0xFFDDF6F3).withOpacity(0),
            ],
          ),
        ),
        child: SizedBox(
          width: size.width * 1.75,
          height: size.height * 0.8,
        ),
      ),
    );
  }
}

class BackgroundCircleClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return Rect.fromLTWH(-(size.width * 0.6), -(size.height * 0.3), 750, 750);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return false;
  }
}
