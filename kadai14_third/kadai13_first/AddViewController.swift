//
//  AddViewController.swift
//  kadai13_first
//
//  Created by 白鳥貢 on 2020/08/29.
//  Copyright © 2020 mitsugu.shiratori. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {
    @IBOutlet private(set) weak var textField: UITextField!
  
    private(set) var fruit:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction private func pressSaveButton(_ sender: Any) {

        fruit = textField.text
        performSegue(withIdentifier: "saveSelect", sender: sender)
    }
}
