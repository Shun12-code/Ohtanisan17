//
//  menuViewController.swift
//  Ohtanisan17App
//
//  Created by 野村俊介 on 2021/10/09.
//

import UIKit

class menuViewController: UIViewController {
    
    @IBOutlet weak var toTopButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
            toTopButton.layer.cornerRadius = 10
    }
    
    @IBAction func aboutAppPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "toAboutApp", sender: self)

    }
    
    @IBAction func toTopPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
