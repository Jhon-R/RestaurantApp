//
//  MusicViewController.swift
//  RestaurantApp
//
//  Created by JONATHAN OSWALDO RUIZ on 11/05/2017.
//  Copyright © 2017 Hong Duc Nguyen. All rights reserved.
//

import UIKit
import AVFoundation
import MediaPlayer




class MusicViewController: UIViewController {
    
    
    //AVAudioplayer to be called for the music player to work
    static var audioPlayer = AVAudioPlayer()
    static var audioPlayer2 = AVAudioPlayer()
    static var audioPlayer3 = AVAudioPlayer()
    
    
    //calling the songs for music player
    var Load = ["coldplay_something_just_like_this.wav","coldplay_viva_la_vida.wav", "sign_of_the_times.wav"]
    
    //this function is for the purpose for the songs to be played in other view controllers
    let ncObserver = NotificationCenter.default
    let ncObserver2 = NotificationCenter.default
    let ncObserver3 = NotificationCenter.default


    
   //Music players: song buttons
    
    //plays the first song
    @IBAction func coldplaySomethingLT(_ sender: Any) {
        
        if MusicViewController.audioPlayer.isPlaying{
            MusicViewController.audioPlayer.pause()
        }
        else {
            MusicViewController.audioPlayer.play()
                   }

    }
    //plays the second song
    @IBAction func coldplayVivaLV(_ sender: Any) {
        if MusicViewController.audioPlayer2.isPlaying{
            MusicViewController.audioPlayer2.pause()
            
        }
        else {
            MusicViewController.audioPlayer2.play()
            
        }

    }
    
    //plays the third song
    @IBAction func HarryStls(_ sender: Any) {
        if MusicViewController.audioPlayer3.isPlaying{
            MusicViewController.audioPlayer3.pause()
            
        }
        else {
            MusicViewController.audioPlayer3.play()
        }

    }
    
    
    
       override func viewDidLoad() {
        super.viewDidLoad()
        
        
      //the function for the purpose for the songs to be played in other view controllers
        //add observer for the first song
        ncObserver.addObserver(self, selector: #selector (self.coldplaySomethingLT), name: Notification.Name("coldplaySomethingLT"), object: nil)
        
        //add observer for the second song
        ncObserver2.addObserver(self, selector: #selector (self.coldplayVivaLV), name: Notification.Name("coldplayVivaLV"), object: nil)
        
        //add observer for the third song
        ncObserver3.addObserver(self, selector: #selector (self.HarryStls), name: Notification.Name("HarryStls"), object: nil)
        
        //path transition for music player
        let path = Bundle.main.path(forResource: "coldplay_something_just_like_this", ofType: "mp3")
        
        let path2 = Bundle.main.path(forResource: "coldplay_viva_la_vida", ofType: "mp3")
        
        let path3 = Bundle.main.path(forResource: "sign_of_the_times", ofType: "mp3")
        
        //url for music player
        let url = URL(fileURLWithPath: path!)
        let url2 = URL(fileURLWithPath: path2!)
        let url3 = URL(fileURLWithPath: path3!)
        
        //function so the music player can play more than 1 song
        do{
            try MusicViewController.audioPlayer = AVAudioPlayer(contentsOf: url)
            try MusicViewController.audioPlayer2 = AVAudioPlayer(contentsOf: url2)
            try MusicViewController.audioPlayer3 = AVAudioPlayer(contentsOf: url3)
            
            
            
        }
        catch { print("file not available")
        }
    }
    
    
    
    
    // Do any additional setup after loading the view.
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
