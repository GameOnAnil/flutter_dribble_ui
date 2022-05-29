import 'package:flutter/material.dart';

import '../../utils/colors.dart';

class BankSecondPage extends StatelessWidget {
  const BankSecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.bankPrimary,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: MyColors.bankPrimary,
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SecondPageHeader(),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Recent Transaction",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 400,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                children: const [
                  BankListTile(
                    title: "Salary",
                    description: "Belong Interation",
                    price: "+\$2010",
                    image: "assets/suitcase.png",
                  ),
                  BankListTile(
                    title: "Paypal",
                    description: "Webtech",
                    price: "+\$12,000",
                    image: "assets/paypal.png",
                  ),
                  BankListTile(
                    title: "Car Repair",
                    description: "Car Engine Repair",
                    price: "+\$233,000",
                    image: "assets/wrench.png",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class BankListTile extends StatelessWidget {
  final String image;
  final String description;
  final String title;
  final String price;
  const BankListTile({
    Key? key,
    required this.image,
    required this.description,
    required this.title,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35),
            color: MyColors.bankSecondary),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(children: [
                const SizedBox(
                  width: 15,
                ),
                Image.asset(
                  image,
                  width: 45,
                  height: 45,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 15,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      description,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w300),
                    ),
                  ],
                )
              ]),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Text(
                  price,
                  style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SecondPageHeader extends StatelessWidget {
  const SecondPageHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Your Card",
            style: TextStyle(
                color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "You have 3 active card",
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w300),
          ),
          const SizedBox(
            height: 15,
          ),
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width,
              color: MyColors.bankSecondary,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/chip.png",
                            width: 35,
                            height: 35,
                            color: Colors.white,
                            fit: BoxFit.cover),
                        Image.asset(
                          "assets/visa.png",
                          width: 70,
                          height: 50,
                          color: Colors.white,
                          fit: BoxFit.cover,
                        )
                      ],
                    ),
                    const Text(
                      "1233 5543 6431 4123",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              _buildDoubleText("Card Holder", "Ghulam"),
                              const SizedBox(
                                width: 10,
                              ),
                              _buildDoubleText("Expiry Date", "24/2000"),
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: 78,
                                height: 60,
                                child: Stack(
                                  children: [
                                    Positioned(
                                      right: 0,
                                      child: CircleAvatar(
                                        radius: 25,
                                        backgroundColor:
                                            Colors.yellow.withOpacity(0.85),
                                      ),
                                    ),
                                    Positioned(
                                      left: 0,
                                      child: CircleAvatar(
                                        radius: 25,
                                        backgroundColor:
                                            Colors.red.withOpacity(0.85),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Text(
                                "Master Card",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Column _buildDoubleText(String title, String value) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.w300),
        ),
        Text(
          value,
          style: const TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
