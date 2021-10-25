//
//  aboutAppController.swift
//  Ohtanisan17App
//
//  Created by 野村俊介 on 2021/10/14.
//

import UIKit

class aboutAppController: UIViewController {
    
    @IBOutlet weak var toMenuButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
            toMenuButton.layer.cornerRadius = 10
    }
    
    @IBAction func toMenuPressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
}
