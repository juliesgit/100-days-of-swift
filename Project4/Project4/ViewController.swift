//
//  ViewController.swift
//  Project4
//
//  Created by julie on 01/03/2019.
//  Copyright © 2019 booksgit. All rights reserved.
//

import UIKit

// import needed to use the WKWebView class
import WebKit

// class ViewController: UIViewController {
// The class we created viewC extends from UIViewC AND comforms? to WKNDelegateProtocol
class ViewController: UIViewController, WKNavigationDelegate {
    var webView: WKWebView!

    override func loadView() {
        // we create an instance of the class WKWebView
        // store it as a property in webView
        webView = WKWebView()
        // delegation is a programming pattern used a lot in iOS
        // here when web navigation page is used -- links to view controller
        // not clear
        // all navigation delegate protocol are optional
        webView.navigationDelegate = self
        // it becomes the view for our navigation controller
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // ! "force unwrap"
        // because there is no string interpolation
        // you have to use HTTPS
        // 1. your have a str
        // 2. you have a URL URL(myStr)
        // 3. turn the url into a URLRequest
        // 4. Then, you can load the url!
        let url = URL(string: "https://www.hackingwithswift.com")! // URL is a specific "type"
        webView.load(URLRequest(url: url))
        // move is the web browser using swipe left, right to go back to the previous page
        webView.allowsBackForwardNavigationGestures = true
    }


}
