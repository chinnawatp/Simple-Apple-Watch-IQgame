//
//  ConcludeController.swift
//  IQzy
//
//  Created by cHinn on 6/8/2558 BE.
//  Copyright (c) 2558 cHinn. All rights reserved.
//

import WatchKit
import Foundation


class ConcludeController: WKInterfaceController {
    @IBOutlet var scoreLabel: WKInterfaceLabel!
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        if let post = context as? [String: String] {
            scoreLabel.setText(post["score"])
        }
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    @IBAction func tapDone(sender: UIButton) {
        self.popToRootController()
    }
    
}