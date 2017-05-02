//
//  WebViewController.swift
//  RSSReader
//
//  Created by Sheng Chi Chen on 2017/4/26.
//  Copyright © 2017年 Sheng Chi Chen. All rights reserved.
//

import UIKit

class WebViewController: UIViewController, UIWebViewDelegate {

    @IBOutlet weak var myWebView: UIWebView!
    
    @IBOutlet weak var myActivityIndicator: UIActivityIndicatorView!
    
    var webAddressFromViewOne:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myWebView.delegate = self
        if let okAddress = webAddressFromViewOne{
            if let url = URL(string: okAddress){
                let request = URLRequest(url: url)
                myWebView.loadRequest(request)
            }
        }
    }
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        myActivityIndicator.startAnimating()
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        myActivityIndicator.stopAnimating()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
