///Question: Write a function that takes an input of even amount of numbers,
///shuffle the elements and then return a list of paired numbers

void main() {
  var input = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  pairedNumbers(input);
}

var input = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
List<List<int>> pairedNumbers(List<int> input) {
  input.shuffle();
  var steps = 2;
  List<List<int>> output = [];
  for (var i = 0; i < input.length; i += steps) {
    output.add(
        input.sublist(i, i + steps > input.length ? input.length : i + steps));
  }
  print(output);
  return output;
}

///Sample input: input = [1,2,3,4,5,6,7,8,9,10];
///Saple output: output = [[10, 2], [8, 5], [7, 3], [1, 4], [9, 6]]