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
    
    var audioPlayer = AVAudioPlayer()
    var audioPlayer2 = AVAudioPlayer()
    var audioPlayer3 = AVAudioPlayer()
    
    
    //    let items = ["coldplay_something_just_like_this","coldplay_viva_la_vida"]
    //    var sounds = [AVAudioPlayer]()
    var Load = ["coldplay_something_just_like_this.wav","coldplay_viva_la_vida.wav", "sign_of_the_times.wav"]
    
    
    
    //       if  audioPlayer.isPlaying{
    //            audioPlayer.pause()
    

    @IBAction func coldplaySomethingLT(_ sender: Any) {
        
        if audioPlayer.isPlaying{
            audioPlayer.pause()
        }
        else {
            audioPlayer.play()
                   }

    }
    @IBAction func coldplayVivaLV(_ sender: Any) {
        if audioPlayer2.isPlaying{
            audioPlayer2.pause()
            
        }
        else {
            audioPlayer2.play()
            
        }

    }
    
    
    @IBAction func HarryStls(_ sender: Any) {
        if audioPlayer3.isPlaying{
            audioPlayer3.pause()
            
        }
        else {
            audioPlayer3.play()
        }

    }
    
    
    
       override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let path = Bundle.main.path(forResource: "coldplay_something_just_like_this", ofType: "mp3")
        
        let path2 = Bundle.main.path(forResource: "coldplay_viva_la_vida", ofType: "mp3")
        
        let path3 = Bundle.main.path(forResource: "sign_of_the_times", ofType: "mp3")
        
        let url = URL(fileURLWithPath: path!)
        let url2 = URL(fileURLWithPath: path2!)
        let url3 = URL(fileURLWithPath: path3!)
        
        
        do{
            try audioPlayer = AVAudioPlayer(contentsOf: url)
            try audioPlayer2 = AVAudioPlayer(contentsOf: url2)
            try audioPlayer3 = AVAudioPlayer(contentsOf: url3)
            
            
            
        }
        catch { print("file not available")
        }
    }
    
    //        do {
    //            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "coldplay_something_just_like_this",  ofType: "mp3")!))
    //
    //            audioPlayer.prepareToPlay()
    //
    //
    //        }
    //
    //        catch{
    //            print(error)
    //        }
    //
    //    }
    
    //        for path in paths {
    //
    //            do
    //            {
    //                let audioPath = Bundle.main.path(forResource: path, ofType: "mp3")
    //
    //                let player = try AVAudioPlayer(contentsOf: NSURL(fileURLWithPath: audioPath!) as URL)
    //
    //                sounds.append(player)
    //
    //            }
    //            catch
    //            {
    //                //ERROR
    //            }
    //
    //        }
    //
    //        for sound in sounds {
    //            sound.play()
    //        }
    //    }
    
    //    func songSelection(){
    //        let path = Bundle.main.path(forResource: items[""], ofType: "mp3")
    //        let url = URL(fileURLWithPath: path!)
    //        do {
    //            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "coldplay_something_just_like_this", ofType: "mp3")!))
    //            audioPlayer.prepareToPlay()
    //
    //
    //        }
    //
    //        catch{
    //            print(error)
    //        }
    //    }
    //    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent  component:Int) -> Int{
    //        return items.count
    //    }
    //
    //    public func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component:Int) -> String?{
    //        return items[row]
    //    }
    //
    //
    //
    //    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
    //    do {
    //    audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: items[row], ofType: "mp3")!))
    //    audioPlayer.prepareToPlay()
    //
    //
    //    }
    //
    //    catch{
    //    print("error")
    //    }
    //}
    
    
    
    
    
    
    
    
    
    //    func firstSong(){
    //    func secondSong(){
    //        do {
    //            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "coldplay_viva_la_vida",  ofType: "mp3")!))
    //            audioPlayer.prepareToPlay()
    //
    //
    //        }
    //
    //        catch{
    //            print(error)
    //        }
    //
    //
    //
    //    }
    
    
    
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
