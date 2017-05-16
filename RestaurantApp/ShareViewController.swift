//
//  ShareViewController.swift
//  RestaurantApp
//
//  Created by JONATHAN OSWALDO RUIZ on 12/05/2017.
//  Copyright © 2017 Hong Duc Nguyen. All rights reserved.
//

import UIKit
import AVFoundation


class ShareViewController: UIViewController {
    
    //notification for music player to play/pause
    
    let notification = NotificationCenter.default
    let notification2 = NotificationCenter.default
    let notification3 = NotificationCenter.default
    
    //Music function to play and pause, this feature calls the class from the play pause button in MusicViewController

    @IBAction func playMusic(_ sender: Any) {
        

        
        notification.post(name: Notification.Name("coldplaySomethingLT"), object: nil)
        notification2.post(name: Notification.Name("coldplayVivaLV"), object: nil)
        notification3.post(name: Notification.Name("HarryStls"), object: nil)
        
        
    }

    @IBAction func GoToInstagram(_ sender: UIButton) {
        let instagramHooks = "instagram://user?username=johndoe"
        let instagramUrl = NSURL(string: instagramHooks)
        if UIApplication.shared.canOpenURL(instagramUrl! as URL)
        {
            UIApplication.shared.openURL(instagramUrl! as URL)
            
        } else {
            //redirect to safari because the user doesn't have Instagram
            UIApplication.shared.openURL(NSURL(string: "http://instagram.com/")! as URL)
        }
        
    }
    @IBAction func GoToFacebook(_ sender: UIButton) {
        let facebookHooks = "facebook://user?username=johndoe"
        let facebookUrl = NSURL(string: facebookHooks)
        if UIApplication.shared.canOpenURL(facebookUrl! as URL)
        {
            UIApplication.shared.openURL(facebookUrl! as URL)
            
        } else {
            //redirect to safari because the user doesn't have Instagram
            UIApplication.shared.openURL(NSURL(string: "http://facebook.com/")! as URL)
        }
        
    }


        // Do any additional setup after loading the view.
  
    @IBAction func GoToTwitter(_ sender: UIButton) {
        let twitterHooks = "twitter://user?username=johndoe"
        let twitterUrl = NSURL(string: twitterHooks)
        if UIApplication.shared.canOpenURL(twitterUrl! as URL)
        {
            UIApplication.shared.openURL(twitterUrl! as URL)
            
        } else {
            //redirect to safari because the user doesn't have Instagram
            UIApplication.shared.openURL(NSURL(string: "http://twitter.com/")! as URL)
        }
        
    }
override func viewDidLoad() {
    //this bundle helps to call the song and form for the music player to be played
    _ = Bundle.main.path(forResource: "coldplay_something_just_like_this", ofType: "mp3")
    _ = Bundle.main.path(forResource: "coldplay_viva_la_vida", ofType: "mp3")
    _ = Bundle.main.path(forResource: "sign_of_the_times", ofType: "mp3")

    
    super.viewDidLoad()
      }
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
