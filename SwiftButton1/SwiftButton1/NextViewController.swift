//
//  NextViewController.swift
//  SwiftButton1
//
//  Created by 川端雄介 on 2020/03/18.
//  Copyright © 2020 Yusuke Kawabata. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {

    @IBOutlet var changeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func change(_ sender: AnyObject) {
        
        // 次の画面へと描かれたラベルの文字を変更したい
        changeLabel.text = "暗号が解除されました。"
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
