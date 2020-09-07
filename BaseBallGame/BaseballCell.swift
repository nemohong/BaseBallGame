//
//  BaseballCell.swift
//  BaseBallGame
//
//  Created by kimsunhong on 2020/09/07.
//  Copyright © 2020 hongnemo. All rights reserved.
//

import UIKit

class BaseballCell: UITableViewCell {
    
    @IBOutlet weak var firstNumberLabel: UILabel!
    @IBOutlet weak var secondNumberLabel: UILabel!
    @IBOutlet weak var thirdNumberLabel: UILabel!
    @IBOutlet weak var fourthNumberLabel: UILabel!
    @IBOutlet weak var strikeLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    @IBOutlet weak var ballLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
  
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
