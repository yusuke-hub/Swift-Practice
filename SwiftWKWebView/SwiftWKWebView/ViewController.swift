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
}
