//
//  ViewController.swift
//  SwiftWKWebView//
//  Created by 川端雄介 on 2020/03/20.
//  Copyright © 2020 Yusuke Kawabata. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {

    @IBOutlet var webView: WKWebView!
    
    var urlString:String = "https://www.udemy.com/cart/success/281623954/"
    
    var indicator:UIActivityIndicatorView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setIndicator()
        
        guard let url = URL(string: urlString) else {
            return
        }
        
    let req = URLRequest(url: url, cachePolicy: .returnCacheDataElseLoad, timeoutInterval: 100)
    
    self.webView.load(req)

    }

    @IBAction func back(_ sender: Any) {
        
        webView.goBack()
    }
    @IBAction func forward(_ sender: Any) {
        
        webView.goForward()
    }
    @IBAction func reflesh(_ sender: Any) {
        
        webView.reload()
    }
    
    func setIndicator(){
        
        //インディケーターの初期化を行う
        indicator = UIActivityIndicatorView()
        //サイズの設定,CGRectは対象オブジェクトの位置とサイズ両方を管理するクラス
        indicator.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        indicator.center = CGPoint(x: UIScreen.main.bounds.size.width/2, y: UIScreen.main.bounds.size.height/2)
        indicator.hidesWhenStopped = true
        indicator.style = .gray
        
        //webViewにaddSubView
        self.webView.addSubview(indicator)
    }
    
    //通信が開始されたタイミングで呼ばれる
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        
        //インディケータを回す
        
        indicator.startAnimating()
    }
    
    //通信が完了したタイミングで呼ばれる
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        
        indicator.stopAnimating()
    }
}
