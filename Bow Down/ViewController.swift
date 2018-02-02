//
//  ViewController.swift
//  Bow Down
//
//  Created by Austin Quach on 2/1/18.
//  Copyright © 2018 Austin Quach. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        button.backgroundColor = .clear
        button.layer.cornerRadius = 8
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.black.cgColor
        button.contentEdgeInsets = UIEdgeInsetsMake(5,5,5,5) 
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var button: UIButton!
    var _sfx: AVAudioPlayer?
    var audioPlayer = AVAudioPlayer()
    
    @IBAction func button(_ sender: Any) {
        do {
            try playSound()
        } catch {
            print(error)
        }
    }
    
    func playSound() throws {
        let url = Bundle.main.url(forResource: "bow", withExtension: "mp3")!
        audioPlayer = try AVAudioPlayer(contentsOf: url)
        audioPlayer.prepareToPlay()
        audioPlayer.play()
    }
}

