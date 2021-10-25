//
//  ViewController.swift
//  Ohtanisan17App
//
//  Created by 野村俊介 on 2021/10/08.
//

import UIKit

class topViewController: UIViewController {

    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var webButton: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        recordButton.layer.cornerRadius = 10
        webButton.layer.cornerRadius = 10
        
    }
    

    @IBAction func menuPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "toMenu", sender: self)

    }
    
    @IBAction func webPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "toWeb", sender: self)
    }
    
    
    @IBAction func recordPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "toRecord", sender: self)
    }
    
}

