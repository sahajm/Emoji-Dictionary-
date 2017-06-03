//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by sahaj makharia on 02/06/17.
//  Copyright © 2017 Sahaj Makharia. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = "No"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = emoji
        if emoji == "💩" {
        definitionLabel.text = "Cute Hamster"
        }
        if emoji == "😂" {
            definitionLabel.text = "What a happy life"
        }
        if emoji == "🙏🏻" {
            definitionLabel.text = "Ma tujhe Salam"
        }
        if emoji == "😠" {
            definitionLabel.text = "Wait for it!"
        }
        if emoji == "😀" {
            definitionLabel.text = "Happy go Lucky!!"
        }
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
