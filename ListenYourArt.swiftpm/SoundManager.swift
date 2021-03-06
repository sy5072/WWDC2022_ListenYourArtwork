//
//  File.swift
//  Origami
//
//  Created by Seungyun Kim on 2022/04/25.
//

import Foundation
import AVKit
import SwiftUI


class SoundManager: ObservableObject {
    
    static let instance = SoundManager()
    
    var player: AVAudioPlayer?
    
    enum soundOption: String {
        case CMajor
        case DMajor
        case EMajor
        case FMajor
        case GMajor
        case AMajor
        case BMajor
        case red
        case blue
        case yellow
        case purple
        case green
    }
    
    func playSound(sounds: soundOption) {
        guard let url = Bundle.main.url(forResource: sounds.rawValue, withExtension: ".mp3") else { return }
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch let error {
            print("재생하는데 오류가 생겼습니다. 오류코드 \(error.localizedDescription)")
        }
    }
    
    func playBeat(beats: String) {
        guard let url = Bundle.main.url(forResource: beats, withExtension: ".mp3") else { return }
        
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch let error {
            print("재생하는데 오류가 생겼습니다. 오류코드 \(error.localizedDescription)")
        }
    }
    
    
}
