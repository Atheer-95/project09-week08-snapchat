//
//  ChatAudio.swift
//  Snapchat
//
//  Created by Fno Khalid on 09/04/1443 AH.
//

import UIKit
import AVFoundation

class ChatAudio {
    
    var recordingSession: AVAudioSession!
    var audioRecorder: AVAudioRecorder!
    var audioPlayer: AVAudioPlayer?
    var timer: Timer!
    var timePassed = 0
    
    
    func requestPermisson() -> Bool{
        var permission = false
        AVAudioSession.sharedInstance().requestRecordPermission { (status) in
            permission = status
        }
        return permission
    }
    
    func getDirectory() -> URL{
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let documentDirectory = paths[0]
        return documentDirectory
    }
    
    func timePassedFrom(seconds : Int) -> (Int, Int) {
        return ((seconds % 3600) / 60, (seconds % 3600) % 60)
    }
    
}
