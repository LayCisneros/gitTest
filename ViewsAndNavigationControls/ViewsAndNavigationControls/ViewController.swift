//
//  ViewController.swift
//  ViewsAndNavigationControls
//
//  Created by Layla Cisneros on 03/01/2023.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var myView: UIView!
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var myFakeView: UIView!
    @IBOutlet weak var myWebView: WKWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func myButtonAction(_ sender: Any) {
        myFakeView.isHidden = true
    }
    

}

