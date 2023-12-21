import 'package:flutter/material.dart';

class ExchangePage extends StatefulWidget {
  const ExchangePage({super.key});

  @override
  State<ExchangePage> createState() => _ExchangePageState();
}

class _ExchangePageState extends State<ExchangePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff202020),
      appBar: AppBar(
          backgroundColor: const Color(0xff202020),
          title: const Row(
            children: [
              Text(
                'Exchange',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 34,
                    fontWeight: FontWeight.w800),
              ),
            ],
          )),
      body: SingleChildScrollView(
        child: Column(children: [
          const CoinRow(),
          Container(
            color: const Color(0xff757575),
            child: const Padding(
              padding: EdgeInsets.all(4.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Price'),
                    Text('Amount'),
                    Text('BTC'),
                    Text('Price'),
                  ]),
            ),
          ),
          const CoinAmount(),
          const CoinAmount(),
          const CoinAmount(),
          const CoinAmount(),
          const CoinAmount(),
          const CoinAmount(),
          const CoinAmount(),
          const OrderAndChartButton(),
          const BuyAndSellAndLimit(),
          const AddCoinPart(),
          const AddCoinPart(),
          const Percents_part(),
          const TotalWidget(),
          const BuyEthButton()
        ]),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xff424242),
        ),
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Image.asset('assets/images/home.png'),
            Image.asset('assets/images/markets.png'),
            //Image.asset('assets/images/middle.png'),
            Image.asset('assets/images/features.png'),
            Image.asset('assets/images/wallets.png')
          ]),
        ),
      ),
    );
  }
}

class BuyEthButton extends StatelessWidget {
  const BuyEthButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
              backgroundColor: const MaterialStatePropertyAll(
                  Color.fromARGB(255, 111, 211, 156)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)))),
          child: const Text(
            'BUY ETH',
            style: TextStyle(
                color: Colors.black, fontSize: 17, fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }
}

class TotalWidget extends StatelessWidget {
  const TotalWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Total',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                'Available',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w300),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '0.00 USDT',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              ),
              Text(
                '1.5032 USDT',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w300),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class Percents_part extends StatelessWidget {
  const Percents_part({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Flexible(
            flex: 1,
            child: TextButton(
                style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll(
                        Color.fromARGB(255, 81, 81, 81)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ))),
                onPressed: () {},
                child: const Text(
                  '25%',
                  style: TextStyle(color: Colors.white),
                )),
          ),
          Flexible(
            flex: 1,
            child: TextButton(
                style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll(
                        Color.fromARGB(255, 81, 81, 81)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ))),
                onPressed: () {},
                child: const Text(
                  '50%',
                  style: TextStyle(color: Colors.white),
                )),
          ),
          Flexible(
            flex: 1,
            child: TextButton(
                style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll(
                        Color.fromARGB(255, 81, 81, 81)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ))),
                onPressed: () {},
                child: const Text(
                  '75%',
                  style: TextStyle(color: Colors.white),
                )),
          ),
          Flexible(
            flex: 1,
            child: TextButton(
                style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll(
                        Color.fromARGB(255, 81, 81, 81)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ))),
                onPressed: () {},
                child: const Text(
                  '100%',
                  style: TextStyle(color: Colors.white),
                )),
          ),
        ],
      ),
    );
  }
}

class AddCoinPart extends StatelessWidget {
  const AddCoinPart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border:
                Border.all(color: const Color.fromARGB(255, 184, 184, 184))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      )),
                      backgroundColor: const MaterialStatePropertyAll(
                          Color.fromARGB(243, 129, 130, 130))),
                  color: Colors.white,
                  onPressed: () {},
                  icon: const Icon(Icons.remove_sharp)),
            ),
            const Text(
              '1888,43 USDT',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      )),
                      backgroundColor: const MaterialStatePropertyAll(
                          Color.fromARGB(243, 129, 130, 130))),
                  color: Colors.white,
                  onPressed: () {},
                  icon: const Icon(Icons.add)),
            ),
          ],
        ),
      ),
    );
  }
}

class BuyAndSellAndLimit extends StatelessWidget {
  const BuyAndSellAndLimit({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Flexible(flex: 2, child: BuyAndSellButton()),
        Flexible(
          flex: 1,
          child: Row(
            children: [
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Limit',
                    style: TextStyle(color: Colors.white),
                  )),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_drop_down)),
            ],
          ),
        )
      ],
    );
  }
}

class BuyAndSellButton extends StatelessWidget {
  const BuyAndSellButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 81, 81, 81),
            borderRadius: BorderRadius.circular(3)),
        // color: const Color.fromARGB(255, 81, 81, 81),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    )),
                    backgroundColor: const MaterialStatePropertyAll(
                        Color.fromARGB(243, 84, 240, 162))),
                onPressed: () {},
                child: const Text(
                  'Buy',
                  style: TextStyle(color: Colors.black),
                )),
            TextButton(
                onPressed: () {},
                child: const Text(
                  'Sell',
                  style: TextStyle(color: Color.fromARGB(255, 251, 251, 251)),
                ))
          ],
        ),
      ),
    );
  }
}

class OrderAndChartButton extends StatelessWidget {
  const OrderAndChartButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 2, 10, 22),
            borderRadius: BorderRadius.circular(5)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Flexible(
              flex: 1,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll(
                        Color.fromARGB(255, 85, 86, 87)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ))),
                onPressed: () {},
                child: const Text(
                  'Orderbook',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: const MaterialStatePropertyAll(
                        Color.fromARGB(255, 3, 9, 15)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                            side: const BorderSide(color: Colors.black)))),
                onPressed: () {},
                child: const Text(
                  'Chart',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CoinAmount extends StatelessWidget {
  const CoinAmount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Padding(
        padding: EdgeInsets.all(4.0),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text('2332.45',
              style: TextStyle(
                color: Color(0xff07F8B5),
              )),
          Text('0.4243',
              style: TextStyle(
                color: Colors.white,
              )),
          Text('0.654',
              style: TextStyle(
                color: Colors.white,
              )),
          Text('654654.65',
              style: TextStyle(
                color: Color(0xffFF9B9B),
              )),
        ]),
      ),
    );
  }
}

class CoinRow extends StatelessWidget {
  const CoinRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('assets/images/bitcoin_icon.png'),
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'BTC',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w800),
                      ),
                      Text(
                        '/USDT',
                        style: TextStyle(
                            color: Colors.white38, fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                  Text(style: TextStyle(color: Colors.white), 'Vol 2.8B')
                ],
              ),
              IconButton(
                  onPressed: () {}, icon: const Icon(Icons.arrow_drop_down)),
            ],
          ),
          Image.asset('assets/images/dividerr.png'),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '49,220.60',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                '+3.75%',
                style: TextStyle(
                    color: Color(0xff07F8B5),
                    fontSize: 15,
                    fontWeight: FontWeight.w700),
              )
            ],
          )
        ],
      ),
    );
  }
}
