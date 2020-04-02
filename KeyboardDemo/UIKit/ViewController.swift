//
//  ViewController.swift
//  KeyboardDemo
//
//  Created by Michael Borgmann on 01/04/2020.
//  Copyright © 2020 Michael Borgmann. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    @IBOutlet weak var textField3: UITextField!
    @IBOutlet weak var textField4: UITextField!
    
    var overlay: UIView!
    var image: UIImage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        textField1.delegate = self
        textField2.delegate = self
        textField3.delegate = self
        textField4.delegate = self
        
        image = UIImage(named: "AGG_SOURCE")
        view.backgroundColor = UIColor(patternImage: image!)
        
        overlay = UIView(frame: view.frame)
        overlay.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        view.insertSubview(overlay, at: 0)
    }
    

}

extension ViewController: UITextFieldDelegate {
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        switch textField {
        case textField1:
            overlay.backgroundColor = .red
        case textField2:
            overlay.backgroundColor = .red
        case textField3:
            overlay.backgroundColor = .black
        case textField4:
            overlay.backgroundColor = .white
        default:
            overlay.backgroundColor = .white
        }
                
        titleLabel.isHidden = true
        textField1.isHidden = true
        textField2.isHidden = true
        textField3.isHidden = true
        textField4.isHidden = true
        
        tabBarController?.tabBar.isHidden = true
        
        _ = ChangeKeyColor()
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        overlay.backgroundColor = UIColor.black.withAlphaComponent(0.8)
        
        titleLabel.isHidden = false
        textField1.isHidden = false
        textField2.isHidden = false
        textField3.isHidden = false
        textField4.isHidden = false
        
        tabBarController?.tabBar.isHidden = false
    }
    
}
