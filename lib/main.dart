import 'package:flutter/material.dart';
import 'package:youtube_app/video_detail.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final items = List<String>.generate(10000, (i) =>"Items $i");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle:false,
          leading: const Icon(Icons.videocam),
        title: const Text('YouTubeアプリ',
        ),
          actions: <Widget>[
            SizedBox(
              width:46,
              child: FlatButton(
              onPressed: () {
                //todo
              },
              child: Icon(Icons.search),
        ),
            ),
            SizedBox(
              width:46,
              child: FlatButton(
                onPressed: () {
                  //todo
                },
                child: Icon(Icons.more_vert),
              ),
            ),
          ],
        ),
    body: Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 100,
                  height:100,
                  child: Image.network(
                    'https://msp.c.yimg.jp/images/v2/tpvPBYOX1wpNVI1UoNSgEkHvkp1LZZhs0g3_2s7AffZ2pezISLTFnQRLWJnwp_eRQ4Z_Sb_HH17jDQAjcbVqLvNpN8IN0h5_dH-AF3lJSpe0qWg_pdsJSQweY5ND756wrw1HFLiebRFxSseQak54c856nKchTBdKZTdjK5odmw8U0Kp1QvHbzCpVKQFloqm51m3GpHBzUWPiCiL5L4JlSQ==/logo_l.jpg?errorImage=false'
                  ),
                ),
                SizedBox(
                  width:8,
                ),

                Column(
                  children:<Widget>[
                   const Text(
                    '欅坂46 Official YouTube Channel',
                  ),
                FlatButton(
                onPressed: () {
                  //todo
                },
                child:Row(
                  children:<Widget> [
                    Icon(
                      Icons.video_call,
                      color:Colors.red,
                    ),
                    Text('登録する'),
                  ],
                ),
    ),
              ],
            ),
        ],
      ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder:(context,index){
                return ListTile(
                  onTap: ()async{
                    //画面遷移
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => VideoDetailPage(),
                      ),
                    );
                  },
                  contentPadding:EdgeInsets.all(8),
                  leading:Image.network(
                      'https://msp.c.yimg.jp/images/v2/FUTi93tXq405grZVGgDqG8UrgrYt6MbJRAVUToLcIsKD9ksoC4pvkh0glXabvVxsG8nEczc5iym7tA3y6bVeuJ7l8Q_0EDZFWpA3khfCt967LtwMNmHEqmrSEVGlnv_Ce-6Ft4evjKyZnkg6-fpvWIBneZVwwnLiYqLKY_CUsHVfajhjUcMjBj5_qinS7vsBr5mwf7iMisTsRCGWsGvYRq7b0BnTdLCbzPjAtE2nF7gNmHJv2cf0zgWS172JaTmFfq3ZkviQ5He3fo6cz_NzXWJQkkVuxMZ-zQAgsORXWw5vqs0ax8IAB3QKxu9yG7gIqBz7-kdpA4DTCVY6gVyV6NEyCNgCpE0ILyPO2vntEGH1gM4HpzZr4eq_7h8pzvWy/m_E6AC85E381A3E381A6E69BB8E38191E381AAE38184.png'
                  ),
                  title:Column(
                    children: <Widget> [
                      Text('欅って、かけない？＃${index+1}',
                      style:TextStyle(
                        fontWeight:FontWeight.bold,
                        ),
                      ),
                  Row(
                    children:<Widget> [
                      Text('105万回再生',
                      style:TextStyle(
                        fontSize:13),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Text('５年前',
                        style:TextStyle(
                            fontSize:13),)
                    ],
                  ),
                ],
                  ),
                  trailing:Icon(Icons.more_vert),
                );
              },
            ),
          ),
      ],
      ),
     ),
    ),
    );
  }
}