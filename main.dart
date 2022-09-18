import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();}

class _MyHomePageState extends State<MyHomePage> {

    bool isSearchDo = false;

   @override
  Widget build(BuildContext context) {
        return Scaffold(
      appBar: AppBar(
        title:
         isSearchDo ?
             TextField(
               decoration: InputDecoration(hintText : 'Search Here'),
               onChanged: (resultSearch){
                 print('resultSearch : $resultSearch');},)
             : Text('AppBarSearch',style: TextStyle(color:Colors.white,fontSize: 18.0)),
        centerTitle: false,
        leading: IconButton(
          tooltip: 'MenuIcon',
          icon: Icon(Icons.menu_outlined),
          onPressed: (){
            print('MenuIconClicked');}),
        actions: [
            isSearchDo ?  IconButton(
              icon: Icon(Icons.cancel),
                onPressed: (){
                  setState(() {
                    isSearchDo = false;});})
          :IconButton(
              icon: Icon(Icons.search),
              onPressed: (){
                setState(() {
                  isSearchDo = true;});},),
          TextButton(
              onPressed: (){
                print('EXIT on Click');},
              child: Text('Exit',style: TextStyle(color: Colors.white),)),
          IconButton(
              tooltip: 'Info',
              icon: Icon(Icons.info_outlined),
              onPressed: (){
                print('InfoIconClicked');}),
          PopupMenuButton(
              child: Icon(Icons.more_vert),
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 1,
                  child: Text('Delete'),),
                PopupMenuItem(
                  value: 2,
                  child: Text('Edit'),),
              ], // PopUpMenuItemBuilder
              onSelected: (menuItemValue){
                if(menuItemValue ==1){print('Clicked Delete');}
                if(menuItemValue ==2){print('Clicked Edit');}
          },
         ),
        ], // Actions
       ),
      body: Center(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[


          ],
        ),
      ),
    );
  }
}
