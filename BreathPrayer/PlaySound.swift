//
//  PlaySound.swift
//  BreathPrayer
//
//  Created by Julie Hess on 6/3/23.
//

import Foundation
import AVFoundation

//MARK: Audio Player

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type) {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            do {
                try AVAudioSession.sharedInstance().setCategory(.playback)
            } catch(let error) {
                print(error.localizedDescription)
            }
            audioPlayer?.play()
        } catch {
    print("ERROR")
        }
    }
}
