//
//  ViewController.swift
//  RestaurantApp
//
//  Created by Hong Duc Nguyen on 7/5/17.
//  Copyright © 2017 Hong Duc Nguyen. All rights reserved.
//

import UIKit
import AVFoundation


class ViewController: UIViewController {
    
    //notification for music player to play/pause
    let notification = NotificationCenter.default


    
    //Music function to play and pause, this feature calls the class from the play pause button in MusicViewController



    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //this bundle helps to call the song and form for the music player to be played
        _ = Bundle.main.path(forResource: "coldplay_something_just_like_this", ofType: "mp3")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //Create function to unwind segue
    @IBAction func unWindSegue(segue: UIStoryboardSegue){
        
    }
}

