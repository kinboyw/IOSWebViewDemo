//
//  ViewController.swift
//  WebViewExample
//
//  Created by wayou on 10/26/18.
//  Copyright © 2018 wayou. All rights reserved.
//
//  references:
//  - https://www.hackingwithswift.com/read/4/2/creating-a-simple-browser-with-wkwebview
//  - https://stackoverflow.com/questions/49638653/load-local-web-files-resources-in-wkwebview


import UIKit
import WebKit

class ViewController: UIViewController,WKNavigationDelegate {
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        load remote url
        let url = URL(string: "http://test.mgtv.com:8081/storymap.html?test=1")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
        webView.scrollView.isScrollEnabled = false
        //webView.scrollView.bounces = false
        
        
//        load local html file
//        let url = Bundle.main.url(forResource: "example", withExtension: "html", subdirectory: "local_html")!
//        webView.loadFileURL(url, allowingReadAccessTo: url)
//        let request = URLRequest(url: url)
//        webView.load(request)
    }
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

