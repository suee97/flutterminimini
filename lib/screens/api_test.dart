import 'package:flutter/material.dart';
import 'package:flutterminimini/notifier/api_test_notifier.dart';
import 'package:provider/provider.dart';

class ApiTestScreen extends StatelessWidget {
  const ApiTestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ApiTestNotifier>(
      builder: (context, apiTestNotifier, child) {
        String temp = apiTestNotifier.getApiRes();

        return Scaffold(
          appBar: AppBar(
            title: Text("Api Test"),
          ),
          body: Column(
            children: [
              Text(temp),
              TextButton(
                  onPressed: () => {
                    apiTestNotifier.fetch()
                  },
                  child: Text("Api 호출"))
            ],
          ),
        );
      },
    );
  }
}
