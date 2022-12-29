import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CodeVerificationScreen extends StatelessWidget {
  const CodeVerificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(
                    height: 70,
                  ),
                  Text(
                    'Code',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        fontFamily: 'BalsamiqSans'),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Verification',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        fontFamily: 'BalsamiqSans'),
                  ),
                  SizedBox(
                    height: 130,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 64,
                    width: 68,
                    child: TextFormField(
                      onSaved: (pin2) {},
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nearestScope;
                        }
                      },
                      decoration: const InputDecoration(
                        hintText: '0',
                      ),
                      style: Theme.of(context).textTheme.headline6,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 64,
                    width: 68,
                    child: TextFormField(
                      onSaved: (pin2) {},
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nearestScope;
                        }
                      },
                      decoration: const InputDecoration(
                        hintText: '0',
                      ),
                      style: Theme.of(context).textTheme.headline6,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 64,
                    width: 68,
                    child: TextFormField(
                      onSaved: (pin2) {},
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nearestScope;
                        }
                      },
                      decoration: const InputDecoration(
                        hintText: '0',
                      ),
                      style: Theme.of(context).textTheme.headline6,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 64,
                    width: 68,
                    child: TextFormField(
                      onSaved: (pin2) {},
                      onChanged: (value) {
                        if (value.length == 1) {
                          FocusScope.of(context).nearestScope;
                        }
                      },
                      decoration: const InputDecoration(
                        hintText: '0',
                      ),
                      style: Theme.of(context).textTheme.headline6,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[300],
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Verification',
                    style: TextStyle(fontFamily: 'BalsamiqSans'),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Didn\'t receive the code?',
                    style: TextStyle(fontFamily: 'BalsamiqSans'),
                  ),
                  const SizedBox(width: 5,),
                  GestureDetector(
                    child: const Text(
                      'Re-send(24)',
                      style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'BalsamiqSans'),
                    ),
                    onTap: () {},
                  ),
                ],
              ),
              const SizedBox(
                height: 300,
              ),
              const Align(
                child: Text(
                  'Need help?',
                  style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'BalsamiqSans'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
