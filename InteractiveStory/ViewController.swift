//
//  ViewController.swift
//  InteractiveStory
//
//  Created by Michael Dardis on 8/15/18.
//  Copyright © 2018 Michael Dardis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "startAdventure" {
            guard let pageController = segue.destination as? PageController else { return }
            
            pageController.page = Adventure.story
        }
    }
    
    
    
    

}





















