import 'package:flutter/material.dart';
import 'package:flutterminimini/notifier/api_test_notifier.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:provider/provider.dart';

class ApiTestScreen extends StatelessWidget {
  const ApiTestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ApiTestNotifier>(
      builder: (context, apiTestNotifier, child) {
        String temp = apiTestNotifier.getApiRes();
        apiTestNotifier.fetch();

        return Scaffold(
          appBar: AppBar(
            title: const Text("Api Test"),
          ),
          body: Column(
            children: [
              Center(
                  child: temp.isEmpty
                      ? Center(
                          child: LoadingAnimationWidget.waveDots(color: Colors.red, size: 80),
                        )
                      : Text(
                          temp,
                          style: const TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w700),
                        )),
              TextButton(
                  onPressed: () => {apiTestNotifier.clear()},
                  child: const Text(
                    "Clear",
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 28),
                  )),
            ],
          ),
        );
      },
    );
  }
}
