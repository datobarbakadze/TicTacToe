import 'package:tictactoe/globals.dart' as globals;
class Functions{
  int fillTheSquare(int position,turn){
    if(globals.ContList[position]==2 && globals.winner==false){
      globals.ContList.removeAt(position);
      globals.ContList.insert(position, turn);
      return (globals.turn == 1) ? 0 : 1;
    }
  }

  bool Winner(int winner){
    if(winner == 1){
      globals.winner=true;
      globals.XScore+=1;
      return true;
    }else if(winner==0){
      globals.winner=true;
      globals.OScore+=1;
      return true;
    }else if(winner==2){
      globals.winner=true;
      return true;
    }else{
      return false;
    }
  }

  void setButtonState(position) {
    globals.turn = fillTheSquare(position,globals.turn);
  }

  bool checkWin(){
    // 0 - wins O
    // 1 - wins X
    // 2 - Draw
    //horizontal wins
    if(globals.ContList[0] == globals.ContList[1] && globals.ContList[0] == globals.ContList[2] && globals.ContList[0] != 2){
      return this.Winner(globals.ContList[0]);
    }else if(globals.ContList[3] == globals.ContList[4] && globals.ContList[3] == globals.ContList[5] && globals.ContList[3] != 2){
      return this.Winner(globals.ContList[3]);
    }else if(globals.ContList[6] == globals.ContList[7] && globals.ContList[6] == globals.ContList[8] && globals.ContList[6] != 2){
      return this.Winner(globals.ContList[6]);
    }

    //vertical wins
    else if(globals.ContList[0] == globals.ContList[3] && globals.ContList[0] == globals.ContList[6] && globals.ContList[0] != 2){
      return this.Winner(globals.ContList[0]);
    }else if(globals.ContList[1] == globals.ContList[4] && globals.ContList[1] == globals.ContList[7] && globals.ContList[1] != 2){
      return this.Winner(globals.ContList[1]);
    }else if(globals.ContList[2] == globals.ContList[5] && globals.ContList[2] == globals.ContList[8] && globals.ContList[2] != 2){
      return this.Winner(globals.ContList[2]);
    }

    // diagonal wins
    else if(globals.ContList[0] == globals.ContList[4] && globals.ContList[0] == globals.ContList[8] && globals.ContList[0] != 2){
      return this.Winner(globals.ContList[0]);
    }else if(globals.ContList[2] == globals.ContList[4] && globals.ContList[2] == globals.ContList[6] && globals.ContList[2] != 2){
      return this.Winner(globals.ContList[2]);
    }

    if(!globals.ContList.contains(2)){
      return this.Winner(2);
    }
    return this.Winner(3);
  }
}