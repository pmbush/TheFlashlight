//
//  ViewController.swift
//  Flashlight App
//
//  Created by Nik on 23.11.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var isLightOn = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    // function which switch display collor
    fileprivate func updateUI() {
        view.backgroundColor = isLightOn ? .white : .black
    }
    
    @IBAction func buttonPressed() {
        isLightOn.toggle()
        updateUI()
    }
    
}

