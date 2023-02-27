import 'package:flutter/material.dart';
import 'package:flutter_form_responsive/config/size_config.dart';

class FormScreen extends StatelessWidget {
  const FormScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return const Scaffold(
      body: FormScreenBody(),
    );
  }
}

class FormScreenBody extends StatefulWidget {
  const FormScreenBody({
    Key? key,
  }) : super(key: key);

  @override
  FormScreenBodyState createState() => FormScreenBodyState();
}

class FormScreenBodyState extends State<FormScreenBody> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20),
            ),
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight! * 0.04),
                getFormBodyHeader(),
                SizedBox(height: SizeConfig.screenHeight! * 0.04),
                getFormBodyContent(),
                SizedBox(height: SizeConfig.screenHeight! * 0.04),
                getFormBodyFooter(),
                SizedBox(height: SizeConfig.screenHeight! * 0.08),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget getFormBodyHeader() {
    return SizedBox(
      width: SizeConfig.screenWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.asset(
            "assets/images/at_logo.png",
            width: getProportionateScreenWidth(100),
            height: getProportionateScreenWidth(100),
            color: Colors.blue,
          ),
          SizedBox(
            height: getProportionateScreenHeight(35),
          ),
        ],
      ),
    );
  }

  Widget getFormBodyContent() {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: getProportionateScreenWidth(56),
            width: SizeConfig.screenWidth,
            child: TextField(
              cursorColor: Colors.black,
              style: TextStyle(
                color: Colors.black,
                fontSize: getProportionateScreenWidth(12),
              ),
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: 'Email',
                contentPadding: EdgeInsets.fromLTRB(
                  getProportionateScreenWidth(15),
                  getProportionateScreenWidth(12),
                  getProportionateScreenWidth(15),
                  getProportionateScreenWidth(12),
                ),
              ),
            ),
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          SizedBox(
            height: getProportionateScreenWidth(56),
            width: SizeConfig.screenWidth,
            child: TextField(
              cursorColor: Colors.black,
              style: TextStyle(
                color: Colors.black,
                fontSize: getProportionateScreenWidth(12),
              ),
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: const OutlineInputBorder(),
                labelText: 'Password',
                contentPadding: EdgeInsets.fromLTRB(
                  getProportionateScreenWidth(15),
                  getProportionateScreenWidth(12),
                  getProportionateScreenWidth(15),
                  getProportionateScreenWidth(12),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getFormBodyFooter() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: SizedBox(
                height: getProportionateScreenWidth(40),
                width: SizeConfig.screenWidth,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: getProportionateScreenWidth(14),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: getProportionateScreenWidth(15),
            ),
            Expanded(
              child: SizedBox(
                height: getProportionateScreenWidth(40),
                width: SizeConfig.screenWidth,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Reset',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: getProportionateScreenWidth(14),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: getProportionateScreenHeight(45)),
        Text(
          'Click here for new account',
          style: TextStyle(
            color: Colors.blue,
            fontSize: getProportionateScreenWidth(14),
          ),
        ),
      ],
    );
  }
}
