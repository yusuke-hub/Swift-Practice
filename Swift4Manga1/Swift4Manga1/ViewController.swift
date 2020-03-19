//
//  ViewController.swift
//  Swift4Manga1
//
//  Created by 川端雄介 on 2020/03/19.
//  Copyright © 2020 Yusuke Kawabata. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var countLabel: UILabel!
    
    @IBOutlet var runnerImageView: UIImageView!
    
    // 上記のUIImageView型は配列として扱うことはできないので、UIImage型に変更
    var imageArray = [UIImage]()
    
    var timer1 = Timer()
    
    var countUp = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image0 = UIImage(named: "dash0.png")
        let image1 = UIImage(named: "dash1.png")
        let image2 = UIImage(named: "dash2.png")
        let image3 = UIImage(named: "dash3.png")
        let image4 = UIImage(named: "dash4.png")
        let image5 = UIImage(named: "dash5.png")
        
        imageArray = [image0!, image1!, image2!, image3!, image4!, image5!]
    }
    
    @IBAction func run(_ sender: Any) {
        
        //タイマーをスタート
        timer1 = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true, block:  { (timer) in
            
            //カウントアップ
            self.countUp = self.countUp + 1
            
            //ラベルに反映
            self.countLabel.text = String(self.countUp)
            
        //runerImageViewnerImageViewに画像を反映する
        
    }
    
    @IBAction func stop(_ sender: Any) {
        
    }
}
}