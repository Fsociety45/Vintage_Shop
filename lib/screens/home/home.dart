import 'package:Vintage_Shop/screens/login/login.dart';
import 'package:flutter/material.dart';

import 'package:Vintage_Shop/router.dart';

import 'package:Vintage_Shop/constants.dart';

TabController _tabController;

class HomeScreen extends StatefulWidget {
  final front;
  final String token;
  final double currency;
  const HomeScreen({Key key, this.front, this.token, this.currency})
      : super(key: key);
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with
        SingleTickerProviderStateMixin,
        AutomaticKeepAliveClientMixin<HomeScreen> {
  @override
  bool get wantKeepAlive => true;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: LightColor.primaryColor,
        elevation: 0,
        iconTheme: IconThemeData(color: LightColor.textLightColor),
        title: Center(
          child: Container(
            width: AppTheme.fullWidth(context) * 0.8,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(1),
              borderRadius: BorderRadius.circular(15),
            ),
            child: FlatButton(
              textColor: LightColor.iconColor,
              child: Padding(
                padding: EdgeInsets.only(
                    right: ((AppTheme.fullWidth(context) * 0.4))),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(width: 10),
                    Text("Search"),
                  ],
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  search,
                );
              },
            ),
          ),
        ),
      ),
      body: Center(
        child: SizedBox(
          width: 400,
          child: FlatButton(
            onPressed: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => LoginScreen())),
            padding: EdgeInsets.only(right: 0.0),
            child: Text("Login",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                )),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
