import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    theme: new ThemeData(
      primaryColor: const Color(0xffB23121),
    ),
    home:MyApp(),
    debugShowCheckedModeBanner: false,

  ));
}
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}


class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0XffEEEEEE),
      appBar: AppBar(
        title: Text('Primary'),
        backgroundColor: Color(0xffB23121),
      ),
      drawer:Drawer(
        backgroundColor: Color(0Xffffffff),
        child:Column(
          children: <Widget>[
            Container(
              height: 200.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage('images/pageheader.png'),
                    fit:BoxFit.cover)),
          child:Container(
            padding:EdgeInsets.symmetric(horizontal: 10.0,vertical: 25.0),
            width:double.infinity,
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:<Widget>[
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30.0,
                  backgroundImage: ExactAssetImage('images/male.png'),
                ),
                Padding(
                  padding: const  EdgeInsets.symmetric(horizontal: 5.0,vertical: 5.0),
                  child: Text('Rishikeshan ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5.0,vertical: 5.0),
                  child: Text('rishikeshns01@gmail.com ',style: TextStyle(color: Colors.white,fontSize: 11.0),),
                ),
              ]
                  )
                ),
            ),
            DrawerListTile(idata:Icons.inbox,Title:'All inboxes',count:'',icolor: Color(0xfffafafa)),
            Divider(height: 1.0,),
            DrawerListTile(idata:Icons.people,Title: ' Primary',count:'99+',icolor: Color(0xfffafafa)),
            DrawerListTile(idata:Icons.more,Title:'Social',count:'2 New',icolor: Colors.blue),
            DrawerListTile(idata:Icons.star,Title:' Promotions',count:'',icolor: Color(0xfffafafa)),
            Divider(height: 1.0,),
            DrawerListTile(idata:Icons.alarm,Title:'Starred',count:'2',icolor: Color(0xfffafafa)),
            DrawerListTile(idata:Icons.play_arrow,Title:'Snoozed',count:'',icolor: Color(0xfffafafa)),
            DrawerListTile(idata:Icons.mail_outline,Title:'Important',count:'99',icolor: Color(0xfffafafa)),
            DrawerListTile(idata:Icons.bookmark,Title:' Sent',count:'9',icolor: Color(0xfffafafa)),
            DrawerListTile(idata:Icons.insert_drive_file,Title:' Draft',count:'' ,icolor: Color(0xfffafafa)),
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xffB23121),
        onPressed: () {
          print("Compose mail");
        },
        child: Icon(
          Icons.edit,
        ),
      ),
      body:SingleChildScrollView(
        child: Column(
          children:<Widget>[
            topTail(title:'Social',subtitle:'Google+', idata:Icons.people,IColor:Colors.blue,msg:'I New'),
            Divider(height: 0.1,),
            topTail(title:'Promotions',subtitle:'Swiggy,Google Offers',idata:Icons.more,IColor:Colors.green,msg:'5 New'),
            Divider(height: 0.1,),
            topTail(title:'Updates',subtitle:'Google Pay',idata:Icons.info,IColor:Colors.orange,msg:'2 New'),
            Divider(height: 0.1,),
            msgTail(url:'images/female.png',name:'Andy Brown',msg:'Bring your parents to word day',logs:'1.45 PM' ,isunread:false),
            msgTail(url:'images/male.png',name:'Andy Brown',msg:'Finish your work',logs:'10.15 PM',isunread:false),
            msgTail(url:'images/Group.jpg',name:'Shalini',msg:'How was the day',logs:'12.45 PM',isunread:false),
            msgTail(url:'images/male.png',name:'Mala Ramesh',msg:'Bring your parents to school',logs:'2.45 PM',isunread:false),
            msgTail(url:'images/female.png',name:'Sunil Kumar',msg:'Today is working day',logs:'3.45 PM',isunread:true),
            msgTail(url:'images/Group.jpg',name:'Mohamad',msg:'Bring your parents to word day',logs:'4.45 PM',isunread:true),
            msgTail(url:'images/female.png',name:'Andy Brown',msg:'Finish your work',logs:' Yesterday',isunread:true),
            msgTail(url:'images/male.png',name:'Shalini',msg:'How was the day',logs:'8.45 PM',isunread:false),
            msgTail(url:'images/female.png',name:'Mala Ramesh',msg:'Bring your parents to school',logs:'3.45 PM',isunread:false),
            msgTail(url:'images/female.png',name:'Sunil Kumar',msg:'Finish your work',logs:'Mar 29',isunread:false),
            msgTail(url:'images/Group.jpg',name:'Andy Brown',msg:'How was the day',logs:'7.45 PM',isunread:false),
            msgTail(url:'images/female.png',name:'Mohamad',msg:'Bring your parents to word day',logs:'3.45 PM',isunread:false),
          ]
        ),
      )
    );
  }

  ListTile DrawerListTile({required IconData idata,required String Title,required String count, required Color icolor}) {
    return ListTile(
            leading: Icon(idata),
            title:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(Title,style: TextStyle(fontWeight: FontWeight.bold),),
                Container(
                    color:icolor,
                    padding:EdgeInsets.symmetric(horizontal: 10.0,vertical: 5.0),
                  child:Text(count,style: TextStyle(fontWeight: FontWeight.bold,color:icolor==Color(0xfffafafa)?Colors.black:Colors.white),),
                )
              ],
            )
          );
  }

  ListTile msgTail({required String url, required String name,required String msg,required String logs,required bool isunread}) {
    return ListTile(
          leading:CircleAvatar(
            radius:20.0,
            backgroundImage: ExactAssetImage(url),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(name,style: TextStyle(
                fontWeight: isunread?FontWeight.bold:FontWeight.normal
              ),),
              Text(logs)
            ],
          ),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(msg),
              Icon(Icons.star_border,
              size:20.0,
              )
            ],
          ),
        );
  }

  ListTile topTail({required String title,required String subtitle,required IconData idata,required Color IColor,required String msg}) {
    return ListTile(
        leading:Icon(idata),
        iconColor:IColor,
        title:Text(title,style: TextStyle(fontWeight:FontWeight.bold),
        ),
        subtitle:Text(subtitle),
        trailing:Container(
          padding:EdgeInsets.symmetric(horizontal:10,vertical:3.0),
          color:IColor,
          child:Text(msg,style: TextStyle(color:Colors.white),
          ),
        ),
        );
  }
}
