//
//  ViewController.swift
//  Flashlight App
//
//  Created by Nik on 23.11.2021.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    
    @IBOutlet weak var buttonOfFlashligh: UIButton!
    
    
    var numberOfColor = 1
    
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
        switch numberOfColor {
        case 1: view.backgroundColor = .red
        case 2: view.backgroundColor = .yellow
        case 3: view.backgroundColor = .green
            default: print("error") }
    }
    
    // function which turns on or turns off the flashlight
    func toggleFlash(on: Bool ) {
        guard let device = AVCaptureDevice.default(for: .video), device.hasTorch else { return }
        
        do {
            try device.lockForConfiguration()
            
            device.torchMode = on ? .on : .off
            if on {
                try device.setTorchModeOn(level: AVCaptureDevice.maxAvailableTorchLevel)
            }
            
            device.unlockForConfiguration()
        } catch {
            print("Error: \(error)")
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        if numberOfColor == 3 {
            numberOfColor = 1
        }
        else {
            numberOfColor = numberOfColor + 1
        }
        
        updateUI()
    }
    
    
    
    @IBAction func pressedButton(_ sender: UIButton) {
        
        if buttonOfFlashligh.tag == 0 {
            toggleFlash(on: true)
            buttonOfFlashligh.tag = 1
            buttonOfFlashligh.setTitle("Turn Off", for: .normal)
            buttonOfFlashligh.setImage(UIImage(systemName: "flashlight.on.fill"), for: .normal)
        }
        
        else if buttonOfFlashligh.tag == 1 {
            toggleFlash(on: false)
            buttonOfFlashligh.tag = 0
            buttonOfFlashligh.setTitle("Turn On", for: .normal)
            buttonOfFlashligh.setImage(UIImage(systemName: "flashlight.off.fill"), for: .normal)
        }
        
        
    }
    
}




