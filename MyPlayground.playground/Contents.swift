import UIKit
import Foundation

/*
 *****
 ****
 ***
 **
 *
 */
func pattern5(of n: Int){
    for i in 0...n-1{
        for j in 0...n-1-i{
            print("*", terminator: "")
        }
        print()
    }
}
/*
 12345
 1234
 123
 12
 1
 */
func pattern6(of n: Int) {
    for i in 0..<n {
        for j in 1...n-i {
            print(j, terminator: "")
        }
        print()
    }
}

/*
    *
   ***
  *****
 *******
*********
*/
func pattern7(of n: Int) {
    for i in 0...n {
        var j: Int = n-i
        var l: Int = n
        while j > 0 {
            print(" ", terminator: "")
            j -= 1
        }
        for k in 0..<2*i+1 {
            print("*", terminator: "")
        }
        while l > 0 {
            print(" ", terminator: "")
            l -= 1
        }
        print("")
    }
}

/*
 *********
  *******
   *****
    ***
     *
 */

func pattern8(of n: Int) {
    var col = n
    while col >= 0 {
        var space = n
        var star = 2*n+1
        while space > col {
            print(terminator: " ")
            space -= 1
        }
        for star in 0...2*col {
            print("*", terminator: "")
        }
        col -= 1
        print()
    }
}

/*
    *
   ***
  *****
 *******
*********
*********
 *******
  *****
   ***
    *
*/

func pattern9(of n: Int) {
    pattern7(of: n)
    pattern8(of: n)
}

/*
 *
 **
 ***
 ****
 *****
 ****
 ***
 **
 *
 */
func pattern10(of n: Int) {
    for i in 0..<2*n+1 {
        var star = i > n ? 2*n-i : i
        for j in 0...star {
            print("*", terminator: "")
        }
        print()
    }
}

/*
 1
 01
 101
 0101
 10101
 */
func pattern11(of n: Int) {
    for i in 0..<n{
        for j in 0...i {
            if i%2 == 0 {
                print(j%2==0 ? 1 : 0, terminator: "")
            } else {
                print(j%2, terminator: "")
            }
        }
        print()
    }
}

/*
 1         1
 12       21
 123     321
 1234   4321
 12345 54321
 */
func pattern12(of n: Int) {
    for i in 1...n {
        for j in 1...i {
            print(j, terminator: "")
        }
        for k in 0...2*(n-i){
            print(" ", terminator: "")
        }
        var l = i
        while l > 0 {
            print(l, terminator: "")
            l -= 1
        }
        print()
    }
}

/*
 1
 2 3
 4 5 6
 7 8 9 10
 11 12 13 14 15
 */
func pattern13(of n: Int) {
    var count = 0
    for i in 0..<n {
        for j in 0...i {
            count += 1
            print(count, terminator: " ")
        }
        print()
    }
}
/*
 A
 AB
 ABC
 ABCD
 ABCDE
 */
func pattern14(of n: Int) {
    for i in 1...n {
        for j in 65..<65+i {
            print(UnicodeScalar(j)!, terminator: "")
        }
        print()
    }
}

/*
 ABCDE
 ABCD
 ABC
 AB
 A
 */
func pattern15(of n: Int) {
    for i in 0..<n {
        for j in 65...65+(n-1-i){
            print(UnicodeScalar(j)!, terminator: "")
        }
        print()
    }
}

/*
 A
 BB
 CCC
 DDDD
 EEEEE
 */
func pattern16(of n: Int) {
    for i in 0..<n {
        for j in 0...i {
            print(UnicodeScalar(65+i)!, terminator: "")
        }
        print()
    }
}

/*
    A
   ABA
  ABCBA
 ABCDCBA
ABCDEDCBA
 */

func pattern17(of n: Int) {
    for i in 0..<n {
        for j in 0...(n-i-1) {
            print("", terminator: " ")
        }
        for k in 0...i {
            print(UnicodeScalar(65+k)!, terminator: "")
        }
        for l in 0..<i {
            print(UnicodeScalar(65+i-1-l)!, terminator: "")
        }
        print()
    }
}

/*
 E
 DE
 CDE
 BCDE
 ABCDE
 */
func pattern18(of n: Int) {
    for i in 1...n {
        for j in n-i..<n {
            print(UnicodeScalar(65+j)!, terminator: "")
        }
        print()
    }
}

/*
 **********
 ****  ****
 ***    ***
 **      **
 *        *
 *        *
 **      **
 ***    ***
 ****  ****
 **********
 */
func pattern19(of n: Int) {
    for i in 0..<2*n {
        var stars = i < n ? n-i : i+1-n
        var spaces = i < n ? 2*i : 9-(2*(i-n)+1)
        for j in 0..<stars{
            print("*", terminator: "")
        }
        for k in 0..<spaces {
            print("", terminator: " ")
        }
        for l in 0..<stars{
            print("*", terminator: "")
        }
        print()
    }
}

/*
 
 *        *
 **      **
 ***    ***
 ****  ****
 **********
 ****  ****
 ***    ***
 **      **
 *        *
 
 */
func pattern20(of n: Int) {
    for i in 0..<2*n-1 {
        var stars = i < n ? i+1 : 2*n-(i+1)
        var spaces = i < n ? (2*(n-i))-2 : 2*(i-n)+2
        for j in 0..<stars{
            print("*", terminator: "")
        }
        for k in 0..<spaces {
            print("", terminator: " ")
        }
        for l in 0..<stars{
            print("*", terminator: "")
        }
        print()
    }
}

/*
 *****
 *   *
 *   *
 *   *
 *****
 */
func pattern21(of n: Int) {
    for i in 1...n {
        for j in 1...n {
            if (j == 1 || j == n || i == 1 || i == n) {
                print("*", terminator: "")
            } else {
                print(" ", terminator: "")
            }
        }
        print()
    }
}

/*
 4444444
 4333334
 4322234
 4321234
 4322234
 4333334
 4444444
 */
func pattern22(of n: Int) {
    for i in 0..<2*n-1 {
        for j in 0..<2*n-1 {
            var top = i
            var bottom = (2*n-1)-(i+1)
            var left = j
            var right = (2*n-1)-(j+1)
            print(n - min(min(top, bottom), min(left, right)), terminator: "")
        }
        print()
    }
}

func drawPatter() {
    pattern22(of: 5)
}

drawPatter()
