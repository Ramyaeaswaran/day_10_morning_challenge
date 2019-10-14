import 'package:test/test.dart';
import 'main.dart';

void main(){
  test('testcase 1',(){
    expect(longestZero("01100001011000"),'0000');
  });
  test('testcase 2',(){
    expect(evenOddTransform([1, 2, 3], 1),[3, 0, 5]);
  });
}