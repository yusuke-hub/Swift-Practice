//
//  ViewController.swift
//  Swift5ImageView1
//
//  Created by 川端雄介 on 2020/03/19.
//  Copyright © 2020 Yusuke Kawabata. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    Ctrl押しながらドラッグ&ドロップ
    @IBOutlet var imageView: UIImageView!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func changeImage(_ sender: Any) {
        
        count = count + 1
        
//        もしtapが10回されたら
//        imageViewのimageをbackgroundに変える
        if (count >= 10) {
            
            imageView.image = UIImage(named: "background")
          
            if(count >= 20) {
                
                imageView.image = UIImage(named: "beach")
                if(count >= 30) {
                    
                    imageView.image = UIImage(named: "background")
                    
                }
            }
        }
    }
}

