import 'package:flutter/widgets.dart';
import 'package:flutter_test_module/main.dart';

class SecondPage extends StatelessWidget {
  final String params;

  const SecondPage({Key? key, this.params = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: const Text('第二个页面'),
      onTap: (){
        var result = 'Ack from secondPage';
        router.popRoute(params: result);
      });
  }
}