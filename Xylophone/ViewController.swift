//
//  ViewController.swift
//  Xylophone
//
//  Created by Ahmed on 4/9/21.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var audioPlayer : AVAudioPlayer!
    var selectedSoundFileName : String = ""
    let soundArray = ["note1", "note2", "note3", "note4.wav", "note5", "note6", "note7"]
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func notePressed(_ sender: UIButton) {
        var selectedSoundFileName : String = soundArray[sender.tag - 1]
        playSound()
        
    }
    
    func playSound()
    
    {
        
        let soundURL = Bundle.main.url(forResource: selectedSoundFileName, withExtension: "wav")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error)
        }
        
        audioPlayer.play()
        
       
       
    }
    
    
    

}

