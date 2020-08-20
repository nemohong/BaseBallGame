//
//  ViewController.swift
//  BaseBallGame
//
//  Created by kimsunhong on 2020/08/12.
//  Copyright © 2020 hongnemo. All rights reserved.
//

import UIKit

class BaseCell: UITableViewCell {
    
}

class ViewController: UIViewController {
    

  
    var firstAnswerNumber: Int = 0
    var secondAnswerNumber: Int = 0
    var thirdAnswerNumber: Int = 0
    var fourthAnswerNumber: Int = 0
    
    var firstGuessNumber: Int = 0
    var secondGuessNumber: Int = 0
    var thirdGuessNumber: Int = 0
    var fourthGuessNumber: Int = 0
    
    var roundCount: Int = 1
    var BallCount: Int = 0
    var StrikeCount: Int = 0
    
    
    func shuffleSet() {
        let numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9].shuffled()
        firstAnswerNumber = numbers[0]
        secondAnswerNumber = numbers[1]
        thirdAnswerNumber = numbers[2]
        fourthAnswerNumber = numbers[3]
        
        let answer: Array = [firstAnswerNumber, secondAnswerNumber, thirdAnswerNumber, fourthAnswerNumber]
        print(answer)
        print("랜덤 숫자는 \(firstAnswerNumber)\(secondAnswerNumber)\(thirdAnswerNumber)\(fourthAnswerNumber) 입니다.")
    }
    
    func checkRound(_ firstNumber:Int, _ secondNumber:Int, _ thirdNumber:Int, _ fourthNumber:Int) {
        
        var array: Array = [firstNumber, secondNumber, thirdNumber, fourthNumber]
        var answer: Array = [firstAnswerNumber, secondAnswerNumber, thirdAnswerNumber, fourthAnswerNumber]
        
        if (firstNumber == secondNumber) || (firstNumber == thirdNumber) || (firstNumber == fourthNumber) || (secondNumber == thirdNumber) || (thirdNumber == fourthNumber) {
            FirstNumberLabel.text = ""
            SecondNumberLabel.text = ""
            ThirdNumberLabel.text = ""
            FourthNumberLabel.text = ""
            
            let alert = UIAlertController(title: "숫자가 중복되었습니다", message: nil, preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
            
            print("중복")
            return
        }
        
        if answer == array {
            let alert = UIAlertController(title: "YOU WIN!!", message: nil, preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
            reset()
            return
        } else {
            if firstNumber == firstAnswerNumber {
                StrikeCount += 1
            }
            if secondNumber == secondAnswerNumber {
                StrikeCount += 1
            }
            if thirdNumber == thirdAnswerNumber {
                StrikeCount += 1
            }
            if fourthNumber == fourthAnswerNumber {
                StrikeCount += 1
            }
            
            StrikeLabel.text = "\(StrikeCount)"
            
            for a in array {
                if answer.contains(a), let idx1 = array.firstIndex(of: a), let idx2 = answer.firstIndex(of: a) {
                    array.remove(at: idx1)
                    answer.remove(at: idx2)
                }
            }
            BallLabel.text = "\(4 - array.count - StrikeCount)"
        }
        roundCount += 1
    }
    
    @IBOutlet weak var RoundTableView: UITableView!
    
    @IBOutlet var FirstNumberLabel: UILabel!
    @IBOutlet var SecondNumberLabel: UILabel!
    @IBOutlet var ThirdNumberLabel: UILabel!
    @IBOutlet var FourthNumberLabel: UILabel!
    @IBOutlet var StrikeLabel: UILabel!
    @IBOutlet var BallLabel: UILabel!
    @IBOutlet var RoundLabel: UILabel!
    
    func reset() {
        
        firstAnswerNumber = 0
        secondAnswerNumber = 0
        thirdAnswerNumber = 0
        fourthAnswerNumber = 0
        firstGuessNumber = 0
        secondGuessNumber = 0
        thirdGuessNumber = 0
        fourthGuessNumber = 0
        roundCount = 1
        BallCount = 0
        StrikeCount = 0
        
        shuffleSet()
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reset()
    }
    
    
    @IBAction func numberPad1(_ sender: UIButton) {
        print("1")
        if firstGuessNumber == 0 {
            firstGuessNumber = 1
            FirstNumberLabel.text = String(firstGuessNumber)
        } else if secondGuessNumber == 0 {
            secondGuessNumber = 1
            SecondNumberLabel.text = String(secondGuessNumber)
        } else if thirdGuessNumber == 0 {
            thirdGuessNumber = 1
            ThirdNumberLabel.text = String(thirdGuessNumber)
        } else if fourthGuessNumber == 0 {
            fourthGuessNumber = 1
            FourthNumberLabel.text = String(fourthGuessNumber)
        }
    }
    
    @IBAction func numberPad2(_ sender: UIButton) {
        print("2")
        if firstGuessNumber == 0 {
            firstGuessNumber = 1
            FirstNumberLabel.text = String(firstGuessNumber)
        } else if secondGuessNumber == 0 {
            secondGuessNumber = 1
            SecondNumberLabel.text = String(secondGuessNumber)
        } else if thirdGuessNumber == 0 {
            thirdGuessNumber = 1
            ThirdNumberLabel.text = String(thirdGuessNumber)
        } else if fourthGuessNumber == 0 {
            fourthGuessNumber = 1
            FourthNumberLabel.text = String(fourthGuessNumber)
        }
    }
    
    @IBAction func numberPad3(_ sender: UIButton) {
        print("3")
        if firstGuessNumber == 0 {
            firstGuessNumber = 1
            FirstNumberLabel.text = String(firstGuessNumber)
        } else if secondGuessNumber == 0 {
            secondGuessNumber = 1
            SecondNumberLabel.text = String(secondGuessNumber)
        } else if thirdGuessNumber == 0 {
            thirdGuessNumber = 1
            ThirdNumberLabel.text = String(thirdGuessNumber)
        } else if fourthGuessNumber == 0 {
            fourthGuessNumber = 1
            FourthNumberLabel.text = String(fourthGuessNumber)
        }
    }
    
    @IBAction func numberPad4(_ sender: UIButton) {
        print("4")
        if firstGuessNumber == 0 {
            firstGuessNumber = 1
            FirstNumberLabel.text = String(firstGuessNumber)
        } else if secondGuessNumber == 0 {
            secondGuessNumber = 1
            SecondNumberLabel.text = String(secondGuessNumber)
        } else if thirdGuessNumber == 0 {
            thirdGuessNumber = 1
            ThirdNumberLabel.text = String(thirdGuessNumber)
        } else if fourthGuessNumber == 0 {
            fourthGuessNumber = 1
            FourthNumberLabel.text = String(fourthGuessNumber)
        }
    }
    
    @IBAction func numberPad5(_ sender: UIButton) {
        print("5")
        if firstGuessNumber == 0 {
            firstGuessNumber = 1
            FirstNumberLabel.text = String(firstGuessNumber)
        } else if secondGuessNumber == 0 {
            secondGuessNumber = 1
            SecondNumberLabel.text = String(secondGuessNumber)
        } else if thirdGuessNumber == 0 {
            thirdGuessNumber = 1
            ThirdNumberLabel.text = String(thirdGuessNumber)
        } else if fourthGuessNumber == 0 {
            fourthGuessNumber = 1
            FourthNumberLabel.text = String(fourthGuessNumber)
        }
    }
    
    @IBAction func numberPad6(_ sender: UIButton) {
        print("6")
        if firstGuessNumber == 0 {
            firstGuessNumber = 1
            FirstNumberLabel.text = String(firstGuessNumber)
        } else if secondGuessNumber == 0 {
            secondGuessNumber = 1
            SecondNumberLabel.text = String(secondGuessNumber)
        } else if thirdGuessNumber == 0 {
            thirdGuessNumber = 1
            ThirdNumberLabel.text = String(thirdGuessNumber)
        } else if fourthGuessNumber == 0 {
            fourthGuessNumber = 1
            FourthNumberLabel.text = String(fourthGuessNumber)
        }
    }
    
    @IBAction func numberPad7(_ sender: UIButton) {
        print("7")
        if firstGuessNumber == 0 {
            firstGuessNumber = 1
            FirstNumberLabel.text = String(firstGuessNumber)
        } else if secondGuessNumber == 0 {
            secondGuessNumber = 1
            SecondNumberLabel.text = String(secondGuessNumber)
        } else if thirdGuessNumber == 0 {
            thirdGuessNumber = 1
            ThirdNumberLabel.text = String(thirdGuessNumber)
        } else if fourthGuessNumber == 0 {
            fourthGuessNumber = 1
            FourthNumberLabel.text = String(fourthGuessNumber)
        }
    }
    
    @IBAction func numberPad8(_ sender: UIButton) {
        print("8")
        if firstGuessNumber == 0 {
            firstGuessNumber = 1
            FirstNumberLabel.text = String(firstGuessNumber)
        } else if secondGuessNumber == 0 {
            secondGuessNumber = 1
            SecondNumberLabel.text = String(secondGuessNumber)
        } else if thirdGuessNumber == 0 {
            thirdGuessNumber = 1
            ThirdNumberLabel.text = String(thirdGuessNumber)
        } else if fourthGuessNumber == 0 {
            fourthGuessNumber = 1
            FourthNumberLabel.text = String(fourthGuessNumber)
        }
    }
    
    @IBAction func numberPad9(_ sender: UIButton) {
        print("9")
        if firstGuessNumber == 0 {
            firstGuessNumber = 1
            FirstNumberLabel.text = String(firstGuessNumber)
        } else if secondGuessNumber == 0 {
            secondGuessNumber = 1
            SecondNumberLabel.text = String(secondGuessNumber)
        } else if thirdGuessNumber == 0 {
            thirdGuessNumber = 1
            ThirdNumberLabel.text = String(thirdGuessNumber)
        } else if fourthGuessNumber == 0 {
            fourthGuessNumber = 1
            FourthNumberLabel.text = String(fourthGuessNumber)
        }
    }
    
    @IBAction func numberPadX(_ sender: UIButton) {
        print("X")
        
        firstGuessNumber = 0
        secondGuessNumber = 0
        thirdGuessNumber = 0
        fourthGuessNumber = 0
        
        FirstNumberLabel.text = ""
        SecondNumberLabel.text = ""
        ThirdNumberLabel.text = ""
        FourthNumberLabel.text = ""
    }
    
    @IBAction func numberPadV(_ sender: UIButton) {
        
        if roundCount == 1 {
            if (firstRoundFirstNumberLabel.text != "") && (firstRoundSecondNumberLabel.text != "") && (firstRoundThirdNumberLabel.text != "") && (firstRoundFourthNumberLabel.text != "") {
                checkRound()
            }
        } else if roundCount == 2 {
            if (secondRoundFirstNumberLabel.text != "") && (secondRoundSecondNumberLabel.text != "") && (secondRoundThirdNumberLabel.text != "") && (secondRoundFourthNumberLabel.text != "") {
                checkRound()
            }
        } else if roundCount == 3 {
            if (thirdRoundFirstNumberLabel.text != "") && (thirdRoundSecondNumberLabel.text != "") && (thirdRoundThirdNumberLabel.text != "") && (thirdRoundFourthNumberLabel.text != "") {
                checkRound()
            }
        } else if roundCount == 4 {
            if (fourthRoundFirstNumberLabel.text != "") && (fourthRoundSecondNumberLabel.text != "") && (fourthRoundThirdNumberLabel.text != "") && (fourthRoundFourthNumberLabel.text != "") {
                checkRound()
            }
        } else if roundCount == 5 {
            if (fifthRoundFirstNumberLabel.text != "") && (fifthRoundSecondNumberLabel.text != "") && (fifthRoundThirdNumberLabel.text != "") && (fifthRoundFourthNumberLabel.text != "") {
                checkRound()
            }
        } else if roundCount == 6 {
            if (sixthRoundFirstNumberLabel.text != "") && (sixthRoundSecondNumberLabel.text != "") && (sixthRoundThirdNumberLabel.text != "") && (sixthRoundFourthNumberLabel.text != "") {
                checkRound()
            }
        } else if roundCount == 7 {
            if (seventhRoundFirstNumberLabel.text != "") && (seventhRoundSecondNumberLabel.text != "") && (seventhRoundThirdNumberLabel.text != "") && (seventhRoundFourthNumberLabel.text != "") {
                checkRound()
            }
        } else if roundCount == 8 {
            if (eighthRoundFirstNumberLabel.text != "") && (eighthRoundSecondNumberLabel.text != "") && (eighthRoundThirdNumberLabel.text != "") && (eighthRoundFourthNumberLabel.text != "") {
                checkRound()
            }
        } else if roundCount == 9 {
            if (ninthRoundFirstNumberLabel.text != "") && (ninthRoundSecondNumberLabel.text != "") && (ninthRoundThirdNumberLabel.text != "") && (ninthRoundFourthNumberLabel.text != "") {
                checkRound()
                let alert = UIAlertController(title: "You lose...", message: "the answer is \(firstAnswerNumber)\(secondAnswerNumber)\(thirdAnswerNumber)\(fourthAnswerNumber)", preferredStyle: .alert)
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

// MARK: - Related TableViews

extension ViewController: UITableViewDataSource, UITableViewDelegate {
// TODO: 꼭 고치자~ ^^
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 9
    }
    // FIXME: dsdfdsfas
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! BaseCell
        cell.backgroundView?.backgroundColor = .red
        return cell
    }
}
 
