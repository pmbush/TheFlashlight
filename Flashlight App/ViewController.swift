//
//  ViewController.swift
//  Flashlight App
//
//  Created by Nik on 23.11.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var isColor = 1
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    //MARK: - Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    // function which switch display collor
    fileprivate func updateUI() {
        switch isColor {
        case 1: view.backgroundColor = .red
        case 2: view.backgroundColor = .yellow
        case 3: view.backgroundColor = .green
            default: print("error") }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        if isColor == 3 {
            isColor = 1
        }
        else {
            isColor = isColor + 1
        }
        
        updateUI()
    }
    
    
}




