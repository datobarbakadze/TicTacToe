import 'package:flutter/material.dart';
import 'package:tictactoe/globals.dart' as globals;
import 'package:tictactoe/helper/Functions.dart';

class GenButton extends StatefulWidget {
  int position;
  bool rightBorder=true;
  bool topBorder = true;
  final Function setState;
  GenButton({this.position, this.rightBorder=true, this.topBorder=true,this.setState});
  @override
  _GenButtonState createState() => _GenButtonState();
}


class _GenButtonState extends State<GenButton>  {

  Functions functions = Functions();

  @override
  Widget build(BuildContext context){
    const double BoardBorderWidth = 3.0;
    double RightBorderWidth =  widget.rightBorder == true ? BoardBorderWidth : 0.0;
    double TopBorderWidth = widget.topBorder == true ? BoardBorderWidth : 0.0;
    return Container(
      height:95,
      width:95,
      padding:EdgeInsets.fromLTRB(0.0, TopBorderWidth, RightBorderWidth, 0.0),
      color: globals.BorderYellow,
      child: FlatButton(
        onPressed: () {

          setState(() {
            functions.setButtonState(widget.position);
          });
          bool winner = functions.checkWin();
          if(globals.winner==true){
            widget.setState((){});
          }

        },
        color: globals.mainBgColor,
        child: Text(
          (globals.ContList[widget.position] ==false) ? "": (globals.ContList[widget.position]==1) ? "X" : (globals.ContList[widget.position]==0) ? "O" : "",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: globals.TicTacFontsize,
            color:globals.ContList[widget.position]==1 ? Colors.white : globals.OGreen,
          ),
        ),
      ),
    );
  }
}

class OScoreValue extends StatefulWidget {

  OScoreValue();

  @override
  _OScoreValue createState() => _OScoreValue();
}

class _OScoreValue  extends State<OScoreValue> {
  @override
  Widget build(BuildContext context) {
    return Text(
      globals.OScore.toString(),
      style: TextStyle(
        letterSpacing: 2.0,
        fontSize:globals.Soorefontsize,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }
}


class XScoreValue extends StatefulWidget {
  XScoreValue({Key key});
  @override
  _XScoreValue createState() => _XScoreValue();
}


class _XScoreValue  extends State<XScoreValue> {
  @override
  Widget build(BuildContext context) {
    return Text(
      globals.XScore.toString(),
      style: TextStyle(
        letterSpacing: 2.0,
        fontSize:globals.Soorefontsize,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }
}

class NewGameButton extends StatelessWidget {
  final Function setState;
  const NewGameButton({
    Key key,this.setState
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: () {
          this.setState((){});
        },
        color:globals.ButtonGreen,
        padding: EdgeInsets.symmetric(horizontal: 56,vertical: 15),
        child: Text(
          "NEW GAME",
          textAlign: TextAlign.center,
          style: TextStyle(
            color:Colors.white,
          ),
        )
    );
  }
}

class ResetGame extends StatelessWidget {
  final Function setState;
  const ResetGame({
    Key key,this.setState
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
        onPressed: () {
          this.setState((){});
        },
        color:globals.ButtonGreen,
        padding: EdgeInsets.symmetric(horizontal: 50,vertical: 15),
        child: Text(
          "RESET GAME",
          textAlign: TextAlign.center,
          style: TextStyle(
            color:Colors.white,
          ),
        )
    );
  }
}