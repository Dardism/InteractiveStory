//
//  Audio.swift
//  InteractiveStory
//
//  Created by Michael Dardis on 8/23/18.
//  Copyright © 2018 Michael Dardis. All rights reserved.
//

import Foundation
import AudioToolbox

extension StoryData {
    var soundEffectName: String {
        switch self {
        case .droid, .home: return "HappyEnding"
        case .monster: return "Ominous"
        default: return "PageTurn"
        }
    }
    
    var soundEffectURL: URL {
        let path = Bundle.main.path(forResource: soundEffectName, ofType: "wav")!
        return URL(fileURLWithPath: path)
    }
}

class SoundEffectsPlayer {
    var sound: SystemSoundID = 0
    
    func playSound(for story: StoryData) {
        let soundURL = story.soundEffectURL as CFURL
        AudioServicesCreateSystemSoundID(soundURL, &sound)
        AudioServicesPlayAlertSound(sound)
    }
}
























