// Write a test case which checks the board size is 3 by 3 and is empty

// Challenge 1
// Write the winning scenario
// 1. Start with checking if a player has all cells in row
// 2. Extend the logic to Columns and diagonal

import 'dart:io';
import 'package:test/test.dart';


void main() {
  List<List<String>> board = createBoard();
  printBoard(board);
  String currentPlayer = 'X';


  while (true) {
    print('$currentPlayer\'s move');
    String userChoice = stdin.readLineSync();
    int row = getRow(userChoice);
    int column = getColumn(userChoice);
    if (!validate(row, column, board)) {
      print('Invalid Move');
      continue;
    }
    board[row][column] = currentPlayer;
    var result = isWinner(board);
    if (result == true){
      //board = createBoard();
    }
    printBoard(board);
    if (currentPlayer == 'X') {
      currentPlayer = 'O';
    } else {
      currentPlayer = 'X';
    }
  }
}

// Challenge 2
// Write a test case to see if the board is empty and of size 3 by 3
 createBoard() {
  var boardSize = 3;
  return List.generate(boardSize, (_) => List.filled(boardSize, ' '));
}

bool validate(int row, int column, List<List<String>> board) {
  return board[row][column] == ' ';
}

int getColumn(String userInput) => ['A', 'B', 'C'].indexOf(userInput[0]);

int getRow(String userInput) => ['1', '2', '3'].indexOf(userInput[1]);

void printBoard(List<List<String>> board) {
  print('   A   B   C ');
  List<String> rows = board.map(rowToString).toList();
  print('1 ${rows[0]}');
  print('  ---+---+---');
  print('2 ${rows[1]}');
  print('  ---+---+---');
  print('3 ${rows[2]}');
}

String rowToString(List<String> row) {
  return row.map((String val) => ' $val ').join('|');
}

void resetGame() {

}

bool isWinner (List<List<String>> board) {
  if ((board[0][0] != ' ') &&
      (board[0][1] != ' ') &&
      (board[0][2] != ' ') &&
      (board[0][0] == board[0][1]) &&
      (board[0][0] == board[0][2])) {
    print('Congrats you Won');
    return true;
  } else if ((board[1][0] != ' ') &&
      (board[1][1] != ' ') &&
      (board[1][2] != ' ') &&
      (board[1][0] == board[1][1]) &&
      (board[1][0] == board[1][2])) {
    print('Congrats you Won');
    return true;
  } else if ((board[2][0] != ' ') &&
      (board[2][1] != ' ') &&
      (board[2][2] != ' ') &&
      (board[2][0] == board[2][1]) &&
      (board[2][0] == board[2][2])) {
    print('Congrats you Won');
    return true;
  } else if ((board[0][0] != ' ') &&
      (board[1][0] != ' ') &&
      (board[2][0] != ' ') &&
      (board[0][0] == board[1][0]) &&
      (board[1][0] == board[2][0])) {
    print('Congrats you Won');
    return true;
  } else if ((board[0][1] != ' ') &&
      (board[1][1] != ' ') &&
      (board[2][1] != ' ') &&
      (board[0][1] == board[1][1]) &&
      (board[1][1] == board[2][1])) {
    print('Congrats you Won');
    return true;
  } else if ((board[0][2] != ' ') &&
      (board[1][2] != ' ') &&
      (board[2][2] != ' ') &&
      (board[0][2] == board[1][2]) &&
      (board[1][2] == board[2][2])) {
    print('Congrats you Won');
    return true;
  } else if ((board[0][0] != ' ') &&
      (board[1][1] != ' ') &&
      (board[2][2] != ' ') &&
      (board[0][0] == board[1][1]) &&
      (board[1][1] == board[2][2])) {
    print('Congrats you Won');
    return true;
  } else if ((board[2][0] != ' ') &&
      (board[1][1] != ' ') &&
      (board[0][2] != ' ') &&
      (board[2][0] == board[1][1]) &&
      (board[1][1] == board[0][2])) {
    print('Congrats you Won');
    return true;
  }
  else{
    return false;
  }
}