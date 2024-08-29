import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        centerTitle: true,
        titleTextStyle: const TextStyle(
          color: Color.fromARGB(255, 0, 0, 0),
          fontSize: 20,
        ),
        actions: [
          const Icon(Icons.help, size: 20),
          const SizedBox(
            width: 20,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.only(right: 8, left: 8),
                  backgroundColor: Colors.white,
                  elevation: 0,
                  side: BorderSide(
                      color: const Color.fromARGB(255, 176, 176, 176),
                      width: 0.5),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20))),
              onPressed: () {},
              child: const Row(
                children: [
                  Icon(
                    Icons.language,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'English',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              )),
          const SizedBox(
            width: 20,
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 10,
        ),
        child: Container(
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              const Text(
                'Welcome TO Gojek!',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const Text(
                'Enter or create an account in a few easy steps.',
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Phone Number *",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: SizedBox(
                      width: 70,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          padding: EdgeInsets.only(left: 6, right: 2),
                        ),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Image.asset(
                              'lib/assets/images/fr.png',
                              width: 20,
                              height: 20,
                            ),
                            const SizedBox(width: 8),
                            const Text(
                              '+33',
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.only(right: 18.0, left: 8),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: 'Enter your phone number',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                    top: 30, left: 10, right: 10, bottom: 30),
                child: SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                      ),
                      child: const Text(
                        "Continue",
                        style: TextStyle(
                            fontSize: 19,
                            color: Color.fromARGB(255, 128, 128, 128),
                            fontWeight: FontWeight.bold),
                      )),
                ),
              ),
              RichText(
                text: const TextSpan(
                    text: "I agree to Gojek's ",
                    style: TextStyle(color: Colors.black),
                    children: [
                      TextSpan(
                          text: "Terms of Service ",
                          style: TextStyle(
                              color: Colors.green,
                              decoration: TextDecoration.underline)),
                      TextSpan(
                          text: " & ",
                          style: TextStyle(
                            color: Colors.black,
                          )),
                      TextSpan(
                          text: " Privacy Policy. ",
                          style: TextStyle(
                              color: Colors.green,
                              decoration: TextDecoration.underline))
                    ]),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: Colors.white,
                    side: BorderSide(color: Color.fromARGB(255, 211, 210, 210)),
                  ),
                  child: const Text(
                    "Issue with number ?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  )),
              const SizedBox(
                height: 50,
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'from',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'lib/assets/images/goto.png',
                    width: 50,
                    height: 50,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
