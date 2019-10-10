import "package:test/test.dart";
import 'main.dart';


void main() {
  createBoard();
  test("String.split() splits the string on the delimiter", () {
    var string = "foo,bar,baz";
    expect(string.split(","), equals(["foo", "bar", "baz"]));
  });

  test("String.trim() removes surrounding whitespace", () {
    var string = "  foo ";
    expect(string.trim(), equals("foo"));
  });

  test("Check for the size of the board", () {
    List<List<String>> board = createBoard();
    expect(board, equals(createBoard()));
  });

  test("Check for winning condition", () {
    String X = 'X';
    List<List<String>> board1 = [['X', 'O', ''],['X', 'O', ''],['X', 'O', ''],
    ];
    List<List<String>> board2 = [['X', 'O', ''], ['O', 'X', ''], ['X', 'O', ''],
    ];
    expect(isWinner(board1), true);
    expect(isWinner(board2), false);
  });
}