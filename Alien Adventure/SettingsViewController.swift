//
//  SettingsViewController.swift
//  Alien Adventure
//
//  Created by Jarrod Parkes on 10/4/15.
//  Copyright © 2015 Udacity. All rights reserved.
//
//  Udacity Editor - Student Signature.
//  Code Signature.
//  3960c466b6e28ebeeaf7d8bbfb464ecf

import UIKit

// MARK: - SettingsViewController: UIViewController

class SettingsViewController: UIViewController {
    
    // MARK: Properties
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var levelSegmentedControl: UISegmentedControl!
    @IBOutlet weak var startGameButton: UIButton!
    @IBOutlet weak var showBadgesLabel: UILabel!    
    @IBOutlet weak var showBadgesSwitch: UISwitch!
    
    // MARK: Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let attributesDictionary: [String:AnyObject] = [
            NSFontAttributeName: UIFont(name: Settings.Common.Font, size: 18)!
        ]
        
        titleLabel.font = UIFont(name: Settings.Common.Font, size: 32)
        showBadgesLabel.font = UIFont(name: Settings.Common.Font, size: 20)
        showBadgesSwitch.onTintColor = UIColor.magentaColor()
        levelSegmentedControl.setTitleTextAttributes(attributesDictionary, forState: .Normal)
        Settings.Common.Level = levelSegmentedControl.selectedSegmentIndex
        startGameButton.titleLabel?.font = UIFont(name: Settings.Common.Font, size: 20)
        
        addTargets()
    }
    
    // MARK: Add Targetsx
    
    func addTargets() {
        startGameButton.addTarget(self, action: #selector(SettingsViewController.startGame), forControlEvents: .TouchUpInside)
        
        showBadgesSwitch.addTarget(self, action: #selector(SettingsViewController.showBadges), forControlEvents: .ValueChanged)
        
        levelSegmentedControl.addTarget(self, action: #selector(SettingsViewController.switchLevel), forControlEvents: .ValueChanged)
        print("adding targets!")
    }
    
    // MARK: Implementing Actions
    
    func switchLevel(segmentControl: UISegmentedControl) {
        print("level control has changed!")
        Settings.Common.Level = segmentControl.selectedSegmentIndex
    }
    
    func showBadges(switchControl: UISwitch) {
        print("show badges switch has changed!")
        
        //Checking 
        if switchControl.on == true {
            Settings.Common.ShowBadges = switchControl.on
        }
    }
    
    func startGame() {
        print("start button has been pressed!")
        
        let alienAdventureViewController = self.storyboard!.instantiateViewControllerWithIdentifier("AlienAdventureViewController") as! AlienAdventureViewController
        
        self.presentViewController(alienAdventureViewController,
                                   animated: true, completion: nil)
        
        
    }
}