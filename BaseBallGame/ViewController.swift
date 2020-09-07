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
    
    
    
    //    var play: Int? {
    //        didSet {
    //            if let play = play {
    //                firstNumberLabel.text = play.first
    //                secondNumberLabel.text = play.second
    //                thirdNumberLabel.text = play.third
    //                fourthNumberLabel.text = play.fourth
    //                strikeLabel.text = play.strike
    //                ballLabel.text = play.ball
    //                roundLabel.text = play.round
    //            }
    //        }
    //    }
    
}

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var playChance: Int = 1
    
    var firstAnswerNumber: Int = 0
    var secondAnswerNumber: Int = 0
    var thirdAnswerNumber: Int = 0
    var fourthAnswerNumber: Int = 0
    
    var firstGuessNumber: Int = 0
    var secondGuessNumber: Int = 0
    var thirdGuessNumber: Int = 0
    var fourthGuessNumber: Int = 0
    
    var roundCount: Int = 0
    var ballCount: Int = 0
    var strikeCount: Int = 0
    
    var chance = 2
    var playList: Array = [1]
    var firstNumberLabel: Array = [0]
    var secondNumberLabel: Array = [0]
    var thirdNumberLabel: Array = [0]
    var fourthNumberLabel: Array = [0]
    var strikeLabel: Array = [0]
    var roundLabel: Array = [0]
    var ballLabel: Array = [0]
    var guessNumberArray = [0, 0, 0, 0]
    
    //    var playList: [Int]
    //    var playList: [Play]
    
    //     struct Play {
    //         var game1: Int = 1
    //         var game2: Int = 2
    //         var game3: Int = 3
    //         var game4: Int = 4
    //
    //         var round: String = "1라운드"
    //     }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reset()
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    func reset() {
        
        firstAnswerNumber = 0
        secondAnswerNumber = 0
        thirdAnswerNumber = 0
        fourthAnswerNumber = 0
        firstGuessNumber = 0
        secondGuessNumber = 0
        thirdGuessNumber = 0
        fourthGuessNumber = 0
        roundCount = 0
        ballCount = 0
        strikeCount = 0
        firstNumberLabel = Array(repeating: 0, count: playChance)
        secondNumberLabel = Array(repeating: 0, count: playChance)
        thirdNumberLabel = Array(repeating: 0, count: playChance)
        fourthNumberLabel = Array(repeating: 0, count: playChance)
        strikeLabel = Array(repeating: 0, count: playChance)
        ballLabel = Array(repeating: 0, count: playChance)
        for _ in 0...playChance {
            playList.append(chance)
            chance += 1
        }
        shuffleSet()
        tableView.reloadData()
        
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
        
        print(array)
        print(answer)
        
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
                strikeCount += 1
            }
            if secondNumber == secondAnswerNumber {
                strikeCount += 1
            }
            if thirdNumber == thirdAnswerNumber {
                strikeCount += 1
            }
            if fourthNumber == fourthAnswerNumber {
                strikeCount += 1
            }
            
            //            baseCell.strikeLabel.text = "\(strikeCount)"
            
            for a in array {
                if answer.contains(a), let idx1 = array.firstIndex(of: a), let idx2 = answer.firstIndex(of: a) {
                    array.remove(at: idx1)
                    answer.remove(at: idx2)
                }
            }
            ballCount = 4 - array.count - strikeCount
            //            baseCell.ballLabel.text = "\(4 - array.count - strikeCount)"
        }
        print("strike는 \(strikeCount)")
        print("ball은 \(ballCount)")
        strikeLabel[roundCount] = strikeCount
        ballLabel[roundCount] = ballCount
        roundCount += 1
    }
    
    func pressButton(_ number: Int) {
        if firstNumberLabel[roundCount] == 0 {
            firstNumberLabel[roundCount] = number
        } else if secondNumberLabel[roundCount] == 0 {
            secondNumberLabel[roundCount] = number
        } else if thirdNumberLabel[roundCount] == 0 {
            thirdNumberLabel[roundCount] = number
        } else if fourthNumberLabel[roundCount] == 0 {
            fourthNumberLabel[roundCount] = number
        }
        tableView.reloadData()
    }
    
    
    
    func pressXButton() {
        if fourthNumberLabel[roundCount] != 0 {
            fourthNumberLabel[roundCount] = 0
        } else if thirdNumberLabel[roundCount] != 0 {
            thirdNumberLabel[roundCount] = 0
        } else if secondNumberLabel[roundCount] != 0 {
            secondNumberLabel[roundCount] = 0
        } else if firstNumberLabel[roundCount] != 0 {
            firstNumberLabel[roundCount] = 0
        }
        tableView.reloadData()
    }
    
    @IBAction func numberPadV(_ sender: UIButton) {
        if firstNumberLabel[roundCount] != 0 && secondNumberLabel[roundCount] != 0 && thirdNumberLabel[roundCount] != 0 && fourthNumberLabel[roundCount] != 0 {
            checkRound(firstNumberLabel[roundCount], secondNumberLabel[roundCount], thirdNumberLabel[roundCount], fourthNumberLabel[roundCount])
            tableView.reloadData()
            strikeCount = 0
            ballCount = 0
        }
        
        if roundCount == playChance {
            let alert = UIAlertController(title: "You lose...", message: nil, preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(action)
            present(alert, animated: true, completion: nil)
            reset()
            return
        }
        
        print("이번 라운드는 \(roundCount + 1)입니다")
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
        return playChance
        // return playList.count
    }
    
    // FIXME: dsdfdsfas
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! BaseCell
        //
        cell.roundLabel.text = String(playList[indexPath.row])
        cell.firstNumberLabel.text = String(firstNumberLabel[indexPath.row])
        cell.secondNumberLabel.text = String(secondNumberLabel[indexPath.row])
        cell.thirdNumberLabel.text = String(thirdNumberLabel[indexPath.row])
        cell.fourthNumberLabel.text = String(fourthNumberLabel[indexPath.row])
        cell.strikeLabel.text = String(strikeLabel[indexPath.row])
        cell.ballLabel.text = String(ballLabel[indexPath.row])
        
        //         let play = playList[indexPath.row]
        //         cell.roundLabel.text = play.round
        //         cell.dslabel.text = play.countdown
        //         cell.firstNumberLabel.text = play.game1
        //         cell.secondNumberLabel.text = play.game2
        //         cell.thirdNumberLabel.text = play.game3
        //         cell.fourthNumberLabel.text = play.game4
        
        return cell
    }
    
//    func getAnswer(index: Int) -> String {
//        return String(index)
//    }
//    
//    func addOne(index: Int) {
//        playList[index] += 1
//        tableView.reloadData()
//    }
}


// MARK: - ??
/*
 extension ViewController {
 
 
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

