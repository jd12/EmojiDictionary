//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Jarred Darren DeVaughn-Brown on 5/19/17.
//  Copyright © 2017 Chadwick. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var emojis : [Emoji] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.dataSource = self;
        tableView.delegate = self;
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
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defViewController = segue.destination as! DefinitionViewController
        defViewController.emoji = sender as! String
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😎"
        emoji1.definition = "Sunglasses Dude"
        emoji1.category = "Smiley"
        emoji1.created = 2007
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😡"
        emoji2.definition = "Angry Susannah"
        emoji2.category = "Smiley"
        emoji2.created = 2008
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "🏃🏿"
        emoji3.definition = "Going to check"
        emoji3.category = "Person"
        emoji3.created = 2010
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "📬"
        emoji4.definition = "The Mail"
        emoji4.category = "Item"
        emoji4.created = 2007
        
        return [emoji1, emoji2, emoji3, emoji4]
        
    }


}

