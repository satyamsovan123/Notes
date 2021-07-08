//
//  ViewController.swift
//  Notes
//
//  Created by Satyam Sovan Mishra on 07/07/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var player: AVAudioPlayer!
    @IBAction func buttonPressed(_ sender: UIButton) {
        // print(sender.currentTitle!)
        sender.alpha = 0.5
        sleep(UInt32(0.3))
        sender.alpha = 1
        playFile(fileName: sender.currentTitle!)
    }
    
    func playFile(fileName: String) {
        // print(fileName)
        let url = Bundle.main.url(forResource: fileName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
}

