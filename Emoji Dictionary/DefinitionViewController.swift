//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Jarred Darren DeVaughn-Brown on 5/20/17.
//  Copyright © 2017 Chadwick. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    @IBOutlet weak var emojiLabel: UILabel!
    
    var emoji = "NO EMOJI"
    @IBOutlet weak var createdLabel: UILabel!
    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        if emoji == "😎" {
            definitionLabel.text = "Sunglasses Dude"
            categoryLabel.text = "Category: Smiley"
            createdLabel.text = "Created: 2007"
        }
        else if emoji == "😡" {
            definitionLabel.text = "Angry Susannah"
            categoryLabel.text = "Category: Smiley"
            createdLabel.text = "Created: 2008"
        }
        else if emoji == "🏃🏿" {
            definitionLabel.text = "Running to check"
            categoryLabel.text = "Category: Person"
            createdLabel.text = "Created: 2007"
        }
        else if emoji == "📬" {
            definitionLabel.text = "Mailbox"
            categoryLabel.text = "Category: Item"
            createdLabel.text = "Created: 2007"
        }
        else {
            definitionLabel.text = "NO EMOJI"
            categoryLabel.text = "Category: N/A"
            createdLabel.text = "Created: N/A"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
