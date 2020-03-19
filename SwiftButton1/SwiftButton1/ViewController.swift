//
//  ViewController.swift
//  SwiftButton1
//
//  Created by 川端雄介 on 2020/03/18.
//  Copyright © 2020 Yusuke Kawabata. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //countという変数の中に5が入っています
    //countという変数を下で使うことができるようになりました
    var count = 5
    
    var moji = "あいうえお"

    override func viewDidLoad() {
        super.viewDidLoad()
        //　勝手に呼ばれる場所
        
        count = 10
        print(count)
    }
    @IBAction func tap(_ sender: AnyObject) {
        // ボタンを押して離した時の処理

    }
}

