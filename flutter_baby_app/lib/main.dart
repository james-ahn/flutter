import 'package:flutter/material.dart';

void main() {
  // runApp은 플러터 최상위 함수
  runApp(const MyApp()); // 프로그램 실행시 myapp 부터 실행하겠다!
}

// StatelessWidget은 변화지 않는 화면을 작업할 때 사용.
// 변화는 화면을 작업 하고싶을 경우에는 StatefulWidget을 사용.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  // MaterialApp 앱으로서 기능을 할 수 있도록 도와주는 뼈대
  @override
  Widget build(BuildContext context) {
    return MaterialApp( // MaterialApp 디자인 테마를 사용.
      title: 'SeWooApp', // 앱 이름
      debugShowCheckedModeBanner: false, // 타이틀 바 우측 띠 제거.
      theme: ThemeData( // 앱의 기본적인 테마를 지원
        primarySwatch: Colors.blue, // primarySwatch 기본적인 앱의 색상을 지정.
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'), // 앱이 실행될 때 표시할 화면의 함수를 호출.
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  // Scaffold : 구성된 앱에서 디자인적인 부분을 도와주는 뼈대
  // 화면구성
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar( // AppBar 위젯을 가녀온다.
        title: Text(widget.title), // 타이틀 이름 지정.
        centerTitle: true, //타이틀 이름 가운데 정렬
        elevation: 0.0, // 그림자 효과 제어
        toolbarHeight: 70, // appBar 높이
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)), // 좌측 아이콘 버튼
      ),
      // 앱의 body 부분
      body: Center( // Center 위젯을 가져온다.
        child: ElevatedButton(child: Text("현재숫자1 : $_counter"),
          onPressed: _incrementCounter, // 클릭이벤트 
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
