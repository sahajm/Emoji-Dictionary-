//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by sahaj makharia on 02/06/17.
//  Copyright © 2017 Sahaj Makharia. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var coolTableView: UITableView!

    var emojis : [Emoji] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        coolTableView.dataSource = self
        coolTableView.delegate = self
        emojis = makeEmojiArray()
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArray () -> [Emoji] {
        
        let emoji1 = Emoji()
        
        emoji1.stringEmoji = "😀"
        emoji1.category = "Smiley"
        emoji1.definition = "Happy"
        emoji1.founded = 2011
        
        let emoji2 = Emoji()
        
        emoji2.stringEmoji = "💩"
        emoji2.category = "Smiley"
        emoji2.definition = "Wrecked"
        emoji2.founded = 2015
        
        let emoji3 = Emoji()
        
        emoji3.stringEmoji = "😠"
        emoji3.category = "Smiley"
        emoji3.definition = "Revenge is wating on the other side"
        emoji3.founded = 2016
        
        let emoji4 = Emoji()
        
        emoji4.stringEmoji = "🙏🏻"
        emoji4.category = "Smiley"
        emoji4.definition = "Maa tujhe salam"
        emoji4.founded = 2013

        let emoji5 = Emoji()
        
        emoji5.stringEmoji = "😂"
        emoji5.category = "Smiley"
        emoji5.definition = "Sheppish!! 😂"
        emoji5.founded = 2017
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5]
    }

}

