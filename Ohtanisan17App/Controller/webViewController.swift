//
//  webViewController.swift
//  Ohtanisan17App
//
//  Created by 野村俊介 on 2021/10/08.
//

import UIKit
import WebKit

class webViewController: UIViewController {

    @IBOutlet weak var toTopButton: UIButton!
    @IBOutlet weak var web: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        toTopButton.layer.cornerRadius = 10
        
        let url = URL(string: "https://www.google.com/search?sxsrf=AOaemvIWPVm6Q_vpLoUpcZhvLK2I9-L_Wg:1633700372280&q=%E5%A4%A7%E8%B0%B7%E7%BF%94%E5%B9%B3&tbm=nws&source=univ&tbo=u&sxsrf=AOaemvIWPVm6Q_vpLoUpcZhvLK2I9-L_Wg:1633700372280&sa=X&ved=2ahUKEwiTou-S-LrzAhWNeN4KHZTDDp8Qt8YBegQIIxAD&biw=1440&bih=789&dpr=2")
        let request = URLRequest(url: url!)
        web.load(request)

    }
    
    @IBAction func toTopPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
