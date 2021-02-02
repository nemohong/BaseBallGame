//
//  UpDownSliderGame.swift
//  BaseBallGame
//
//  Created by kimsunhong on 2021/02/02.
//  Copyright © 2021 hongnemo. All rights reserved.
//

import Foundation
import UIKit

class UpDownSliderGame : UIViewController {
    
    var randomNumber: Int = 0
    var current: Int = 0
    
    @IBOutlet weak var minimumNumber: UILabel!
    @IBOutlet weak var gussingNumber: UILabel!
    @IBOutlet weak var maximumNumber: UILabel!
    @IBOutlet weak var gussingButton: UIButton!
    @IBOutlet weak var numberSlider: UISlider!

    func reset() {
        randomNumber = Int.random(in: 1...30)
        numberSlider.minimumValue = 0
        numberSlider.maximumValue = 30
        numberSlider.value = 15
        minimumNumber.text = "0"
        maximumNumber.text = "30"
        gussingNumber.text = "15"
        // countTryChance.text = "0 / 5"
        // tryCount = 0
        current = 15
        print(randomNumber)
    }
    
    @IBAction func upDownSlider(_ sender: UISlider) {
        sender.maximumValue = 100
        sender.minimumValue = 0
        sender.value = 50
    }
    
    @IBAction func SliderValueChanged(_ sender: UISlider) {
        current = Int(sender.value)
        sender.value = Float(current)
        print(sender.value)
        gussingNumber.text = String(current)
    }
    
    @IBAction func hitButton(_ sender: Any) {
        print("히트다 히트!!!")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}
