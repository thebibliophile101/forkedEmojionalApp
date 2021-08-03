//
//  ViewController.swift
//  Emojional
//
//  Created by Kennedy Morganfield on 6/7/19.
//  Copyright © 2019 Kennedy Morganfield. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // Create dictionary that assigns each button (emoji) to a zodiac sign
    let emojis = ["🐏": "Aries", "🐮": "Taurus", "👯": "Gemini", "🦀": "Cancer", "🦁": "Leo", "🌬": "Virgo", "⚖️": "Libra", "🦂": "Scorpio", "🏹": "Sagittarius", "🐐": "Capricorn", "🌊": "Aquarius", "🎏": "Pisces"]
    
    // Create second dictionary that assigns the zodiac sign from above to an array of horoscopes
    var horoscopes = [
    "Aries": ["You don't have to treat difficult feelings like hot coals in your hand that must be thrown off for fear that they'll burn you.", "You can be daring without being careless.", "Choices are yours to make today."],
    
    "Taurus": ["What's safe is not always what's needed. Be brave.", "Take pleasure.", "Get rid of something today."],
    
    "Gemini": ["Be curious today and take things apart, then put them back together.", "Clarity is the same as transcendence.", "Do you intellectualize as a way to avoid feeling too deeply?"],
    
    "Cancer": ["The heart is the origin of your worldview.", "Clean out something forgotten and dusty.", "Try to communicate your inner truth to the outher world today."],
    
    "Leo": ["Look in the mirror and ask yourself 'who's the boss?'", "No expectations.", "Try not to have glamorous delusions today."],
    
    "Virgo": ["Let the people you love grow and change without judging or taking your love away.", "You don't need to say sorry today.", "Avoid people and things that don't make your brain better."],
    
    "Libra": ["Practice being comfortable alone.", "Remain a few steps ahead of the game today.", "Get rid of material crutches and ask yourself if you really need them."],
    
    "Scorpio": ["Try to stop obsessing today.", "Don't get stuck in a cycle of self-pity.", "Make yourself tea, put on some music, and just get it done."],
    
    "Sagittarius": ["Get a plane ticket if you can and just go.", "Nobody gets to own you.", "Stop accusing the world."],
    
    "Capricorn": ["Aim for neat, frank, and uncomplicated.", "Be open to discomfort.", "Try not to think yourself into a hole today."],
    
    "Aquarius": ["You are becoming who you are.", "Try to fulfill your earthly obligations today.", "Answer honestly: are you out of touch with reality?"],
    
    "Pisces": ["Look up at the sky and adjust your thinking.", "You shouldn't have to teach people how to do right by you.", "Drink water."]
    
    ]
    
    // On click, pop-up alert displays a random horoscope from the array assigned to the zodiac sign/button
    @IBAction func showMessage(sender: UIButton) {
        let selectedSign = sender.titleLabel?.text
        let random:UInt32 = arc4random_uniform(3)
        let emojiHoroscope = horoscopes[emojis[selectedSign!]!]?[Int(random)]
    
        let alertController = UIAlertController(title: emojis[selectedSign!], message: emojiHoroscope, preferredStyle: UIAlertControllerStyle.alert)
        
        alertController.addAction(UIAlertAction(title: "Noted", style: UIAlertActionStyle.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)
    }


}

