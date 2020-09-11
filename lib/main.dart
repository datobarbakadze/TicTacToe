import 'package:flutter/material.dart';
import 'package:tictactoe/helper/widgets.dart';
import 'package:tictactoe/globals.dart' as globals;
// colors
// background #5d9e9f (93, 158, 159)
// buttons #03858b
// O - #076063 | 7,96,99,
// yellow dot: #fec404
// border yellow: #deb886 |  222, 184, 134

void main() {
  runApp(MaterialApp(
    home: TicTac()
  ));
}

class TicTac extends StatefulWidget {
  @override
  _TicTacState createState() => _TicTacState();
}

class _TicTacState extends State<TicTac> {

  Function setStateResetGame(fn){
    super.setState((){
      globals.ContList =  [for (var i in globals.ContList) i=2];
      globals.winner = false;
      globals.XScore = 0;
      globals.OScore = 0;
      globals.turn = 1;
    });
  }
  Function setStateNewGame(fn) {
    super.setState((){
      globals.winner = false;
      globals.turn=1;
      globals.ContList =  [for (var i in globals.ContList) i=2];
    });
  }

  Function setWholeState(fn){
    super.setState((){});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: globals.mainBgColor,
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0.0, 20.0, 10.0, 0.0),
                child: SafeArea(
                  child: Container(
                    padding: EdgeInsets.only(left:20.0, right:20.0, bottom:10.0),
                    decoration: BoxDecoration(
                      border: Border(
                          bottom:BorderSide(
                            width:2.0,
                            style: BorderStyle.solid,
                            color:globals.BorderYellow,
                          ),
                      ),
                    ),
                    child: Text(
                      "TIC TAC TOE",
                      style: TextStyle(
                        letterSpacing: 2.0,
                        fontSize:35.0,
                        fontWeight: FontWeight.w300,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ]
          ),
          SizedBox(height: 30.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              XScoreValue(),
              SizedBox(width:globals.ScoreSpacing),
              Text(
                ":",
                style: TextStyle(
                  letterSpacing: 2.0,
                  fontSize:globals.Soorefontsize,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(width:globals.ScoreSpacing),
              OScoreValue(),
            ],
          ),
          SizedBox(height:40),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GenButton(position: 0,topBorder: false,setState: this.setWholeState,),
                GenButton(position: 1,topBorder: false,setState: this.setWholeState,),
                GenButton(position: 2,rightBorder: false,topBorder: false,setState: this.setWholeState,),
              ]
            ),
          ),
          Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GenButton(position: 3,setState: this.setWholeState,),
                  GenButton(position: 4,setState: this.setWholeState,),
                  GenButton(position: 5,rightBorder: false,setState: this.setWholeState,),
                ]
            ),
          ),
          Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GenButton(position: 6,setState: this.setWholeState,),
                  GenButton(position: 7,setState: this.setWholeState,),
                  GenButton(position: 8, rightBorder: false,setState: this.setWholeState,),
                ]
            ),
          ),
          SizedBox(height:30),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  NewGameButton(setState: this.setStateNewGame,),
                ],
              ),
              SizedBox(height:5),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ResetGame(setState: this.setStateResetGame,),
                ],
              ),
              SizedBox(height:10),
              Center(child:Text("ver: v1.0",
                style: TextStyle(color:Colors.white,fontSize: 10.0)
              )),
            ],
          ),
        ],
      ),
    );
  }
}







