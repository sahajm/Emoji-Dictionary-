//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by sahaj makharia on 02/06/17.
//  Copyright © 2017 Sahaj Makharia. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var foundedLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = Emoji()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        emojiLabel.text = emoji.stringEmoji
        foundedLabel.text = "Founded: \(emoji.founded)"
        categoryLabel.text = emoji.category
        definitionLabel.text = emoji.definition
        
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
