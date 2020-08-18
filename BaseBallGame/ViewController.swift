//
//  ViewController.swift
//  BaseBallGame
//
//  Created by kimsunhong on 2020/08/12.
//  Copyright © 2020 hongnemo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    //    func arrayTest() {
    //        var numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    //
    //        if let firstRandomNumber = numbers.randomElement() {
    //            print("The first number is \(firstRandomNumber).")
    //            numbers.remove(at: firstRandomNumber)
    //        }
    //
    //        if let secondRandomNumber = numbers.randomElement() {
    //            print("The second number is \(secondRandomNumber).")
    //            numbers.remove(at: secondRandomNumber)
    //        }
    //
    //        if let thirdRandomNumber = numbers.randomElement() {
    //            print("The third number is \(thirdRandomNumber).")
    //            numbers.remove(at: thirdRandomNumber)
    //        }
    //
    //        if let fourthRandomNumber = numbers.randomElement() {
    //            print("The fourth number is \(fourthRandomNumber).")
    //        }
    //    }
    
    //    func makeRandomNumber() {
    //
    //        var numberSet : Set = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    //
    //        if let firstRandomNumber = numberSet.randomElement() {
    //            print("The first number is \(firstRandomNumber).")
    //            numberSet.remove(at: firstRandomNumber)
    //        }
    //        if let secondRandomNumber = numberSet.randomElement() {
    //            print("The second number is \(secondRandomNumber).")
    //            numberSet.remove(at: secondRandomNumber)
    //        }
    //        if let thirdRandomNumber = numberSet.randomElement() {
    //            print("The third number is \(thirdRandomNumber).")
    //            numberSet.remove(at: thirdRandomNumber)
    //        }
    //        if let fourthRandomNumber = numberSet.randomElement() {
    //            print("The fourth number is \(fourthRandomNumber).")
    //        }
    //    }
    
    var firstGuessNumber : Int = 0
    var secondGuessNumber : Int = 0
    var thirdGuessNumber : Int = 0
    var fourthGuessNumber : Int = 0
    var roundCount : Int = 1
    
    var firstBallCount : Int = 0
    var secondBallCount : Int = 0
    var thirdBallCount : Int = 0
    var fourthBallCount : Int = 0
    var fifthBallCount : Int = 0
    var sixthBallCount : Int = 0
    var seventhBallCount : Int = 0
    var eighthBallCount : Int = 0
    var ninthBallCount : Int = 0
    
    var firstStrikeCount : Int = 0
    var secondStrikeCount : Int = 0
    var thirdStrikeCount : Int = 0
    var fourthStrikeCount : Int = 0
    var fifthStrikeCount : Int = 0
    var sixthStrikeCount : Int = 0
    var seventhStrikeCount : Int = 0
    var eighthStrikeCount : Int = 0
    var ninthStrikeCount : Int = 0
    
    
    
    func shuffleSet() {
        let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9].shuffled()
        firstGuessNumber = numbers[0]
        secondGuessNumber = numbers[1]
        thirdGuessNumber = numbers[2]
        fourthGuessNumber = numbers[3]
        
        let answer : Array = [firstGuessNumber, secondGuessNumber, thirdGuessNumber, fourthGuessNumber]
        print(answer)
        answerLable.text = ""
        //answerLable.text = "answer : \(firstGuessNumber)\(secondGuessNumber)\(thirdGuessNumber)\(fourthGuessNumber)"
        print("랜덤 숫자는 \(firstGuessNumber)\(secondGuessNumber)\(thirdGuessNumber)\(fourthGuessNumber) 입니다.")
    }
    
    func checkFirstRound() {
        let first = Int(firstRoundFirstNumberLabel.text!)
        let second = Int(firstRoundSecondNumberLabel.text!)
        let third = Int(firstRoundThirdNumberLabel.text!)
        let fourth = Int(firstRoundFourthNumberLabel.text!)
        var array1 : Array = [first!, second!, third!, fourth!]
        var answer : Array = [firstGuessNumber, secondGuessNumber, thirdGuessNumber, fourthGuessNumber]
        
        if (first == second) || (first == third) || (first == fourth) || (second == third) || (third == fourth) {
            firstRoundFirstNumberLabel.text = nil
            firstRoundSecondNumberLabel.text = nil
            firstRoundThirdNumberLabel.text = nil
            firstRoundFourthNumberLabel.text = nil
            
            let alert = UIAlertController(title: "숫자가 중복되었습니다", message: nil, preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
            
            print("중복")
            return
        }
        
        if answer == array1 {
            print("answer : \(firstRoundFirstNumberLabel.text!)\(firstRoundSecondNumberLabel.text!)\(firstRoundThirdNumberLabel.text!)\(firstRoundFourthNumberLabel.text!)")
            let alert = UIAlertController(title: "YOU WIN!!", message: nil, preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
            reset()
            return
        } else {
            if Int(firstRoundFirstNumberLabel.text!) == firstGuessNumber {
                firstStrikeCount += 1
            }
            if Int(firstRoundSecondNumberLabel.text!) == secondGuessNumber {
                firstStrikeCount += 1
            }
            if Int(firstRoundThirdNumberLabel.text!) == thirdGuessNumber {
                firstStrikeCount += 1
            }
            if Int(firstRoundFourthNumberLabel.text!) == fourthGuessNumber {
                firstStrikeCount += 1
            }
            
            firstRoundStrikeLabel.text = "\(firstStrikeCount)"
            
            for a in array1 {
                if answer.contains(a), let idx1 = array1.firstIndex(of: a), let idx2 = answer.firstIndex(of: a) {
                    array1.remove(at: idx1)
                    answer.remove(at: idx2)
                }
            }
                firstRoundBallLabel.text = "\(4 - array1.count - firstStrikeCount)"
        }
        roundCount = 2
    }
    
    func checkSecondRound() {
        let first = Int(secondRoundFirstNumberLabel.text!)
        let second = Int(secondRoundSecondNumberLabel.text!)
        let third = Int(secondRoundThirdNumberLabel.text!)
        let fourth = Int(secondRoundFourthNumberLabel.text!)
        var array2: Array = [first!, second!, third!, fourth!]
        var answer : Array = [firstGuessNumber, secondGuessNumber, thirdGuessNumber, fourthGuessNumber]
        
        if (first == second) || (first == third) || (first == fourth) || (second == third) || (third == fourth) {
            secondRoundFirstNumberLabel.text = nil
            secondRoundSecondNumberLabel.text = nil
            secondRoundThirdNumberLabel.text = nil
            secondRoundFourthNumberLabel.text = nil
            
            let alert = UIAlertController(title: "숫자가 중복되었습니다", message: nil, preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
            
            print("중복")
            return
        }
        
        if answer == array2 {
            print("answer : \(secondRoundFirstNumberLabel.text!)\(secondRoundSecondNumberLabel.text!)\(secondRoundThirdNumberLabel.text!)\(secondRoundFourthNumberLabel.text!)")
            let alert = UIAlertController(title: "YOU WIN!!", message: nil, preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
            reset()
            return
        } else {
            if Int(secondRoundFirstNumberLabel.text!) == firstGuessNumber {
                secondStrikeCount += 1
            }
            if Int(secondRoundSecondNumberLabel.text!) == secondGuessNumber {
                secondStrikeCount += 1
            }
            if Int(secondRoundThirdNumberLabel.text!) == thirdGuessNumber {
                secondStrikeCount += 1
            }
            if Int(secondRoundFourthNumberLabel.text!) == fourthGuessNumber {
                secondStrikeCount += 1
            }
            
            secondRoundStrikeLabel.text = "\(secondStrikeCount)"
            
            for a in array2 {
                if answer.contains(a), let idx1 = array2.firstIndex(of: a), let idx2 = answer.firstIndex(of: a) {
                    array2.remove(at: idx1)
                    answer.remove(at: idx2)
                }
            }
                secondRoundBallLabel.text = "\(4 - array2.count - secondStrikeCount)"
        }
        roundCount = 3
    }
    
    func checkThirdRound() {
        let first = Int(thirdRoundFirstNumberLabel.text!)
        let second = Int(thirdRoundSecondNumberLabel.text!)
        let third = Int(thirdRoundThirdNumberLabel.text!)
        let fourth = Int(thirdRoundFourthNumberLabel.text!)
        var array3: Array = [first!, second!, third!, fourth!]
        var answer : Array = [firstGuessNumber, secondGuessNumber, thirdGuessNumber, fourthGuessNumber]
        
        if (first == second) || (first == third) || (first == fourth) || (second == third) || (third == fourth) {
            thirdRoundFirstNumberLabel.text = nil
            thirdRoundSecondNumberLabel.text = nil
            thirdRoundThirdNumberLabel.text = nil
            thirdRoundFourthNumberLabel.text = nil
            
            let alert = UIAlertController(title: "숫자가 중복되었습니다", message: nil, preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
            
            print("중복")
            return
        }
        
        if answer == array3 {
            print("answer : \(thirdRoundFirstNumberLabel.text!)\(thirdRoundSecondNumberLabel.text!)\(thirdRoundThirdNumberLabel.text!)\(thirdRoundFourthNumberLabel.text!)")
            let alert = UIAlertController(title: "YOU WIN!!", message: nil, preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
            reset()
            return
        } else {
            if Int(thirdRoundFirstNumberLabel.text!) == firstGuessNumber {
                thirdStrikeCount += 1
            }
            if Int(thirdRoundSecondNumberLabel.text!) == secondGuessNumber {
                thirdStrikeCount += 1
            }
            if Int(thirdRoundThirdNumberLabel.text!) == thirdGuessNumber {
                thirdStrikeCount += 1
            }
            if Int(thirdRoundFourthNumberLabel.text!) == fourthGuessNumber {
                thirdStrikeCount += 1
            }
            
            thirdRoundStrikeLabel.text = "\(thirdStrikeCount)"
            
            for a in array3 {
                if answer.contains(a), let idx1 = array3.firstIndex(of: a), let idx2 = answer.firstIndex(of: a) {
                    array3.remove(at: idx1)
                    answer.remove(at: idx2)
                }
            }
                thirdRoundBallLabel.text = "\(4 - array3.count - thirdStrikeCount)"
        }
        roundCount = 4
    }
    
    func checkFourthRound() {
        let first = Int(fourthRoundFirstNumberLabel.text!)
        let second = Int(fourthRoundSecondNumberLabel.text!)
        let third = Int(fourthRoundThirdNumberLabel.text!)
        let fourth = Int(fourthRoundFourthNumberLabel.text!)
        var array4: Array = [first!, second!, third!, fourth!]
        var answer : Array = [firstGuessNumber, secondGuessNumber, thirdGuessNumber, fourthGuessNumber]
        
        if (first == second) || (first == third) || (first == fourth) || (second == third) || (third == fourth) {
            fourthRoundFirstNumberLabel.text = nil
            fourthRoundSecondNumberLabel.text = nil
            fourthRoundThirdNumberLabel.text = nil
            fourthRoundFourthNumberLabel.text = nil
            
            let alert = UIAlertController(title: "숫자가 중복되었습니다", message: nil, preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
            
            print("중복")
            return
        }
        
        if answer == array4 {
            print("answer : \(fourthRoundFirstNumberLabel.text!)\(fourthRoundSecondNumberLabel.text!)\(fourthRoundThirdNumberLabel.text!)\(fourthRoundFourthNumberLabel.text!)")
            let alert = UIAlertController(title: "YOU WIN!!", message: nil, preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
            reset()
            return
        } else {
            if Int(fourthRoundFirstNumberLabel.text!) == firstGuessNumber {
                fourthStrikeCount += 1
            }
            if Int(fourthRoundSecondNumberLabel.text!) == secondGuessNumber {
                fourthStrikeCount += 1
            }
            if Int(fourthRoundThirdNumberLabel.text!) == thirdGuessNumber {
                fourthStrikeCount += 1
            }
            if Int(fourthRoundFourthNumberLabel.text!) == fourthGuessNumber {
                fourthStrikeCount += 1
            }
            
            fourthRoundStrikeLabel.text = "\(fourthStrikeCount)"
            
            for a in array4 {
                if answer.contains(a), let idx1 = array4.firstIndex(of: a), let idx2 = answer.firstIndex(of: a) {
                    array4.remove(at: idx1)
                    answer.remove(at: idx2)
                }
            }
                fourthRoundBallLabel.text = "\(4 - array4.count - fourthStrikeCount)"
        }
        roundCount = 5
    }
    
    func checkFifthRound() {
        let first = Int(fifthRoundFirstNumberLabel.text!)
        let second = Int(fifthRoundSecondNumberLabel.text!)
        let third = Int(fifthRoundThirdNumberLabel.text!)
        let fourth = Int(fifthRoundFourthNumberLabel.text!)
        var array5: Array = [first!, second!, third!, fourth!]
        var answer : Array = [firstGuessNumber, secondGuessNumber, thirdGuessNumber, fourthGuessNumber]
        
        if (first == second) || (first == third) || (first == fourth) || (second == third) || (third == fourth) {
            fifthRoundFirstNumberLabel.text = nil
            fifthRoundSecondNumberLabel.text = nil
            fifthRoundThirdNumberLabel.text = nil
            fifthRoundFourthNumberLabel.text = nil
            
            let alert = UIAlertController(title: "숫자가 중복되었습니다", message: nil, preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
            
            print("중복")
            return
        }
        
        if answer == array5 {
            print("answer : \(fifthRoundFirstNumberLabel.text!)\(fifthRoundSecondNumberLabel.text!)\(fifthRoundThirdNumberLabel.text!)\(fifthRoundFourthNumberLabel.text!)")
            let alert = UIAlertController(title: "YOU WIN!!", message: nil, preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
            reset()
            return
        } else {
            if Int(fifthRoundFirstNumberLabel.text!) == firstGuessNumber {
                fifthStrikeCount += 1
            }
            if Int(fifthRoundSecondNumberLabel.text!) == secondGuessNumber {
                fifthStrikeCount += 1
            }
            if Int(fifthRoundThirdNumberLabel.text!) == thirdGuessNumber {
                fifthStrikeCount += 1
            }
            if Int(fifthRoundFourthNumberLabel.text!) == fourthGuessNumber {
                fifthStrikeCount += 1
            }
            
            fifthRoundStrikeLabel.text = "\(fifthStrikeCount)"
            
            for a in array5 {
                if answer.contains(a), let idx1 = array5.firstIndex(of: a), let idx2 = answer.firstIndex(of: a) {
                    array5.remove(at: idx1)
                    answer.remove(at: idx2)
                }
            }
                fifthRoundBallLabel.text = "\(4 - array5.count - fifthStrikeCount)"
        }
        roundCount = 6
    }
    
    func checkSixthRound() {
        let first = Int(sixthRoundFirstNumberLabel.text!)
        let second = Int(sixthRoundSecondNumberLabel.text!)
        let third = Int(sixthRoundThirdNumberLabel.text!)
        let fourth = Int(sixthRoundFourthNumberLabel.text!)
        var array6: Array = [first!, second!, third!, fourth!]
        var answer : Array = [firstGuessNumber, secondGuessNumber, thirdGuessNumber, fourthGuessNumber]
        
        if (first == second) || (first == third) || (first == fourth) || (second == third) || (third == fourth) {
            sixthRoundFirstNumberLabel.text = nil
            sixthRoundSecondNumberLabel.text = nil
            sixthRoundThirdNumberLabel.text = nil
            sixthRoundFourthNumberLabel.text = nil
            
            let alert = UIAlertController(title: "숫자가 중복되었습니다", message: nil, preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
            
            print("중복")
            return
        }
        
        if answer == array6 {
            print("answer : \(sixthRoundFirstNumberLabel.text!)\(thirdRoundSecondNumberLabel.text!)\(thirdRoundThirdNumberLabel.text!)\(sixthRoundFourthNumberLabel.text!)")
            let alert = UIAlertController(title: "YOU WIN!!", message: nil, preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
            reset()
            return
        } else {
            if Int(sixthRoundFirstNumberLabel.text!) == firstGuessNumber {
                sixthStrikeCount += 1
            }
            if Int(sixthRoundSecondNumberLabel.text!) == secondGuessNumber {
                sixthStrikeCount += 1
            }
            if Int(sixthRoundThirdNumberLabel.text!) == thirdGuessNumber {
                sixthStrikeCount += 1
            }
            if Int(sixthRoundFourthNumberLabel.text!) == fourthGuessNumber {
                sixthStrikeCount += 1
            }
            
            sixthRoundStrikeLabel.text = "\(sixthStrikeCount)"
            
            for a in array6 {
                if answer.contains(a), let idx1 = array6.firstIndex(of: a), let idx2 = answer.firstIndex(of: a) {
                    array6.remove(at: idx1)
                    answer.remove(at: idx2)
                }
            }
                sixthRoundBallLabel.text = "\(4 - array6.count - sixthStrikeCount)"
        }
        roundCount = 7
    }
    
    func checkSeventhRound() {
        let first = Int(seventhRoundFirstNumberLabel.text!)
        let second = Int(seventhRoundSecondNumberLabel.text!)
        let third = Int(seventhRoundThirdNumberLabel.text!)
        let fourth = Int(seventhRoundFourthNumberLabel.text!)
        var array7: Array = [first!, second!, third!, fourth!]
        var answer : Array = [firstGuessNumber, secondGuessNumber, thirdGuessNumber, fourthGuessNumber]
        
        if (first == second) || (first == third) || (first == fourth) || (second == third) || (third == fourth) {
            seventhRoundFirstNumberLabel.text = nil
            seventhRoundSecondNumberLabel.text = nil
            seventhRoundThirdNumberLabel.text = nil
            seventhRoundFourthNumberLabel.text = nil
            
            let alert = UIAlertController(title: "숫자가 중복되었습니다", message: nil, preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
            
            print("중복")
            return
        }
        
        if answer == array7 {
            print("answer : \(seventhRoundFirstNumberLabel.text!)\(thirdRoundSecondNumberLabel.text!)\(thirdRoundThirdNumberLabel.text!)\(seventhRoundFourthNumberLabel.text!)")
            let alert = UIAlertController(title: "YOU WIN!!", message: nil, preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
            reset()
            return
        } else {
            if Int(seventhRoundFirstNumberLabel.text!) == firstGuessNumber {
                seventhStrikeCount += 1
            }
            if Int(seventhRoundSecondNumberLabel.text!) == secondGuessNumber {
                seventhStrikeCount += 1
            }
            if Int(seventhRoundThirdNumberLabel.text!) == thirdGuessNumber {
                seventhStrikeCount += 1
            }
            if Int(seventhRoundFourthNumberLabel.text!) == fourthGuessNumber {
                seventhStrikeCount += 1
            }
            
            seventhRoundStrikeLabel.text = "\(seventhStrikeCount)"
            
            for a in array7 {
                if answer.contains(a), let idx1 = array7.firstIndex(of: a), let idx2 = answer.firstIndex(of: a) {
                    array7.remove(at: idx1)
                    answer.remove(at: idx2)
                }
            }
                seventhRoundBallLabel.text = "\(4 - array7.count - seventhStrikeCount)"
        }
        roundCount = 8
    }
    
    func checkEighthRound() {
        let first = Int(eighthRoundFirstNumberLabel.text!)
        let second = Int(eighthRoundSecondNumberLabel.text!)
        let third = Int(eighthRoundThirdNumberLabel.text!)
        let fourth = Int(eighthRoundFourthNumberLabel.text!)
        var array8: Array = [first!, second!, third!, fourth!]
        var answer : Array = [firstGuessNumber, secondGuessNumber, thirdGuessNumber, fourthGuessNumber]
        
        if (first == second) || (first == third) || (first == fourth) || (second == third) || (third == fourth) {
            eighthRoundFirstNumberLabel.text = nil
            eighthRoundSecondNumberLabel.text = nil
            eighthRoundThirdNumberLabel.text = nil
            eighthRoundFourthNumberLabel.text = nil
            
            let alert = UIAlertController(title: "숫자가 중복되었습니다", message: nil, preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
            
            print("중복")
            return
        }
        
        if answer == array8 {
            print("answer : \(eighthRoundFirstNumberLabel.text!)\(thirdRoundSecondNumberLabel.text!)\(thirdRoundThirdNumberLabel.text!)\(eighthRoundFourthNumberLabel.text!)")
            let alert = UIAlertController(title: "YOU WIN!!", message: nil, preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
            reset()
            return
        } else {
            if Int(eighthRoundFirstNumberLabel.text!) == firstGuessNumber {
                eighthStrikeCount += 1
            }
            if Int(eighthRoundSecondNumberLabel.text!) == secondGuessNumber {
                eighthStrikeCount += 1
            }
            if Int(eighthRoundThirdNumberLabel.text!) == thirdGuessNumber {
                eighthStrikeCount += 1
            }
            if Int(eighthRoundFourthNumberLabel.text!) == fourthGuessNumber {
                eighthStrikeCount += 1
            }
            
            eighthRoundStrikeLabel.text = "\(eighthStrikeCount)"
            
            for a in array8 {
                if answer.contains(a), let idx1 = array8.firstIndex(of: a), let idx2 = answer.firstIndex(of: a) {
                    array8.remove(at: idx1)
                    answer.remove(at: idx2)
                }
            }
                eighthRoundBallLabel.text = "\(4 - array8.count - eighthStrikeCount)"
        }
        roundCount = 9
    }
    
    func checkNinthRound() {
        let first = Int(ninthRoundFirstNumberLabel.text!)
        let second = Int(ninthRoundSecondNumberLabel.text!)
        let third = Int(ninthRoundThirdNumberLabel.text!)
        let fourth = Int(ninthRoundFourthNumberLabel.text!)
        var array9: Array = [first!, second!, third!, fourth!]
        var answer : Array = [firstGuessNumber, secondGuessNumber, thirdGuessNumber, fourthGuessNumber]
        
        if (first == second) || (first == third) || (first == fourth) || (second == third) || (third == fourth) {
            ninthRoundFirstNumberLabel.text = nil
            ninthRoundSecondNumberLabel.text = nil
            ninthRoundThirdNumberLabel.text = nil
            ninthRoundFourthNumberLabel.text = nil
            
            let alert = UIAlertController(title: "숫자가 중복되었습니다", message: nil, preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
            
            print("중복")
            return
        }
        
        if answer == array9 {
            print("answer : \(ninthRoundFirstNumberLabel.text!)\(thirdRoundSecondNumberLabel.text!)\(thirdRoundThirdNumberLabel.text!)\(ninthRoundFourthNumberLabel.text!)")
            let alert = UIAlertController(title: "YOU WIN!!", message: nil, preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
            reset()
            return
        } else {
            if Int(ninthRoundFirstNumberLabel.text!) == firstGuessNumber {
                ninthStrikeCount += 1
            }
            if Int(ninthRoundSecondNumberLabel.text!) == secondGuessNumber {
                ninthStrikeCount += 1
            }
            if Int(ninthRoundThirdNumberLabel.text!) == thirdGuessNumber {
                ninthStrikeCount += 1
            }
            if Int(ninthRoundFourthNumberLabel.text!) == fourthGuessNumber {
                ninthStrikeCount += 1
            }
            
            ninthRoundStrikeLabel.text = "\(ninthStrikeCount)"
            
            for a in array9 {
                if answer.contains(a), let idx1 = array9.firstIndex(of: a), let idx2 = answer.firstIndex(of: a) {
                    array9.remove(at: idx1)
                    answer.remove(at: idx2)
                }
            }
                ninthRoundBallLabel.text = "\(4 - array9.count - ninthStrikeCount)"
        }
    }
    
    @IBOutlet var firstRoundFirstNumberLabel: UILabel!
    @IBOutlet var secondRoundFirstNumberLabel: UILabel!
    @IBOutlet var thirdRoundFirstNumberLabel: UILabel!
    @IBOutlet var fourthRoundFirstNumberLabel: UILabel!
    @IBOutlet var fifthRoundFirstNumberLabel: UILabel!
    @IBOutlet var sixthRoundFirstNumberLabel: UILabel!
    @IBOutlet var seventhRoundFirstNumberLabel: UILabel!
    @IBOutlet var eighthRoundFirstNumberLabel: UILabel!
    @IBOutlet var ninthRoundFirstNumberLabel: UILabel!
    
    @IBOutlet var firstRoundSecondNumberLabel: UILabel!
    @IBOutlet var secondRoundSecondNumberLabel: UILabel!
    @IBOutlet var thirdRoundSecondNumberLabel: UILabel!
    @IBOutlet var fourthRoundSecondNumberLabel: UILabel!
    @IBOutlet var fifthRoundSecondNumberLabel: UILabel!
    @IBOutlet var sixthRoundSecondNumberLabel: UILabel!
    @IBOutlet var seventhRoundSecondNumberLabel: UILabel!
    @IBOutlet var eighthRoundSecondNumberLabel: UILabel!
    @IBOutlet var ninthRoundSecondNumberLabel: UILabel!
    
    @IBOutlet var firstRoundThirdNumberLabel: UILabel!
    @IBOutlet var secondRoundThirdNumberLabel: UILabel!
    @IBOutlet var thirdRoundThirdNumberLabel: UILabel!
    @IBOutlet var fourthRoundThirdNumberLabel: UILabel!
    @IBOutlet var fifthRoundThirdNumberLabel: UILabel!
    @IBOutlet var sixthRoundThirdNumberLabel: UILabel!
    @IBOutlet var seventhRoundThirdNumberLabel: UILabel!
    @IBOutlet var eighthRoundThirdNumberLabel: UILabel!
    @IBOutlet var ninthRoundThirdNumberLabel: UILabel!
    
    @IBOutlet var firstRoundFourthNumberLabel: UILabel!
    @IBOutlet var secondRoundFourthNumberLabel: UILabel!
    @IBOutlet var thirdRoundFourthNumberLabel: UILabel!
    @IBOutlet var fourthRoundFourthNumberLabel: UILabel!
    @IBOutlet var fifthRoundFourthNumberLabel: UILabel!
    @IBOutlet var sixthRoundFourthNumberLabel: UILabel!
    @IBOutlet var seventhRoundFourthNumberLabel: UILabel!
    @IBOutlet var eighthRoundFourthNumberLabel: UILabel!
    @IBOutlet var ninthRoundFourthNumberLabel: UILabel!
    
    @IBOutlet var firstRoundStrikeLabel: UILabel!
    @IBOutlet var secondRoundStrikeLabel: UILabel!
    @IBOutlet var thirdRoundStrikeLabel: UILabel!
    @IBOutlet var fourthRoundStrikeLabel: UILabel!
    @IBOutlet var fifthRoundStrikeLabel: UILabel!
    @IBOutlet var sixthRoundStrikeLabel: UILabel!
    @IBOutlet var seventhRoundStrikeLabel: UILabel!
    @IBOutlet var eighthRoundStrikeLabel: UILabel!
    @IBOutlet var ninthRoundStrikeLabel: UILabel!
    
    @IBOutlet var firstRoundBallLabel: UILabel!
    @IBOutlet var secondRoundBallLabel: UILabel!
    @IBOutlet var thirdRoundBallLabel: UILabel!
    @IBOutlet var fourthRoundBallLabel: UILabel!
    @IBOutlet var fifthRoundBallLabel: UILabel!
    @IBOutlet var sixthRoundBallLabel: UILabel!
    @IBOutlet var seventhRoundBallLabel: UILabel!
    @IBOutlet var eighthRoundBallLabel: UILabel!
    @IBOutlet var ninthRoundBallLabel: UILabel!
    
    @IBOutlet var answerLable: UILabel!
    
    //    var firstFirst: Int = 0
    //    var firstSecond: Int = 0
    //    var firstThird: Int = 0
    //    var firstFourth: Int = 0
    //    var secondFirst: Int = 0
    //    var secondSecond: Int = 0
    //    var secondThird: Int = 0
    //    var secondFourth: Int = 0
    //    var thirdFirst: Int = 0
    //    var thirdSecond: Int = 0
    //    var thirdThird: Int = 0
    //    var thirdFourth: Int = 0
    //    var fourthFirst: Int = 0
    //    var fourthSecond: Int = 0
    //    var fourthThird: Int = 0
    //    var fourthFourth: Int = 0
    //    var fifthFirst: Int = 0
    //    var fifthSecond: Int = 0
    //    var fifthThird: Int = 0
    //    var fifthFourth: Int = 0
    //    var sixthFirst: Int = 0
    //    var sixthSecond: Int = 0
    //    var sixthThird: Int = 0
    //    var sixthFourth: Int = 0
    //    var seventhFirst: Int = 0
    //    var seventhSecond: Int = 0
    //    var seventhThird: Int = 0
    //    var seventhFourth: Int = 0
    //    var ejghthFirst: Int = 0
    //    var ejghthSecond: Int = 0
    //    var ejghthThird: Int = 0
    //    var ejghthFourth: Int = 0
    //    var ninthFirst: Int = 0
    //    var ninthSecond: Int = 0
    //    var ninthThird: Int = 0
    //    var ninthFourth: Int = 0
    
    
    func reset() {
        firstRoundFirstNumberLabel.text = nil
        secondRoundFirstNumberLabel.text = nil
        thirdRoundFirstNumberLabel.text = nil
        fourthRoundFirstNumberLabel.text = nil
        fifthRoundFirstNumberLabel.text = nil
        sixthRoundFirstNumberLabel.text = nil
        seventhRoundFirstNumberLabel.text = nil
        eighthRoundFirstNumberLabel.text = nil
        ninthRoundFirstNumberLabel.text = nil
        
        firstRoundSecondNumberLabel.text = nil
        secondRoundSecondNumberLabel.text = nil
        thirdRoundSecondNumberLabel.text = nil
        fourthRoundSecondNumberLabel.text = nil
        fifthRoundSecondNumberLabel.text = nil
        sixthRoundSecondNumberLabel.text = nil
        seventhRoundSecondNumberLabel.text = nil
        eighthRoundSecondNumberLabel.text = nil
        ninthRoundSecondNumberLabel.text = nil
        
        firstRoundThirdNumberLabel.text = nil
        secondRoundThirdNumberLabel.text = nil
        thirdRoundThirdNumberLabel.text = nil
        fourthRoundThirdNumberLabel.text = nil
        fifthRoundThirdNumberLabel.text = nil
        sixthRoundThirdNumberLabel.text = nil
        seventhRoundThirdNumberLabel.text = nil
        eighthRoundThirdNumberLabel.text = nil
        ninthRoundThirdNumberLabel.text = nil
        
        firstRoundFourthNumberLabel.text = nil
        secondRoundFourthNumberLabel.text = nil
        thirdRoundFourthNumberLabel.text = nil
        fourthRoundFourthNumberLabel.text = nil
        fifthRoundFourthNumberLabel.text = nil
        sixthRoundFourthNumberLabel.text = nil
        seventhRoundFourthNumberLabel.text = nil
        eighthRoundFourthNumberLabel.text = nil
        ninthRoundFourthNumberLabel.text = nil
        
        firstRoundStrikeLabel.text = nil
        secondRoundStrikeLabel.text = nil
        thirdRoundStrikeLabel.text = nil
        fourthRoundStrikeLabel.text = nil
        fifthRoundStrikeLabel.text = nil
        sixthRoundStrikeLabel.text = nil
        seventhRoundStrikeLabel.text = nil
        eighthRoundStrikeLabel.text = nil
        ninthRoundStrikeLabel.text = nil
        
        firstRoundBallLabel.text = nil
        secondRoundBallLabel.text = nil
        thirdRoundBallLabel.text = nil
        fourthRoundBallLabel.text = nil
        fifthRoundBallLabel.text = nil
        sixthRoundBallLabel.text = nil
        seventhRoundBallLabel.text = nil
        eighthRoundBallLabel.text = nil
        ninthRoundBallLabel.text = nil
        
        firstGuessNumber = 0
        secondGuessNumber = 0
        thirdGuessNumber = 0
        fourthGuessNumber = 0
        roundCount = 1
        firstBallCount = 0
        secondBallCount = 0
        thirdBallCount = 0
        fourthBallCount = 0
        fifthBallCount = 0
        sixthBallCount = 0
        seventhBallCount = 0
        eighthBallCount = 0
        ninthBallCount = 0
        firstStrikeCount = 0
        secondStrikeCount = 0
        thirdStrikeCount = 0
        fourthStrikeCount = 0
        fifthStrikeCount = 0
        sixthStrikeCount = 0
        seventhStrikeCount = 0
        eighthStrikeCount = 0
        ninthStrikeCount = 0
        
        //print(arrayNumbers.randomElement()!)
        shuffleSet()
        
    }
    
    //var firstRandomNumbers:Int = arrayNumbers.randomElement()!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reset()
    }
    
    
    @IBAction func numberPad1(_ sender: UIButton) {
        print("1")
        if roundCount == 1 {
            if firstRoundFirstNumberLabel.text == nil {
                firstRoundFirstNumberLabel.text = String(1)
            } else if firstRoundSecondNumberLabel.text == nil {
                firstRoundSecondNumberLabel.text = String(1)
            } else if firstRoundThirdNumberLabel.text == nil {
                firstRoundThirdNumberLabel.text = String(1)
            } else if firstRoundFourthNumberLabel.text == nil {
                firstRoundFourthNumberLabel.text = String(1)
            }
        } else if roundCount == 2 {
            if secondRoundFirstNumberLabel.text == nil {
                secondRoundFirstNumberLabel.text = String(1)
            } else if secondRoundSecondNumberLabel.text == nil {
                secondRoundSecondNumberLabel.text = String(1)
            } else if secondRoundThirdNumberLabel.text == nil {
                secondRoundThirdNumberLabel.text = String(1)
            } else if secondRoundFourthNumberLabel.text == nil {
                secondRoundFourthNumberLabel.text = String(1)
            }
        } else if roundCount == 3 {
            if thirdRoundFirstNumberLabel.text == nil {
                thirdRoundFirstNumberLabel.text = String(1)
            } else if thirdRoundSecondNumberLabel.text == nil {
                thirdRoundSecondNumberLabel.text = String(1)
            } else if thirdRoundThirdNumberLabel.text == nil {
                thirdRoundThirdNumberLabel.text = String(1)
            } else if thirdRoundFourthNumberLabel.text == nil {
                thirdRoundFourthNumberLabel.text = String(1)
            }
        } else if roundCount == 4 {
            if fourthRoundFirstNumberLabel.text == nil {
                fourthRoundFirstNumberLabel.text = String(1)
            } else if fourthRoundSecondNumberLabel.text == nil {
                fourthRoundSecondNumberLabel.text = String(1)
            } else if fourthRoundThirdNumberLabel.text == nil {
                fourthRoundThirdNumberLabel.text = String(1)
            } else if fourthRoundFourthNumberLabel.text == nil {
                fourthRoundFourthNumberLabel.text = String(1)
            }
        } else if roundCount == 5 {
            if fifthRoundFirstNumberLabel.text == nil {
                fifthRoundFirstNumberLabel.text = String(1)
            } else if fifthRoundSecondNumberLabel.text == nil {
                fifthRoundSecondNumberLabel.text = String(1)
            } else if fifthRoundThirdNumberLabel.text == nil {
                fifthRoundThirdNumberLabel.text = String(1)
            } else if fifthRoundFourthNumberLabel.text == nil {
                fifthRoundFourthNumberLabel.text = String(1)
            }
        } else if roundCount == 6 {
            if sixthRoundFirstNumberLabel.text == nil {
                sixthRoundFirstNumberLabel.text = String(1)
            } else if sixthRoundSecondNumberLabel.text == nil {
                sixthRoundSecondNumberLabel.text = String(1)
            } else if sixthRoundThirdNumberLabel.text == nil {
                sixthRoundThirdNumberLabel.text = String(1)
            } else if sixthRoundFourthNumberLabel.text == nil {
                sixthRoundFourthNumberLabel.text = String(1)
            }
        } else if roundCount == 7 {
            if seventhRoundFirstNumberLabel.text == nil {
                seventhRoundFirstNumberLabel.text = String(1)
            } else if seventhRoundSecondNumberLabel.text == nil {
                seventhRoundSecondNumberLabel.text = String(1)
            } else if seventhRoundThirdNumberLabel.text == nil {
                seventhRoundThirdNumberLabel.text = String(1)
            } else if seventhRoundFourthNumberLabel.text == nil {
                seventhRoundFourthNumberLabel.text = String(1)
            }
        } else if roundCount == 8 {
            if eighthRoundFirstNumberLabel.text == nil {
                eighthRoundFirstNumberLabel.text = String(1)
            } else if eighthRoundSecondNumberLabel.text == nil {
                eighthRoundSecondNumberLabel.text = String(1)
            } else if eighthRoundThirdNumberLabel.text == nil {
                eighthRoundThirdNumberLabel.text = String(1)
            } else if eighthRoundFourthNumberLabel.text == nil {
                eighthRoundFourthNumberLabel.text = String(1)
            }
        } else if roundCount == 9 {
            if ninthRoundFirstNumberLabel.text == nil {
                ninthRoundFirstNumberLabel.text = String(1)
            } else if ninthRoundSecondNumberLabel.text == nil {
                ninthRoundSecondNumberLabel.text = String(1)
            } else if ninthRoundThirdNumberLabel.text == nil {
                ninthRoundThirdNumberLabel.text = String(1)
            } else if ninthRoundFourthNumberLabel.text == nil {
                ninthRoundFourthNumberLabel.text = String(1)
            }
        }
    }
    
    @IBAction func numberPad2(_ sender: UIButton) {
        print("2")
        if roundCount == 1 {
            if firstRoundFirstNumberLabel.text == nil {
                firstRoundFirstNumberLabel.text = String(2)
            } else if firstRoundSecondNumberLabel.text == nil {
                firstRoundSecondNumberLabel.text = String(2)
            } else if firstRoundThirdNumberLabel.text == nil {
                firstRoundThirdNumberLabel.text = String(2)
            } else if firstRoundFourthNumberLabel.text == nil {
                firstRoundFourthNumberLabel.text = String(2)
            }
        } else if roundCount == 2 {
            if secondRoundFirstNumberLabel.text == nil {
                secondRoundFirstNumberLabel.text = String(2)
            } else if secondRoundSecondNumberLabel.text == nil {
                secondRoundSecondNumberLabel.text = String(2)
            } else if secondRoundThirdNumberLabel.text == nil {
                secondRoundThirdNumberLabel.text = String(2)
            } else if secondRoundFourthNumberLabel.text == nil {
                secondRoundFourthNumberLabel.text = String(2)
            }
        } else if roundCount == 3 {
            if thirdRoundFirstNumberLabel.text == nil {
                thirdRoundFirstNumberLabel.text = String(2)
            } else if thirdRoundSecondNumberLabel.text == nil {
                thirdRoundSecondNumberLabel.text = String(2)
            } else if thirdRoundThirdNumberLabel.text == nil {
                thirdRoundThirdNumberLabel.text = String(2)
            } else if thirdRoundFourthNumberLabel.text == nil {
                thirdRoundFourthNumberLabel.text = String(2)
            }
        } else if roundCount == 4 {
            if fourthRoundFirstNumberLabel.text == nil {
                fourthRoundFirstNumberLabel.text = String(2)
            } else if fourthRoundSecondNumberLabel.text == nil {
                fourthRoundSecondNumberLabel.text = String(2)
            } else if fourthRoundThirdNumberLabel.text == nil {
                fourthRoundThirdNumberLabel.text = String(2)
            } else if fourthRoundFourthNumberLabel.text == nil {
                fourthRoundFourthNumberLabel.text = String(2)
            }
        } else if roundCount == 5 {
            if fifthRoundFirstNumberLabel.text == nil {
                fifthRoundFirstNumberLabel.text = String(2)
            } else if fifthRoundSecondNumberLabel.text == nil {
                fifthRoundSecondNumberLabel.text = String(2)
            } else if fifthRoundThirdNumberLabel.text == nil {
                fifthRoundThirdNumberLabel.text = String(2)
            } else if fifthRoundFourthNumberLabel.text == nil {
                fifthRoundFourthNumberLabel.text = String(2)
            }
        } else if roundCount == 6 {
            if sixthRoundFirstNumberLabel.text == nil {
                sixthRoundFirstNumberLabel.text = String(2)
            } else if sixthRoundSecondNumberLabel.text == nil {
                sixthRoundSecondNumberLabel.text = String(2)
            } else if sixthRoundThirdNumberLabel.text == nil {
                sixthRoundThirdNumberLabel.text = String(2)
            } else if sixthRoundFourthNumberLabel.text == nil {
                sixthRoundFourthNumberLabel.text = String(2)
            }
        } else if roundCount == 7 {
            if seventhRoundFirstNumberLabel.text == nil {
                seventhRoundFirstNumberLabel.text = String(2)
            } else if seventhRoundSecondNumberLabel.text == nil {
                seventhRoundSecondNumberLabel.text = String(2)
            } else if seventhRoundThirdNumberLabel.text == nil {
                seventhRoundThirdNumberLabel.text = String(2)
            } else if seventhRoundFourthNumberLabel.text == nil {
                seventhRoundFourthNumberLabel.text = String(2)
            }
        } else if roundCount == 8 {
            if eighthRoundFirstNumberLabel.text == nil {
                eighthRoundFirstNumberLabel.text = String(2)
            } else if eighthRoundSecondNumberLabel.text == nil {
                eighthRoundSecondNumberLabel.text = String(2)
            } else if eighthRoundThirdNumberLabel.text == nil {
                eighthRoundThirdNumberLabel.text = String(2)
            } else if eighthRoundFourthNumberLabel.text == nil {
                eighthRoundFourthNumberLabel.text = String(2)
            }
        } else if roundCount == 9 {
            if ninthRoundFirstNumberLabel.text == nil {
                ninthRoundFirstNumberLabel.text = String(2)
            } else if ninthRoundSecondNumberLabel.text == nil {
                ninthRoundSecondNumberLabel.text = String(2)
            } else if ninthRoundThirdNumberLabel.text == nil {
                ninthRoundThirdNumberLabel.text = String(2)
            } else if ninthRoundFourthNumberLabel.text == nil {
                ninthRoundFourthNumberLabel.text = String(2)
            }
        }
    }
    
    @IBAction func numberPad3(_ sender: UIButton) {
        print("3")
        if roundCount == 1 {
            if firstRoundFirstNumberLabel.text == nil {
                firstRoundFirstNumberLabel.text = String(3)
            } else if firstRoundSecondNumberLabel.text == nil {
                firstRoundSecondNumberLabel.text = String(3)
            } else if firstRoundThirdNumberLabel.text == nil {
                firstRoundThirdNumberLabel.text = String(3)
            } else if firstRoundFourthNumberLabel.text == nil {
                firstRoundFourthNumberLabel.text = String(3)
            }
        } else if roundCount == 2 {
            if secondRoundFirstNumberLabel.text == nil {
                secondRoundFirstNumberLabel.text = String(3)
            } else if secondRoundSecondNumberLabel.text == nil {
                secondRoundSecondNumberLabel.text = String(3)
            } else if secondRoundThirdNumberLabel.text == nil {
                secondRoundThirdNumberLabel.text = String(3)
            } else if secondRoundFourthNumberLabel.text == nil {
                secondRoundFourthNumberLabel.text = String(3)
            }
        } else if roundCount == 3 {
            if thirdRoundFirstNumberLabel.text == nil {
                thirdRoundFirstNumberLabel.text = String(3)
            } else if thirdRoundSecondNumberLabel.text == nil {
                thirdRoundSecondNumberLabel.text = String(3)
            } else if thirdRoundThirdNumberLabel.text == nil {
                thirdRoundThirdNumberLabel.text = String(3)
            } else if thirdRoundFourthNumberLabel.text == nil {
                thirdRoundFourthNumberLabel.text = String(3)
            }
        } else if roundCount == 4 {
            if fourthRoundFirstNumberLabel.text == nil {
                fourthRoundFirstNumberLabel.text = String(3)
            } else if fourthRoundSecondNumberLabel.text == nil {
                fourthRoundSecondNumberLabel.text = String(3)
            } else if fourthRoundThirdNumberLabel.text == nil {
                fourthRoundThirdNumberLabel.text = String(3)
            } else if fourthRoundFourthNumberLabel.text == nil {
                fourthRoundFourthNumberLabel.text = String(3)
            }
        } else if roundCount == 5 {
            if fifthRoundFirstNumberLabel.text == nil {
                fifthRoundFirstNumberLabel.text = String(3)
            } else if fifthRoundSecondNumberLabel.text == nil {
                fifthRoundSecondNumberLabel.text = String(3)
            } else if fifthRoundThirdNumberLabel.text == nil {
                fifthRoundThirdNumberLabel.text = String(3)
            } else if fifthRoundFourthNumberLabel.text == nil {
                fifthRoundFourthNumberLabel.text = String(3)
            }
        } else if roundCount == 6 {
            if sixthRoundFirstNumberLabel.text == nil {
                sixthRoundFirstNumberLabel.text = String(3)
            } else if sixthRoundSecondNumberLabel.text == nil {
                sixthRoundSecondNumberLabel.text = String(3)
            } else if sixthRoundThirdNumberLabel.text == nil {
                sixthRoundThirdNumberLabel.text = String(3)
            } else if sixthRoundFourthNumberLabel.text == nil {
                sixthRoundFourthNumberLabel.text = String(3)
            }
        } else if roundCount == 7 {
            if seventhRoundFirstNumberLabel.text == nil {
                seventhRoundFirstNumberLabel.text = String(3)
            } else if seventhRoundSecondNumberLabel.text == nil {
                seventhRoundSecondNumberLabel.text = String(3)
            } else if seventhRoundThirdNumberLabel.text == nil {
                seventhRoundThirdNumberLabel.text = String(3)
            } else if seventhRoundFourthNumberLabel.text == nil {
                seventhRoundFourthNumberLabel.text = String(3)
            }
        } else if roundCount == 8 {
            if eighthRoundFirstNumberLabel.text == nil {
                eighthRoundFirstNumberLabel.text = String(3)
            } else if eighthRoundSecondNumberLabel.text == nil {
                eighthRoundSecondNumberLabel.text = String(3)
            } else if eighthRoundThirdNumberLabel.text == nil {
                eighthRoundThirdNumberLabel.text = String(3)
            } else if eighthRoundFourthNumberLabel.text == nil {
                eighthRoundFourthNumberLabel.text = String(3)
            }
        } else if roundCount == 9 {
            if ninthRoundFirstNumberLabel.text == nil {
                ninthRoundFirstNumberLabel.text = String(3)
            } else if ninthRoundSecondNumberLabel.text == nil {
                ninthRoundSecondNumberLabel.text = String(3)
            } else if ninthRoundThirdNumberLabel.text == nil {
                ninthRoundThirdNumberLabel.text = String(3)
            } else if ninthRoundFourthNumberLabel.text == nil {
                ninthRoundFourthNumberLabel.text = String(3)
            }
        }
    }
    
    @IBAction func numberPad4(_ sender: UIButton) {
        print("4")
        if roundCount == 1 {
            if firstRoundFirstNumberLabel.text == nil {
                firstRoundFirstNumberLabel.text = String(4)
            } else if firstRoundSecondNumberLabel.text == nil {
                firstRoundSecondNumberLabel.text = String(4)
            } else if firstRoundThirdNumberLabel.text == nil {
                firstRoundThirdNumberLabel.text = String(4)
            } else if firstRoundFourthNumberLabel.text == nil {
                firstRoundFourthNumberLabel.text = String(4)
            }
        } else if roundCount == 2 {
            if secondRoundFirstNumberLabel.text == nil {
                secondRoundFirstNumberLabel.text = String(4)
            } else if secondRoundSecondNumberLabel.text == nil {
                secondRoundSecondNumberLabel.text = String(4)
            } else if secondRoundThirdNumberLabel.text == nil {
                secondRoundThirdNumberLabel.text = String(4)
            } else if secondRoundFourthNumberLabel.text == nil {
                secondRoundFourthNumberLabel.text = String(4)
            }
        } else if roundCount == 3 {
            if thirdRoundFirstNumberLabel.text == nil {
                thirdRoundFirstNumberLabel.text = String(4)
            } else if thirdRoundSecondNumberLabel.text == nil {
                thirdRoundSecondNumberLabel.text = String(4)
            } else if thirdRoundThirdNumberLabel.text == nil {
                thirdRoundThirdNumberLabel.text = String(4)
            } else if thirdRoundFourthNumberLabel.text == nil {
                thirdRoundFourthNumberLabel.text = String(4)
            }
        } else if roundCount == 4 {
            if fourthRoundFirstNumberLabel.text == nil {
                fourthRoundFirstNumberLabel.text = String(4)
            } else if fourthRoundSecondNumberLabel.text == nil {
                fourthRoundSecondNumberLabel.text = String(4)
            } else if fourthRoundThirdNumberLabel.text == nil {
                fourthRoundThirdNumberLabel.text = String(4)
            } else if fourthRoundFourthNumberLabel.text == nil {
                fourthRoundFourthNumberLabel.text = String(4)
            }
        } else if roundCount == 5 {
            if fifthRoundFirstNumberLabel.text == nil {
                fifthRoundFirstNumberLabel.text = String(4)
            } else if fifthRoundSecondNumberLabel.text == nil {
                fifthRoundSecondNumberLabel.text = String(4)
            } else if fifthRoundThirdNumberLabel.text == nil {
                fifthRoundThirdNumberLabel.text = String(4)
            } else if fifthRoundFourthNumberLabel.text == nil {
                fifthRoundFourthNumberLabel.text = String(4)
            }
        } else if roundCount == 6 {
            if sixthRoundFirstNumberLabel.text == nil {
                sixthRoundFirstNumberLabel.text = String(4)
            } else if sixthRoundSecondNumberLabel.text == nil {
                sixthRoundSecondNumberLabel.text = String(4)
            } else if sixthRoundThirdNumberLabel.text == nil {
                sixthRoundThirdNumberLabel.text = String(4)
            } else if sixthRoundFourthNumberLabel.text == nil {
                sixthRoundFourthNumberLabel.text = String(4)
            }
        } else if roundCount == 7 {
            if seventhRoundFirstNumberLabel.text == nil {
                seventhRoundFirstNumberLabel.text = String(4)
            } else if seventhRoundSecondNumberLabel.text == nil {
                seventhRoundSecondNumberLabel.text = String(4)
            } else if seventhRoundThirdNumberLabel.text == nil {
                seventhRoundThirdNumberLabel.text = String(4)
            } else if seventhRoundFourthNumberLabel.text == nil {
                seventhRoundFourthNumberLabel.text = String(4)
            }
        } else if roundCount == 8 {
            if eighthRoundFirstNumberLabel.text == nil {
                eighthRoundFirstNumberLabel.text = String(4)
            } else if eighthRoundSecondNumberLabel.text == nil {
                eighthRoundSecondNumberLabel.text = String(4)
            } else if eighthRoundThirdNumberLabel.text == nil {
                eighthRoundThirdNumberLabel.text = String(4)
            } else if eighthRoundFourthNumberLabel.text == nil {
                eighthRoundFourthNumberLabel.text = String(4)
            }
        } else if roundCount == 9 {
            if ninthRoundFirstNumberLabel.text == nil {
                ninthRoundFirstNumberLabel.text = String(4)
            } else if ninthRoundSecondNumberLabel.text == nil {
                ninthRoundSecondNumberLabel.text = String(4)
            } else if ninthRoundThirdNumberLabel.text == nil {
                ninthRoundThirdNumberLabel.text = String(4)
            } else if ninthRoundFourthNumberLabel.text == nil {
                ninthRoundFourthNumberLabel.text = String(4)
            }
        }
    }
    
    @IBAction func numberPad5(_ sender: UIButton) {
        print("5")
        if roundCount == 1 {
            if firstRoundFirstNumberLabel.text == nil {
                firstRoundFirstNumberLabel.text = String(5)
            } else if firstRoundSecondNumberLabel.text == nil {
                firstRoundSecondNumberLabel.text = String(5)
            } else if firstRoundThirdNumberLabel.text == nil {
                firstRoundThirdNumberLabel.text = String(5)
            } else if firstRoundFourthNumberLabel.text == nil {
                firstRoundFourthNumberLabel.text = String(5)
            }
        } else if roundCount == 2 {
            if secondRoundFirstNumberLabel.text == nil {
                secondRoundFirstNumberLabel.text = String(5)
            } else if secondRoundSecondNumberLabel.text == nil {
                secondRoundSecondNumberLabel.text = String(5)
            } else if secondRoundThirdNumberLabel.text == nil {
                secondRoundThirdNumberLabel.text = String(5)
            } else if secondRoundFourthNumberLabel.text == nil {
                secondRoundFourthNumberLabel.text = String(5)
            }
        } else if roundCount == 3 {
            if thirdRoundFirstNumberLabel.text == nil {
                thirdRoundFirstNumberLabel.text = String(5)
            } else if thirdRoundSecondNumberLabel.text == nil {
                thirdRoundSecondNumberLabel.text = String(5)
            } else if thirdRoundThirdNumberLabel.text == nil {
                thirdRoundThirdNumberLabel.text = String(5)
            } else if thirdRoundFourthNumberLabel.text == nil {
                thirdRoundFourthNumberLabel.text = String(5)
            }
        } else if roundCount == 4 {
            if fourthRoundFirstNumberLabel.text == nil {
                fourthRoundFirstNumberLabel.text = String(5)
            } else if fourthRoundSecondNumberLabel.text == nil {
                fourthRoundSecondNumberLabel.text = String(5)
            } else if fourthRoundThirdNumberLabel.text == nil {
                fourthRoundThirdNumberLabel.text = String(5)
            } else if fourthRoundFourthNumberLabel.text == nil {
                fourthRoundFourthNumberLabel.text = String(5)
            }
        } else if roundCount == 5 {
            if fifthRoundFirstNumberLabel.text == nil {
                fifthRoundFirstNumberLabel.text = String(5)
            } else if fifthRoundSecondNumberLabel.text == nil {
                fifthRoundSecondNumberLabel.text = String(5)
            } else if fifthRoundThirdNumberLabel.text == nil {
                fifthRoundThirdNumberLabel.text = String(5)
            } else if fifthRoundFourthNumberLabel.text == nil {
                fifthRoundFourthNumberLabel.text = String(5)
            }
        } else if roundCount == 6 {
            if sixthRoundFirstNumberLabel.text == nil {
                sixthRoundFirstNumberLabel.text = String(5)
            } else if sixthRoundSecondNumberLabel.text == nil {
                sixthRoundSecondNumberLabel.text = String(5)
            } else if sixthRoundThirdNumberLabel.text == nil {
                sixthRoundThirdNumberLabel.text = String(5)
            } else if sixthRoundFourthNumberLabel.text == nil {
                sixthRoundFourthNumberLabel.text = String(5)
            }
        } else if roundCount == 7 {
            if seventhRoundFirstNumberLabel.text == nil {
                seventhRoundFirstNumberLabel.text = String(5)
            } else if seventhRoundSecondNumberLabel.text == nil {
                seventhRoundSecondNumberLabel.text = String(5)
            } else if seventhRoundThirdNumberLabel.text == nil {
                seventhRoundThirdNumberLabel.text = String(5)
            } else if seventhRoundFourthNumberLabel.text == nil {
                seventhRoundFourthNumberLabel.text = String(5)
            }
        } else if roundCount == 8 {
            if eighthRoundFirstNumberLabel.text == nil {
                eighthRoundFirstNumberLabel.text = String(5)
            } else if eighthRoundSecondNumberLabel.text == nil {
                eighthRoundSecondNumberLabel.text = String(5)
            } else if eighthRoundThirdNumberLabel.text == nil {
                eighthRoundThirdNumberLabel.text = String(5)
            } else if eighthRoundFourthNumberLabel.text == nil {
                eighthRoundFourthNumberLabel.text = String(5)
            }
        } else if roundCount == 9 {
            if ninthRoundFirstNumberLabel.text == nil {
                ninthRoundFirstNumberLabel.text = String(5)
            } else if ninthRoundSecondNumberLabel.text == nil {
                ninthRoundSecondNumberLabel.text = String(5)
            } else if ninthRoundThirdNumberLabel.text == nil {
                ninthRoundThirdNumberLabel.text = String(5)
            } else if ninthRoundFourthNumberLabel.text == nil {
                ninthRoundFourthNumberLabel.text = String(5)
            }
        }
    }
    
    @IBAction func numberPad6(_ sender: UIButton) {
        print("6")
        if roundCount == 1 {
            if firstRoundFirstNumberLabel.text == nil {
                firstRoundFirstNumberLabel.text = String(6)
            } else if firstRoundSecondNumberLabel.text == nil {
                firstRoundSecondNumberLabel.text = String(6)
            } else if firstRoundThirdNumberLabel.text == nil {
                firstRoundThirdNumberLabel.text = String(6)
            } else if firstRoundFourthNumberLabel.text == nil {
                firstRoundFourthNumberLabel.text = String(6)
            }
        } else if roundCount == 2 {
            if secondRoundFirstNumberLabel.text == nil {
                secondRoundFirstNumberLabel.text = String(6)
            } else if secondRoundSecondNumberLabel.text == nil {
                secondRoundSecondNumberLabel.text = String(6)
            } else if secondRoundThirdNumberLabel.text == nil {
                secondRoundThirdNumberLabel.text = String(6)
            } else if secondRoundFourthNumberLabel.text == nil {
                secondRoundFourthNumberLabel.text = String(6)
            }
        } else if roundCount == 3 {
            if thirdRoundFirstNumberLabel.text == nil {
                thirdRoundFirstNumberLabel.text = String(6)
            } else if thirdRoundSecondNumberLabel.text == nil {
                thirdRoundSecondNumberLabel.text = String(6)
            } else if thirdRoundThirdNumberLabel.text == nil {
                thirdRoundThirdNumberLabel.text = String(6)
            } else if thirdRoundFourthNumberLabel.text == nil {
                thirdRoundFourthNumberLabel.text = String(6)
            }
        } else if roundCount == 4 {
            if fourthRoundFirstNumberLabel.text == nil {
                fourthRoundFirstNumberLabel.text = String(6)
            } else if fourthRoundSecondNumberLabel.text == nil {
                fourthRoundSecondNumberLabel.text = String(6)
            } else if fourthRoundThirdNumberLabel.text == nil {
                fourthRoundThirdNumberLabel.text = String(6)
            } else if fourthRoundFourthNumberLabel.text == nil {
                fourthRoundFourthNumberLabel.text = String(6)
            }
        } else if roundCount == 5 {
            if fifthRoundFirstNumberLabel.text == nil {
                fifthRoundFirstNumberLabel.text = String(6)
            } else if fifthRoundSecondNumberLabel.text == nil {
                fifthRoundSecondNumberLabel.text = String(6)
            } else if fifthRoundThirdNumberLabel.text == nil {
                fifthRoundThirdNumberLabel.text = String(6)
            } else if fifthRoundFourthNumberLabel.text == nil {
                fifthRoundFourthNumberLabel.text = String(6)
            }
        } else if roundCount == 6 {
            if sixthRoundFirstNumberLabel.text == nil {
                sixthRoundFirstNumberLabel.text = String(6)
            } else if sixthRoundSecondNumberLabel.text == nil {
                sixthRoundSecondNumberLabel.text = String(6)
            } else if sixthRoundThirdNumberLabel.text == nil {
                sixthRoundThirdNumberLabel.text = String(6)
            } else if sixthRoundFourthNumberLabel.text == nil {
                sixthRoundFourthNumberLabel.text = String(6)
            }
        } else if roundCount == 7 {
            if seventhRoundFirstNumberLabel.text == nil {
                seventhRoundFirstNumberLabel.text = String(6)
            } else if seventhRoundSecondNumberLabel.text == nil {
                seventhRoundSecondNumberLabel.text = String(6)
            } else if seventhRoundThirdNumberLabel.text == nil {
                seventhRoundThirdNumberLabel.text = String(6)
            } else if seventhRoundFourthNumberLabel.text == nil {
                seventhRoundFourthNumberLabel.text = String(6)
            }
        } else if roundCount == 8 {
            if eighthRoundFirstNumberLabel.text == nil {
                eighthRoundFirstNumberLabel.text = String(6)
            } else if eighthRoundSecondNumberLabel.text == nil {
                eighthRoundSecondNumberLabel.text = String(6)
            } else if eighthRoundThirdNumberLabel.text == nil {
                eighthRoundThirdNumberLabel.text = String(6)
            } else if eighthRoundFourthNumberLabel.text == nil {
                eighthRoundFourthNumberLabel.text = String(6)
            }
        } else if roundCount == 9 {
            if ninthRoundFirstNumberLabel.text == nil {
                ninthRoundFirstNumberLabel.text = String(6)
            } else if ninthRoundSecondNumberLabel.text == nil {
                ninthRoundSecondNumberLabel.text = String(6)
            } else if ninthRoundThirdNumberLabel.text == nil {
                ninthRoundThirdNumberLabel.text = String(6)
            } else if ninthRoundFourthNumberLabel.text == nil {
                ninthRoundFourthNumberLabel.text = String(6)
            }
        }
    }
    
    @IBAction func numberPad7(_ sender: UIButton) {
        print("7")
        if roundCount == 1 {
            if firstRoundFirstNumberLabel.text == nil {
                firstRoundFirstNumberLabel.text = String(7)
            } else if firstRoundSecondNumberLabel.text == nil {
                firstRoundSecondNumberLabel.text = String(7)
            } else if firstRoundThirdNumberLabel.text == nil {
                firstRoundThirdNumberLabel.text = String(7)
            } else if firstRoundFourthNumberLabel.text == nil {
                firstRoundFourthNumberLabel.text = String(7)
            }
        } else if roundCount == 2 {
            if secondRoundFirstNumberLabel.text == nil {
                secondRoundFirstNumberLabel.text = String(7)
            } else if secondRoundSecondNumberLabel.text == nil {
                secondRoundSecondNumberLabel.text = String(7)
            } else if secondRoundThirdNumberLabel.text == nil {
                secondRoundThirdNumberLabel.text = String(7)
            } else if secondRoundFourthNumberLabel.text == nil {
                secondRoundFourthNumberLabel.text = String(7)
            }
        } else if roundCount == 3 {
            if thirdRoundFirstNumberLabel.text == nil {
                thirdRoundFirstNumberLabel.text = String(7)
            } else if thirdRoundSecondNumberLabel.text == nil {
                thirdRoundSecondNumberLabel.text = String(7)
            } else if thirdRoundThirdNumberLabel.text == nil {
                thirdRoundThirdNumberLabel.text = String(7)
            } else if thirdRoundFourthNumberLabel.text == nil {
                thirdRoundFourthNumberLabel.text = String(7)
            }
        } else if roundCount == 4 {
            if fourthRoundFirstNumberLabel.text == nil {
                fourthRoundFirstNumberLabel.text = String(7)
            } else if fourthRoundSecondNumberLabel.text == nil {
                fourthRoundSecondNumberLabel.text = String(7)
            } else if fourthRoundThirdNumberLabel.text == nil {
                fourthRoundThirdNumberLabel.text = String(7)
            } else if fourthRoundFourthNumberLabel.text == nil {
                fourthRoundFourthNumberLabel.text = String(7)
            }
        } else if roundCount == 5 {
            if fifthRoundFirstNumberLabel.text == nil {
                fifthRoundFirstNumberLabel.text = String(7)
            } else if fifthRoundSecondNumberLabel.text == nil {
                fifthRoundSecondNumberLabel.text = String(7)
            } else if fifthRoundThirdNumberLabel.text == nil {
                fifthRoundThirdNumberLabel.text = String(7)
            } else if fifthRoundFourthNumberLabel.text == nil {
                fifthRoundFourthNumberLabel.text = String(7)
            }
        } else if roundCount == 6 {
            if sixthRoundFirstNumberLabel.text == nil {
                sixthRoundFirstNumberLabel.text = String(7)
            } else if sixthRoundSecondNumberLabel.text == nil {
                sixthRoundSecondNumberLabel.text = String(7)
            } else if sixthRoundThirdNumberLabel.text == nil {
                sixthRoundThirdNumberLabel.text = String(7)
            } else if sixthRoundFourthNumberLabel.text == nil {
                sixthRoundFourthNumberLabel.text = String(7)
            }
        } else if roundCount == 7 {
            if seventhRoundFirstNumberLabel.text == nil {
                seventhRoundFirstNumberLabel.text = String(7)
            } else if seventhRoundSecondNumberLabel.text == nil {
                seventhRoundSecondNumberLabel.text = String(7)
            } else if seventhRoundThirdNumberLabel.text == nil {
                seventhRoundThirdNumberLabel.text = String(7)
            } else if seventhRoundFourthNumberLabel.text == nil {
                seventhRoundFourthNumberLabel.text = String(7)
            }
        } else if roundCount == 8 {
            if eighthRoundFirstNumberLabel.text == nil {
                eighthRoundFirstNumberLabel.text = String(7)
            } else if eighthRoundSecondNumberLabel.text == nil {
                eighthRoundSecondNumberLabel.text = String(7)
            } else if eighthRoundThirdNumberLabel.text == nil {
                eighthRoundThirdNumberLabel.text = String(7)
            } else if eighthRoundFourthNumberLabel.text == nil {
                eighthRoundFourthNumberLabel.text = String(7)
            }
        } else if roundCount == 9 {
            if ninthRoundFirstNumberLabel.text == nil {
                ninthRoundFirstNumberLabel.text = String(7)
            } else if ninthRoundSecondNumberLabel.text == nil {
                ninthRoundSecondNumberLabel.text = String(7)
            } else if ninthRoundThirdNumberLabel.text == nil {
                ninthRoundThirdNumberLabel.text = String(7)
            } else if ninthRoundFourthNumberLabel.text == nil {
                ninthRoundFourthNumberLabel.text = String(7)
            }
        }
    }
    
    @IBAction func numberPad8(_ sender: UIButton) {
        print("8")
        if roundCount == 1 {
            if firstRoundFirstNumberLabel.text == nil {
                firstRoundFirstNumberLabel.text = String(8)
            } else if firstRoundSecondNumberLabel.text == nil {
                firstRoundSecondNumberLabel.text = String(8)
            } else if firstRoundThirdNumberLabel.text == nil {
                firstRoundThirdNumberLabel.text = String(8)
            } else if firstRoundFourthNumberLabel.text == nil {
                firstRoundFourthNumberLabel.text = String(8)
            }
        } else if roundCount == 2 {
            if secondRoundFirstNumberLabel.text == nil {
                secondRoundFirstNumberLabel.text = String(8)
            } else if secondRoundSecondNumberLabel.text == nil {
                secondRoundSecondNumberLabel.text = String(8)
            } else if secondRoundThirdNumberLabel.text == nil {
                secondRoundThirdNumberLabel.text = String(8)
            } else if secondRoundFourthNumberLabel.text == nil {
                secondRoundFourthNumberLabel.text = String(8)
            }
        } else if roundCount == 3 {
            if thirdRoundFirstNumberLabel.text == nil {
                thirdRoundFirstNumberLabel.text = String(8)
            } else if thirdRoundSecondNumberLabel.text == nil {
                thirdRoundSecondNumberLabel.text = String(8)
            } else if thirdRoundThirdNumberLabel.text == nil {
                thirdRoundThirdNumberLabel.text = String(8)
            } else if thirdRoundFourthNumberLabel.text == nil {
                thirdRoundFourthNumberLabel.text = String(8)
            }
        } else if roundCount == 4 {
            if fourthRoundFirstNumberLabel.text == nil {
                fourthRoundFirstNumberLabel.text = String(8)
            } else if fourthRoundSecondNumberLabel.text == nil {
                fourthRoundSecondNumberLabel.text = String(8)
            } else if fourthRoundThirdNumberLabel.text == nil {
                fourthRoundThirdNumberLabel.text = String(8)
            } else if fourthRoundFourthNumberLabel.text == nil {
                fourthRoundFourthNumberLabel.text = String(8)
            }
        } else if roundCount == 5 {
            if fifthRoundFirstNumberLabel.text == nil {
                fifthRoundFirstNumberLabel.text = String(8)
            } else if fifthRoundSecondNumberLabel.text == nil {
                fifthRoundSecondNumberLabel.text = String(8)
            } else if fifthRoundThirdNumberLabel.text == nil {
                fifthRoundThirdNumberLabel.text = String(8)
            } else if fifthRoundFourthNumberLabel.text == nil {
                fifthRoundFourthNumberLabel.text = String(8)
            }
        } else if roundCount == 6 {
            if sixthRoundFirstNumberLabel.text == nil {
                sixthRoundFirstNumberLabel.text = String(8)
            } else if sixthRoundSecondNumberLabel.text == nil {
                sixthRoundSecondNumberLabel.text = String(8)
            } else if sixthRoundThirdNumberLabel.text == nil {
                sixthRoundThirdNumberLabel.text = String(8)
            } else if sixthRoundFourthNumberLabel.text == nil {
                sixthRoundFourthNumberLabel.text = String(8)
            }
        } else if roundCount == 7 {
            if seventhRoundFirstNumberLabel.text == nil {
                seventhRoundFirstNumberLabel.text = String(8)
            } else if seventhRoundSecondNumberLabel.text == nil {
                seventhRoundSecondNumberLabel.text = String(8)
            } else if seventhRoundThirdNumberLabel.text == nil {
                seventhRoundThirdNumberLabel.text = String(8)
            } else if seventhRoundFourthNumberLabel.text == nil {
                seventhRoundFourthNumberLabel.text = String(8)
            }
        } else if roundCount == 8 {
            if eighthRoundFirstNumberLabel.text == nil {
                eighthRoundFirstNumberLabel.text = String(8)
            } else if eighthRoundSecondNumberLabel.text == nil {
                eighthRoundSecondNumberLabel.text = String(8)
            } else if eighthRoundThirdNumberLabel.text == nil {
                eighthRoundThirdNumberLabel.text = String(8)
            } else if eighthRoundFourthNumberLabel.text == nil {
                eighthRoundFourthNumberLabel.text = String(8)
            }
        } else if roundCount == 9 {
            if ninthRoundFirstNumberLabel.text == nil {
                ninthRoundFirstNumberLabel.text = String(8)
            } else if ninthRoundSecondNumberLabel.text == nil {
                ninthRoundSecondNumberLabel.text = String(8)
            } else if ninthRoundThirdNumberLabel.text == nil {
                ninthRoundThirdNumberLabel.text = String(8)
            } else if ninthRoundFourthNumberLabel.text == nil {
                ninthRoundFourthNumberLabel.text = String(8)
            }
        }
    }
    
    @IBAction func numberPad9(_ sender: UIButton) {
        print("9")
        if roundCount == 1 {
            if firstRoundFirstNumberLabel.text == nil {
                firstRoundFirstNumberLabel.text = String(9)
            } else if firstRoundSecondNumberLabel.text == nil {
                firstRoundSecondNumberLabel.text = String(9)
            } else if firstRoundThirdNumberLabel.text == nil {
                firstRoundThirdNumberLabel.text = String(9)
            } else if firstRoundFourthNumberLabel.text == nil {
                firstRoundFourthNumberLabel.text = String(9)
            }
        } else if roundCount == 2 {
            if secondRoundFirstNumberLabel.text == nil {
                secondRoundFirstNumberLabel.text = String(9)
            } else if secondRoundSecondNumberLabel.text == nil {
                secondRoundSecondNumberLabel.text = String(9)
            } else if secondRoundThirdNumberLabel.text == nil {
                secondRoundThirdNumberLabel.text = String(9)
            } else if secondRoundFourthNumberLabel.text == nil {
                secondRoundFourthNumberLabel.text = String(9)
            }
        } else if roundCount == 3 {
            if thirdRoundFirstNumberLabel.text == nil {
                thirdRoundFirstNumberLabel.text = String(9)
            } else if thirdRoundSecondNumberLabel.text == nil {
                thirdRoundSecondNumberLabel.text = String(9)
            } else if thirdRoundThirdNumberLabel.text == nil {
                thirdRoundThirdNumberLabel.text = String(9)
            } else if thirdRoundFourthNumberLabel.text == nil {
                thirdRoundFourthNumberLabel.text = String(9)
            }
        } else if roundCount == 4 {
            if fourthRoundFirstNumberLabel.text == nil {
                fourthRoundFirstNumberLabel.text = String(9)
            } else if fourthRoundSecondNumberLabel.text == nil {
                fourthRoundSecondNumberLabel.text = String(9)
            } else if fourthRoundThirdNumberLabel.text == nil {
                fourthRoundThirdNumberLabel.text = String(9)
            } else if fourthRoundFourthNumberLabel.text == nil {
                fourthRoundFourthNumberLabel.text = String(9)
            }
        } else if roundCount == 5 {
            if fifthRoundFirstNumberLabel.text == nil {
                fifthRoundFirstNumberLabel.text = String(9)
            } else if fifthRoundSecondNumberLabel.text == nil {
                fifthRoundSecondNumberLabel.text = String(9)
            } else if fifthRoundThirdNumberLabel.text == nil {
                fifthRoundThirdNumberLabel.text = String(9)
            } else if fifthRoundFourthNumberLabel.text == nil {
                fifthRoundFourthNumberLabel.text = String(9)
            }
        } else if roundCount == 6 {
            if sixthRoundFirstNumberLabel.text == nil {
                sixthRoundFirstNumberLabel.text = String(9)
            } else if sixthRoundSecondNumberLabel.text == nil {
                sixthRoundSecondNumberLabel.text = String(9)
            } else if sixthRoundThirdNumberLabel.text == nil {
                sixthRoundThirdNumberLabel.text = String(9)
            } else if sixthRoundFourthNumberLabel.text == nil {
                sixthRoundFourthNumberLabel.text = String(9)
            }
        } else if roundCount == 7 {
            if seventhRoundFirstNumberLabel.text == nil {
                seventhRoundFirstNumberLabel.text = String(9)
            } else if seventhRoundSecondNumberLabel.text == nil {
                seventhRoundSecondNumberLabel.text = String(9)
            } else if seventhRoundThirdNumberLabel.text == nil {
                seventhRoundThirdNumberLabel.text = String(9)
            } else if seventhRoundFourthNumberLabel.text == nil {
                seventhRoundFourthNumberLabel.text = String(9)
            }
        } else if roundCount == 8 {
            if eighthRoundFirstNumberLabel.text == nil {
                eighthRoundFirstNumberLabel.text = String(9)
            } else if eighthRoundSecondNumberLabel.text == nil {
                eighthRoundSecondNumberLabel.text = String(9)
            } else if eighthRoundThirdNumberLabel.text == nil {
                eighthRoundThirdNumberLabel.text = String(9)
            } else if eighthRoundFourthNumberLabel.text == nil {
                eighthRoundFourthNumberLabel.text = String(9)
            }
        } else if roundCount == 9 {
            if ninthRoundFirstNumberLabel.text == nil {
                ninthRoundFirstNumberLabel.text = String(9)
            } else if ninthRoundSecondNumberLabel.text == nil {
                ninthRoundSecondNumberLabel.text = String(9)
            } else if ninthRoundThirdNumberLabel.text == nil {
                ninthRoundThirdNumberLabel.text = String(9)
            } else if ninthRoundFourthNumberLabel.text == nil {
                ninthRoundFourthNumberLabel.text = String(9)
            }
        }
    }
    
    @IBAction func numberPadX(_ sender: UIButton) {
        print("X")
        if roundCount == 9 {
            ninthRoundFirstNumberLabel.text = nil
            ninthRoundSecondNumberLabel.text = nil
            ninthRoundThirdNumberLabel.text = nil
            ninthRoundFourthNumberLabel.text = nil
        } else if roundCount == 8 {
            eighthRoundFirstNumberLabel.text = nil
            eighthRoundSecondNumberLabel.text = nil
            eighthRoundThirdNumberLabel.text = nil
            eighthRoundFourthNumberLabel.text = nil
        } else if roundCount == 7 {
            seventhRoundFirstNumberLabel.text = nil
            seventhRoundSecondNumberLabel.text = nil
            seventhRoundThirdNumberLabel.text = nil
            seventhRoundFourthNumberLabel.text = nil
        } else if roundCount == 6 {
            sixthRoundFirstNumberLabel.text = nil
            sixthRoundSecondNumberLabel.text = nil
            sixthRoundThirdNumberLabel.text = nil
            sixthRoundFourthNumberLabel.text = nil
        } else if roundCount == 5 {
            fifthRoundFirstNumberLabel.text = nil
            fifthRoundSecondNumberLabel.text = nil
            fifthRoundThirdNumberLabel.text = nil
            fifthRoundFourthNumberLabel.text = nil
        } else if roundCount == 4 {
            fourthRoundFirstNumberLabel.text = nil
            fourthRoundSecondNumberLabel.text = nil
            fourthRoundThirdNumberLabel.text = nil
            fourthRoundFourthNumberLabel.text = nil
        } else if roundCount == 3 {
            thirdRoundFirstNumberLabel.text = nil
            thirdRoundSecondNumberLabel.text = nil
            thirdRoundThirdNumberLabel.text = nil
            thirdRoundFourthNumberLabel.text = nil
        } else if roundCount == 2 {
            secondRoundFirstNumberLabel.text = nil
            secondRoundSecondNumberLabel.text = nil
            secondRoundThirdNumberLabel.text = nil
            secondRoundFourthNumberLabel.text = nil
        } else if roundCount == 1 {
            firstRoundFirstNumberLabel.text = nil
            firstRoundSecondNumberLabel.text = nil
            firstRoundThirdNumberLabel.text = nil
            firstRoundFourthNumberLabel.text = nil
        }
    }
    
    @IBAction func numberPadV(_ sender: UIButton) {
        
        if roundCount == 1 {
            if (firstRoundFirstNumberLabel.text != nil) && (firstRoundSecondNumberLabel.text != nil) && (firstRoundThirdNumberLabel.text != nil) && (firstRoundFourthNumberLabel.text != nil) {
                checkFirstRound()
            }
        } else if roundCount == 2 {
            if (secondRoundFirstNumberLabel.text != nil) && (secondRoundSecondNumberLabel.text != nil) && (secondRoundThirdNumberLabel.text != nil) && (secondRoundFourthNumberLabel.text != nil) {
                checkSecondRound()
            }
        } else if roundCount == 3 {
            if (thirdRoundFirstNumberLabel.text != nil) && (thirdRoundSecondNumberLabel.text != nil) && (thirdRoundThirdNumberLabel.text != nil) && (thirdRoundFourthNumberLabel.text != nil) {
                checkThirdRound()
            }
        } else if roundCount == 4 {
            if (fourthRoundFirstNumberLabel.text != nil) && (fourthRoundSecondNumberLabel.text != nil) && (fourthRoundThirdNumberLabel.text != nil) && (fourthRoundFourthNumberLabel.text != nil) {
                checkFourthRound()
            }
        } else if roundCount == 5 {
            if (fifthRoundFirstNumberLabel.text != nil) && (fifthRoundSecondNumberLabel.text != nil) && (fifthRoundThirdNumberLabel.text != nil) && (fifthRoundFourthNumberLabel.text != nil) {
                checkFifthRound()
            }
        } else if roundCount == 6 {
            if (sixthRoundFirstNumberLabel.text != nil) && (sixthRoundSecondNumberLabel.text != nil) && (sixthRoundThirdNumberLabel.text != nil) && (sixthRoundFourthNumberLabel.text != nil) {
                checkSixthRound()
            }
        } else if roundCount == 7 {
            if (seventhRoundFirstNumberLabel.text != nil) && (seventhRoundSecondNumberLabel.text != nil) && (seventhRoundThirdNumberLabel.text != nil) && (seventhRoundFourthNumberLabel.text != nil) {
                checkSeventhRound()
            }
        } else if roundCount == 8 {
            if (eighthRoundFirstNumberLabel.text != nil) && (eighthRoundSecondNumberLabel.text != nil) && (eighthRoundThirdNumberLabel.text != nil) && (eighthRoundFourthNumberLabel.text != nil) {
                checkEighthRound()
            }
        } else if roundCount == 9 {
            if (ninthRoundFirstNumberLabel.text != nil) && (ninthRoundSecondNumberLabel.text != nil) && (ninthRoundThirdNumberLabel.text != nil) && (ninthRoundFourthNumberLabel.text != nil) {
                checkNinthRound()
                let alert = UIAlertController(title: "You lose...", message: "the answer is \(firstGuessNumber)\(secondGuessNumber)\(thirdGuessNumber)\(fourthGuessNumber)", preferredStyle: .alert)
                let action = UIAlertAction(title: "OK", style: .default, handler: nil)
                alert.addAction(action)
                present(alert, animated: true, completion: nil)
                
                reset()
            }
        }
        print("이번 라운드는 \(roundCount)입니다")
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
        print("reset")
        reset()
    }
    
    
}

