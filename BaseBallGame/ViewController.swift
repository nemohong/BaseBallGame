//
//  ViewController.swift
//  BaseBallGame
//
//  Created by kimsunhong on 2020/08/12.
//  Copyright © 2020 hongnemo. All rights reserved.
//

import UIKit

// TODO: 이름 변경
// TODO: 파일 새로 생성해서 관리
class BaseCell: UITableViewCell {
    
    @IBOutlet weak var firstNumberLabel: UILabel!
    @IBOutlet weak var secondNumberLabel: UILabel!
    @IBOutlet weak var thirdNumberLabel: UILabel!
    @IBOutlet weak var fourthNumberLabel: UILabel!
    @IBOutlet weak var strikeLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    @IBOutlet weak var ballLabel: UILabel!
    
}

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
     
    var firstAnswerNumber: Int = 0
    var secondAnswerNumber: Int = 0
    var thirdAnswerNumber: Int = 0
    var fourthAnswerNumber: Int = 0
    
    var firstGuessNumber: Int = 0
    var secondGuessNumber: Int = 0
    var thirdGuessNumber: Int = 0
    var fourthGuessNumber: Int = 0
    
    var roundCount: Int = 1
    var ballCount: Int = 0
    var strikeCount: Int = 0
    
    var playList = [1, 2, 3, 4, 5]
//    var playList: [Int]
//    var playList: [Play]
//
//     struct Play {
//         var game1: Int = 1
//         var game2: Int = 2
//         var game3: Int = 3
//         var game4: Int = 4
//
//         var round: String = "1라운드"
//     }
//
     
    var guessNumberArray = [0, 0, 0, 0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func pressButton(_ number: Int) {
        if guessNumberArray[0] == 0 {
            guessNumberArray[0] = number
        } else if guessNumberArray[1] == 0 {
            guessNumberArray[1] = number
        } else if guessNumberArray[2] == 0 {
            guessNumberArray[2] = number
        } else if guessNumberArray[3] == 0 {
            guessNumberArray[3] = number
        }
        
        tableView.reloadData()
    }
    
    @IBAction func numberPad1(_ sender: UIButton) {
        print("1")
        pressButton(1)
        
    }
    
    @IBAction func numberPad2(_ sender: UIButton) {
        print("2")
        pressButton(2)
    }
    
    @IBAction func numberPad3(_ sender: UIButton) {
        print("3")
        pressButton(3)
    }
    
    @IBAction func numberPad4(_ sender: UIButton) {
        print("4")
        pressButton(4)
    }
    
    @IBAction func numberPad5(_ sender: UIButton) {
        print("5")
        pressButton(5)
    }
    
    @IBAction func numberPad6(_ sender: UIButton) {
        print("6")
        pressButton(6)
    }
    
    @IBAction func numberPad7(_ sender: UIButton) {
        print("7")
        pressButton(7)
    }
    
    @IBAction func numberPad8(_ sender: UIButton) {
        print("8")
        pressButton(8)
    }
    
    @IBAction func numberPad9(_ sender: UIButton) {
        print("9")
        pressButton(9)
    }
    
     /*
    @IBAction func numberPadX(_ sender: UIButton) {
        print("X")
        
        firstGuessNumber = 0
        secondGuessNumber = 0
        thirdGuessNumber = 0
        fourthGuessNumber = 0
        // TODO:
        //        firstNumberLabel.text = ""
        //        secondNumberLabel.text = ""
        //        thirdNumberLabel.text = ""
        //        fourthNumberLabel.text = ""
    }
    
    @IBAction func numberPadV(_ sender: UIButton) {
        checkRound(firstGuessNumber, secondGuessNumber, thirdGuessNumber, fourthGuessNumber)
        reset()
        
        print("이번 라운드는 \(roundCount)입니다")
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
        print("reset")
        reset()
        
    }
    */
}

// MARK: - Related TableViews
extension ViewController: UITableViewDataSource, UITableViewDelegate {
    // TODO: 꼭 고치자~ ^^
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return playList.count
        // return playList.count
    }
     
    // FIXME: dsdfdsfas
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! BaseCell
//
        cell.roundLabel.text = String(playList[indexPath.row])
        cell.firstNumberLabel.text = String(guessNumberArray[0])
        cell.secondNumberLabel.text = String(guessNumberArray[1])
        cell.thirdNumberLabel.text = String(guessNumberArray[2])
        cell.fourthNumberLabel.text = String(guessNumberArray[3])
        
//         let play = playList[indexPath.row]
//         cell.skdfjkslabel.text = play.round
//         cell.dslabel.text = play.countdown
//         cell.sslabel.text = play.game[0]
//         cell.aalabel.text = play.game[1]
//         cell.a11label.text = play.game[2]
//         cell.2label.text = play.game[3]
//
//
        
        return cell
    }
    
    func getAnswer(index: Int) -> String {
        return String(index)
    }

    func addOne(index: Int) {
        playList[index] += 1
        tableView.reloadData()
    }
}


// MARK: - ??
/*
 extension ViewController {
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
        ballCount = 0
        strikeCount = 0
        
        shuffleSet()
        
    }
    
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
            // TODO: 지우기
            //            firstNumberLabel.text = ""
            //            secondNumberLabel.text = ""
            //            thirdNumberLabel.text = ""
            //            fourthNumberLabel.text = ""
            
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
            
            BaseCell.strikeLabel.text = "\(StrikeCount)"
            
            for a in array {
                if answer.contains(a), let idx1 = array.firstIndex(of: a), let idx2 = answer.firstIndex(of: a) {
                    array.remove(at: idx1)
                    answer.remove(at: idx2)
                }
            }
            BaseCell.ballLabel.text = "\(4 - array.count - StrikeCount)"
        }
        roundCount += 1
    }
    
    var lastRow = 3
    func pressButton(_ button: Int) {
        let baseCell = BaseCell()
        if firstGuessNumber == 0 {
            firstGuessNumber = button
            // playList.last.firstNumberLabel.text =
            // playList[currentGame].firstNumberLabel.text = ""
            baseCell.FirstNumberLabel.text = String(firstGuessNumber)
        } else if secondGuessNumber == 0 {
            secondGuessNumber = button
            baseCell.SecondNumberLabel.text = String(secondGuessNumber)
        } else if thirdGuessNumber == 0 {
            thirdGuessNumber = button
            baseCell.ThirdNumberLabel.text = String(thirdGuessNumber)
        } else if fourthGuessNumber == 0 {
            fourthGuessNumber = button
            baseCell.FourthNumberLabel.text = String(fourthGuessNumber)
        }
    }
}
 */

