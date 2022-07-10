import 'package:daily_ui_challenge/widget/stroke_text.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color secondaryColor = const Color.fromARGB(234, 41, 41, 41);

    return Scaffold(
      body: Stack(
        children: [
          const Image(
              image: AssetImage('assets/front-wig.jpg'),
              height: 500,
              fit: BoxFit.fitHeight),
          SafeArea(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.only(left: 5),
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    color: Colors.black12),
                child: const Center(
                    child: Icon(Icons.arrow_back_ios, color: Colors.white)),
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    StrokeText('Bold.',
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        strokeColor: Colors.black,
                        strokeWidth: 2),
                    SizedBox(height: 10),
                    StrokeText('Bright.',
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        strokeColor: Colors.black,
                        strokeWidth: 2),
                    SizedBox(height: 10),
                    StrokeText('Beautiful.',
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        strokeColor: Colors.black,
                        strokeWidth: 2),
                  ],
                ),
              )),
              Container(
                padding: const EdgeInsets.all(25),
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(23),
                        topRight: Radius.circular(23))),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextField(
                        textInputAction: TextInputAction.next,
                        textCapitalization: TextCapitalization.words,
                        style: const TextStyle(fontSize: 18),
                        decoration: InputDecoration(
                          labelText: 'Email',
                          icon: const Icon(Icons.account_circle_outlined),
                          focusColor: Theme.of(context).primaryColor,
                        ),
                      ),
                      const SizedBox(height: 10),
                      const TextField(
                        textInputAction: TextInputAction.done,
                        textCapitalization: TextCapitalization.words,
                        style: TextStyle(fontSize: 18),
                        decoration: InputDecoration(
                          labelText: 'Password',
                          icon: Icon(Icons.lock),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          Checkbox(value: false, onChanged: (value) {}),
                          Text(
                            'Remember me',
                            style:
                                TextStyle(color: secondaryColor, fontSize: 15),
                          ),
                          const Spacer(
                            flex: 1,
                          ),
                          Text(
                            'Forgot password?',
                            style:
                                TextStyle(color: secondaryColor, fontSize: 15),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.circular(30)),
                        child: const Center(
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Center(
                        child: RichText(
                            text: TextSpan(
                                text: 'Don\'t have an account? ',
                                style: TextStyle(
                                    color: secondaryColor, fontSize: 15),
                                children: [
                              TextSpan(
                                  text: 'Sign up',
                                  style: TextStyle(
                                      color: Theme.of(context).primaryColor))
                            ])),
                      )
                    ]),
              )
            ],
          ))
        ],
      ),
    );
  }
}
