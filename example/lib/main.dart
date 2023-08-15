import 'package:flutter/material.dart';
import 'package:art_buttons_kh/art_buttons_kh.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const ButtonListStyleView(),
    );
  }
}

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  _LoginViewState createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();

  String _email = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
                keyboardType: TextInputType.emailAddress,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  return null;
                },
                onSaved: (value) {
                  _email = value!;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(labelText: 'Password'),
                obscureText: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
                onSaved: (value) {
                  _password = value!;
                },
              ),
              SizedBox(height: 32),
              ArtButtonsKh(
                onPressed: _submitForm,
                text: 'Login',
                backgroundColor: Theme.of(context).primaryColor,
              ),
              ArtButtonsKh(
                margin: const EdgeInsets.only(top: 10),
                onPressed: _submitForm,
                text: 'Save',
                backgroundColor: Colors.amber,
              ),
              ArtButtonsKh(
                margin: const EdgeInsets.only(top: 10),
                onPressed: _submitForm,
                text: 'Closed',
                backgroundColor: Colors.redAccent,
              ),
              ArtButtonsKh(
                prefixesIcons: const Icon(Icons.add),
                margin: const EdgeInsets.only(top: 10),
                onPressed: _submitForm,
                text: 'Disabled',
                backgroundColor: Colors.brown,
                suffixesIcons: const Icon(Icons.add),
                isDisable: true,
              ),
              ArtButtonsKh(
                margin: const EdgeInsets.only(top: 10),
                onPressed: _submitForm,
                isCircleButton: true,
                backgroundColor: Color(0xffF23358),
                circleIcon: Padding(
                  padding: const EdgeInsets.all(5),
                  child: Icon(
                    Icons.add,
                    size: 16,
                  ),
                ),
              ),
              ArtButtonsKh(
                margin: const EdgeInsets.only(top: 10),
                onPressed: _submitForm,
                isCircleButton: true,
                isOutlineButton: true,
                backgroundColor: Colors.yellow,
                elevation: 1,
                circleIcon: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Icon(
                    Icons.add,
                    size: 10,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      // TODO: Implement login functionality
    }
  }
}

class ButtonListStyleView extends StatefulWidget {
  const ButtonListStyleView({Key? key}) : super(key: key);

  @override
  State<ButtonListStyleView> createState() => _ButtonListStyleViewState();
}

class _ButtonListStyleViewState extends State<ButtonListStyleView> {
  @override
  Widget build(BuildContext context) {
    var color = Color(0xffF23358);
    return Scaffold(
      appBar: AppBar(
        title: const Text("All ArtButtonsKh List"),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: ArtButtonsKh(onPressed: () {}, text: "Button", backgroundColor: color)),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: ArtButtonsKh(
                  onPressed: () {},
                  text: "Button",
                  backgroundColor: color,
                  radius: 20,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: ArtButtonsKh(
                  onPressed: () {},
                  text: "Button",
                  backgroundColor: color,
                  customizeBorderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: ArtButtonsKh(
                onPressed: () {},
                text: "Button",
                backgroundColor: color,
                prefixesIcons: Icon(Icons.add),
              )),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: ArtButtonsKh(
                  onPressed: () {},
                  text: "Button",
                  backgroundColor: color,
                  radius: 20,
                  prefixesIcons: Icon(Icons.add),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: ArtButtonsKh(
                  onPressed: () {},
                  text: "Button",
                  backgroundColor: color,
                  prefixesIcons: Icon(Icons.add),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: ArtButtonsKh(
                onPressed: () {},
                text: "Button",
                backgroundColor: color,
                suffixesIcons: Icon(Icons.add),
              )),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: ArtButtonsKh(
                  onPressed: () {},
                  text: "Button",
                  backgroundColor: color,
                  radius: 20,
                  suffixesIcons: Icon(Icons.add),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: ArtButtonsKh(
                  onPressed: () {},
                  text: "Button",
                  backgroundColor: color,
                  suffixesIcons: Icon(Icons.add),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: ArtButtonsKh(
                onPressed: () {},
                text: "Button",
                backgroundColor: color,
                suffixesIcons: Icon(Icons.add),
                prefixesIcons: Icon(Icons.add),
                fontSize: 10,
              )),
              const SizedBox(
                width: 10,
              ),
              Expanded(
                child: ArtButtonsKh(
                  onPressed: () {},
                  text: "Button",
                  backgroundColor: color,
                  radius: 20,
                  fontSize: 10,
                  suffixesIcons: Icon(Icons.add),
                  prefixesIcons: Icon(Icons.add),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: ArtButtonsKh(
                  onPressed: () {},
                  text: "Button",
                  backgroundColor: color,
                  fontSize: 10,
                  suffixesIcons: Icon(
                    Icons.add,
                    size: 20,
                  ),
                  prefixesIcons: Icon(
                    Icons.add,
                    size: 25,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
