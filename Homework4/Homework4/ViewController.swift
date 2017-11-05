//
//  ViewController.swift
//  Homework4
//
//  Created by millennium on 05.11.17.
//  Copyright © 2017 millennium. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var currentDateLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE, dd MMMM yyyy"
        currentDateLabel.text = dateFormatter.string(from: Date())
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

