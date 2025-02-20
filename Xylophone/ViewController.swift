//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player: AVAudioPlayer!
    //var player: AVAudioPlayer?
    
    //MARK: viewDidLoad()
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //MARK: IBActions
    @IBAction func keyPressed(_ sender: UIButton) {
        let keyName = sender.titleLabel?.text ?? ""
        
        print("\(keyName) Button Pressed")
        playSound(name: keyName)
        sender.alpha = 0.5
        Timer.scheduledTimer(withTimeInterval: 0.2, repeats: false) { Timer in
            
        }
        sender.alpha = 1
    }
    
    //MARK: playSound()
    private func playSound(name: String) {
        
         let url = Bundle.main.url(forResource:name, withExtension: ".wav")
         player = try! AVAudioPlayer(contentsOf: url!)
         player.play()
         
        /*
        guard let url = Bundle.main.url(forResource: name, withExtension: ".wav") else { return }
        
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback, mode: .default)
            try AVAudioSession.sharedInstance().setActive(true)
            
            player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileType.wav.rawValue)
            
            guard let player = player else { return }
            player.play()
        } catch let error {
            print(error.localizedDescription)
        }
         */
    }

}

