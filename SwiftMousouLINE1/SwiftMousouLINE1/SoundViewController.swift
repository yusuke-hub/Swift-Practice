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
    
    var audioPlayer : AVAudioPlayer!
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 画面が表示された時に画像を非表示
        imageView2.isHidden = true
        
        // 秒数を非表示にする
        timeLabel.isHidden = true
        
        // 音声を再生する
        if let url = Bundle.main.url(forResource: "callMusic", withExtension: "mp3"){
            do{
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {
                // プレイヤー作成失敗
                // その場合は、プレイヤーをnilとする
                audioPlayer = nil
            }
        } else {
            // urlがnilなので再生できない
            fatalError("Url is nil.")
        }
    }
    
    @IBAction func tap(_ sender: Any) {
        // imageView2を表示させる
        
        // タイマーをスタートさせてラベルへ秒数を表示する
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector:#selector(timercountUP), userInfo: nil, repeats: true)
        
        timeLabel.text = String(count)
        
        // baby.mp3の音声を再生する
        playBabySound()
        
    }
    
    func playBabySound(){
        
        if let url = Bundle.main.url(forResource: "callMusic", withExtension: "mp3"){
            do{
                audioPlayer = try AVAudioPlayer(contentsOf: url)
                audioPlayer?.play()
            } catch {
                // プレイヤー作成失敗
                // その場合は、プレイヤーをnilとする
                audioPlayer = nil
            }
        } else {
            // urlがnilなので再生できない
            fatalError("Url is nil.")
        }
    }
    
    func timercountUP(){
        
        count = count + 1
        
    }
    @IBAction func deny(_ sender: Any) {
        // 電源を切る
        // 音声をstopする
        audioPlayer.stop()
        //  画面をViewControllerへ戻す
        dismiss(animated: true, completion: nil)
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
