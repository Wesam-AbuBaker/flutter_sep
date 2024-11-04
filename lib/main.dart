import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // first char small is method, bigger is class
}

class MyApp extends StatelessWidget {
  // Widget is any UI see of user on app(أي شيء يظهر للمستخدم)
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // مرة وحدة بستخدمه في المشروع بالكامل
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false, // إخفاء علامة Debug
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          appBarTheme: AppBarTheme(backgroundColor: Colors.lightBlue)),
      home:
          const MyHomePage(title: 'Flutter Demo Home Page'), // من هنا ابدأ page
    );
  }
}

class MyHomePage extends StatefulWidget {
  // main class, use to call and parameter
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // _ عندما تكون أول الاسم يعني private class, second class use to Build of UI.
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // تقسم الصفحة لأجزاء وهم
      /*
    appBar
    body
    floatingActionButton
    bottomNavigationBar
    */
      appBar: AppBar(
        // backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        foregroundColor: Colors.white,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),
          IconButton(onPressed: () {}, icon: Icon(Icons.account_circle)),
          Text("Hello")
        ], // this list of Widget, right-side
        title: Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: Container(height: 60, color: Colors.red),
    );
  }
}

// StatelessWidget :   صفحة ثابتة لا يوجد فيها متغير
// StatefulWidget : صفحة تفاعلية متحركة ديناميكية هناك تفاعل
// بستخدم الأولى من أجل تخفيف استهلاك الموارد ، مثلاً صفحات السياسة والخصوصية
// الثانية مثلاً لآلة حاسبة
// StatefulWidget تحتاج إلى two class على عكس الأولى لا تحتاج إلا ل one class
