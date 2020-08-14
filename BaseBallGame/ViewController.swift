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
    
    func shuffleSet() {
        let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9].shuffled()
        firstGuessNumber = numbers[0]
        secondGuessNumber = numbers[1]
        thirdGuessNumber = numbers[2]
        fourthGuessNumber = numbers[3]
        
        let answer = [firstGuessNumber, secondGuessNumber, thirdGuessNumber, fourthGuessNumber]
        print(answer)
        answerLable.text = "answer : \(firstGuessNumber)\(secondGuessNumber)\(thirdGuessNumber)\(fourthGuessNumber)"
        print("랜덤 숫자는 \(firstGuessNumber)\(secondGuessNumber)\(thirdGuessNumber)\(fourthGuessNumber) 입니다.")
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
    
    var firstFirst: Int = 0
    var firstSecond: Int = 0
    var firstThird: Int = 0
    var firstFourth: Int = 0
    var secondFirst: Int = 0
    var secondSecond: Int = 0
    var secondThird: Int = 0
    var secondFourth: Int = 0
    var thirdFirst: Int = 0
    var thirdSecond: Int = 0
    var thirdThird: Int = 0
    var thirdFourth: Int = 0
    var fourthFirst: Int = 0
    var fourthSecond: Int = 0
    var fourthThird: Int = 0
    var fourthFourth: Int = 0
    var fifthFirst: Int = 0
    var fifthSecond: Int = 0
    var fifthThird: Int = 0
    var fifthFourth: Int = 0
    var sixthFirst: Int = 0
    var sixthSecond: Int = 0
    var sixthThird: Int = 0
    var sixthFourth: Int = 0
    var seventhFirst: Int = 0
    var seventhSecond: Int = 0
    var seventhThird: Int = 0
    var seventhFourth: Int = 0
    var ejghthFirst: Int = 0
    var ejghthSecond: Int = 0
    var ejghthThird: Int = 0
    var ejghthFourth: Int = 0
    var ninthFirst: Int = 0
    var ninthSecond: Int = 0
    var ninthThird: Int = 0
    var ninthFourth: Int = 0
    
    
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
        
        roundCount = 1
        
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
    
    func checkBallFirstRound() {
        //firstFirst = Int(firstRoundFirstNumberLabel)
        let oneOne = [firstFirst, firstSecond, firstThird, firstFourth]
    }
    
    
    @IBAction func numberPadV(_ sender: UIButton) {
        
        if roundCount == 1 {
            if (firstRoundFirstNumberLabel.text != nil) && (firstRoundSecondNumberLabel.text != nil) && (firstRoundThirdNumberLabel.text != nil) && (firstRoundFourthNumberLabel.text != nil) {
                roundCount = 2
            }
        } else if roundCount == 2 {
            if (secondRoundFirstNumberLabel.text != nil) && (secondRoundSecondNumberLabel.text != nil) && (secondRoundThirdNumberLabel.text != nil) && (secondRoundFourthNumberLabel.text != nil) {
                roundCount = 3
            }
        } else if roundCount == 3 {
            if (thirdRoundFirstNumberLabel.text != nil) && (thirdRoundSecondNumberLabel.text != nil) && (thirdRoundThirdNumberLabel.text != nil) && (thirdRoundFourthNumberLabel.text != nil) {
                roundCount = 4
            }
        } else if roundCount == 4 {
            if (fourthRoundFirstNumberLabel.text != nil) && (fourthRoundSecondNumberLabel.text != nil) && (fourthRoundThirdNumberLabel.text != nil) && (fourthRoundFourthNumberLabel.text != nil) {
                roundCount = 5
            }
        } else if roundCount == 5 {
            if (fifthRoundFirstNumberLabel.text != nil) && (fifthRoundSecondNumberLabel.text != nil) && (fifthRoundThirdNumberLabel.text != nil) && (fifthRoundFourthNumberLabel.text != nil) {
                roundCount = 6
            }
        } else if roundCount == 6 {
            if (sixthRoundFirstNumberLabel.text != nil) && (sixthRoundSecondNumberLabel.text != nil) && (sixthRoundThirdNumberLabel.text != nil) && (sixthRoundFourthNumberLabel.text != nil) {
                roundCount = 7
            }
        } else if roundCount == 7 {
            if (seventhRoundFirstNumberLabel.text != nil) && (seventhRoundSecondNumberLabel.text != nil) && (seventhRoundThirdNumberLabel.text != nil) && (seventhRoundFourthNumberLabel.text != nil) {
                roundCount = 8
            }
        } else if roundCount == 8 {
            if (eighthRoundFirstNumberLabel.text != nil) && (eighthRoundSecondNumberLabel.text != nil) && (eighthRoundThirdNumberLabel.text != nil) && (eighthRoundFourthNumberLabel.text != nil) {
                roundCount = 9
            }
        } else if roundCount == 9 {
            if (ninthRoundFirstNumberLabel.text != nil) && (ninthRoundSecondNumberLabel.text != nil) && (ninthRoundThirdNumberLabel.text != nil) && (ninthRoundFourthNumberLabel.text != nil) {
                
                let alert = UIAlertController(title: "You lose...", message: "the answer is \(firstGuessNumber)\(secondGuessNumber)\(thirdGuessNumber)\(fourthGuessNumber)", preferredStyle: .alert)
                let action = UIAlertAction(title: "OK", style: .default, handler: nil)
                alert.addAction(action)
                present(alert, animated: true, completion: nil)
                
                reset()
            }
        }
        print(roundCount)
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
        print("reset")
        reset()
    }
    
    
}

