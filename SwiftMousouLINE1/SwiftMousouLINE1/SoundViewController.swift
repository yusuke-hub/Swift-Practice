//
//  SoundViewController.swift
//  SwiftMousouLINE1
//
//  Created by 川端雄介 on 2020/03/21.
//  Copyright © 2020 Yusuke Kawabata. All rights reserved.
//

import UIKit
import AVFoundation

class SoundViewController: UIViewController {

    @IBOutlet var timeLabel: UILabel!
    
    @IBOutlet var imageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        画面が表示された時に画像を非表示
        imageView2.isHidden = true
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tap(_ sender: Any) {
        // imageView2を表示させる
        
        // タイマーをスタートさせてラベルへ秒数を表示する
        // baby.mp3の音声を再生する
    }
    
    @IBAction func deny(_ sender: Any) {
        // 電源を切る
        // 音声をstopする
        //  画面をViewControllerへ戻す
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
