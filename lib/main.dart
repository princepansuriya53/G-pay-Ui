import 'package:flutter/material.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "P Pay", debugShowCheckedModeBanner: false, home: homepage());
  }
}

class homepage extends StatefulWidget {
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  var _value;
  String _v = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      appBar: AppBar(
        title: DropdownButton(
            icon: Icon(Icons.arrow_drop_down_circle),
            iconEnabledColor: Colors.blue[800],
            borderRadius: BorderRadius.circular(20),
            alignment: Alignment.topLeft,
            value: _value,
            items: [
              DropdownMenuItem(child: Text('Welcome Page '), value: 1),
            ],
            onChanged: (value) => setState(() => _value = value)),
        actions: [
          CircleAvatar(
              backgroundColor: Colors.red, maxRadius: 20, minRadius: 10),
          Padding(
            padding: EdgeInsets.only(left: 20),
          ),
          PopupMenuButton(
            color: Colors.red,
            elevation: 30,
            onSelected: (String ok) => setState(() => _v = ok),
            itemBuilder: (context) => [
              PopupMenuItem(child: Text('Menu 1'), value: _v),
              PopupMenuItem(child: Text('Menu 2'), value: _v),
              PopupMenuItem(child: Text('Menu 3'), value: _v),
              PopupMenuItem(child: Text('Menu 4'), value: _v),
            ],
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.blue[800],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            GridView(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 5,
                childAspectRatio: 1 / 1,
              ),
              children: [
                Container(
                  margin: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: Colors.blue,
                  ),
                  child: Icon(Icons.qr_code, color: Colors.white, size: 35),
                ),
                Container(
                  margin: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(35),
                    color: Colors.blue,
                  ),
                  child: InkWell(
                    child: Icon(
                      Icons.settings,
                      color: Colors.white,
                      size: 38,
                    ),
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Data())),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(4.5),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(36)),
                  child:
                      Icon(Icons.call_outlined, color: Colors.white, size: 40),
                ),
                Container(
                  margin: EdgeInsets.all(8),
                  child:
                      Icon(Icons.business, color: Colors.redAccent, size: 44),
                ),
                Container(
                  child: Icon(Icons.account_balance_wallet_outlined,
                      color: Colors.brown, size: 44),
                ),
                Container(
                  child: Image.network(
                      'https://cdn-icons-png.flaticon.com/512/2332/2332039.png',
                      fit: BoxFit.fitWidth),
                ),
              ],
            ),
            SizedBox(
              height: 350,
              width: 300,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      width: 2.5,
                      style: BorderStyle.solid,
                      color: Colors.black12),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: ListView(
                  addRepaintBoundaries: true,
                  shrinkWrap: true,
                  children: [
                    ListTile(
                      title: Center(
                        child: Text(
                          'No Payment Today',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 19.5,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      subtitle: Padding(
                          padding: EdgeInsets.all(9),
                          child: Text(
                            'Your Latest Transection Will Show Up Here',
                            style: TextStyle(fontSize: 14),
                          )),
                    ),
                    Image.network(
                      'https://img.freepik.com/free-photo/black-friday-elements-assortment_23-2149074075.jpg?w=2000',
                    ),
                    Divider(
                      thickness: 1.5,
                      color: Colors.black12,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text('See Past Payments', style: TextStyle()),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40), topRight: Radius.circular(40)),
        ),
      ),
    );
  }
}

class Data extends StatelessWidget {
  bool _switchValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('My Store'),
            subtitle: Text('Singind As User '),
          ),
          ListTile(
            leading: Icon(Icons.shopping_bag, color: Colors.blue, size: 40),
            title: Text('Display Info'),
            subtitle: Text('JOb Mela '),
          ),
          ListTile(
            leading: Icon(Icons.paste_rounded, size: 40, color: Colors.blue),
            title: Text('Registration Info'),
            subtitle: Text('BVGYKN5454148431874'),
          ),
          ListTile(
            leading: Icon(Icons.account_balance, size: 40, color: Colors.blue),
            title: Text("Account"),
            subtitle: Text('......4641'),
          ),
          ListTile(
            leading: Icon(Icons.payment, size: 40, color: Colors.blue),
            title: Text("Payment Method Setting"),
            subtitle: Text("Sattelment Limit Transection Charge "),
          ),
          ListTile(
            leading: Icon(Icons.call, size: 40, color: Colors.blue),
            title: Text("Mobile Number"),
            subtitle: Text('9558502111'),
          ),
          ListTile(
            leading: Icon(Icons.language, size: 40, color: Colors.blue),
            title: Text("Language"),
            subtitle: Text('Kathiyawadi'),
          ),
          ListTile(
            leading: Icon(Icons.person, size: 40, color: Colors.blue),
            title: Text("Staff Mangemant"),
            subtitle: Text('Alow your Staff To Mange Your Coustomer'),
          ),
          ListTile(
            leading: Icon(Icons.qr_code, size: 40, color: Colors.blue),
            title: Text("Code"),
            subtitle: Text('Your Qr'),
          ),
          ListTile(
            leading: Icon(Icons.straighten, size: 40, color: Colors.blue),
            title: Text("Sattlment"),
            subtitle: Text('Select Your Sattlment Time'),
          ),
          ListTile(
            subtitle: Text(
              'Notification',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading:
                Icon(Icons.notifications_none, size: 40, color: Colors.blue),
            title: Text("Payment Voice Notifaction"),
            subtitle: Text('Get Notified When You Recive payment'),
          ),
          ListTile(
            leading: Icon(Icons.sms, size: 40, color: Colors.blue),
            title: Text("SMS Conformation"),
            subtitle: Text('Add Agent Inforrmation'),
          ),
          ListTile(
            leading: Icon(Icons.mobile_screen_share_rounded,
                size: 40, color: Colors.blue),
            title: Text("Wlcome Screen"),
            subtitle: Text('View Your Activit when App daily lunced'),
          ),
        ],
      ),
    );
  }
}
