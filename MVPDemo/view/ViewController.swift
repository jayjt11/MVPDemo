//
//  ViewController.swift
//  MVPDemo
//
//  Created by Jayant Tiwari on 10/03/21.
//  Copyright © 2021 Expleo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lblName: UILabel!
    
    lazy var presenterView = PresenterView(presenterViewDelegate: self)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    // custom listener
    @IBAction func btnClicked(_ sender: Any) {
        
        presenterView.fetchData()
        
    }
}
extension ViewController  : PresenterViewDelegate {
   
    
    func updateUI(name: String) {
        lblName.text = name
        lblName.backgroundColor = UIColor.red
    }
    
    
    
}

