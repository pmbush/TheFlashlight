//
//  ViewController.swift
//  Flashlight App
//
//  Created by Nik on 23.11.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var isLightOn = true
    
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
        view.backgroundColor = isLightOn ? .white : .black
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        isLightOn.toggle()
        updateUI()
    }
    
    
}

