//
//  ViewController.swift
//  Swift5CountUp
//
//  Created by 川端雄介 on 2020/03/19.
//  Copyright © 2020 Yusuke Kawabata. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    
    var count = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func plus(_ sender: Any) {
        
        count = count + 1

        label.text = String(count)
        
    }
    
    @IBAction func minus(_ sender: Any) {
        
        count = count - 1
        
        label.text = String(count)
        
        if (count < 0){
            
        label.text = String(count)
        
        }
    }
}

