//
//  ResInfoViewController.swift
//  RestaurantApp
//
//  Created by Hong Duc Nguyen on 7/5/17.
//  Copyright © 2017 Hong Duc Nguyen. All rights reserved.
//

import UIKit
import AVFoundation


class ResInfoViewController: UIViewController {
    //Delcare a variable to recive data from previous view
    var r: Restau?



    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      //this bundle helps to call the song and form for the music player to be played
        _ = Bundle.main.path(forResource: "coldplay_something_just_like_this", ofType: "mp3")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //notification for music player to play/pause
    
    let notification = NotificationCenter.default


    //Music function to play and pause, this feature calls the class from the play pause button in MusicViewController
    
    @IBAction func musicPlayPause(_ sender: Any) {
        
        notification.post(name: Notification.Name("coldplaySomethingLT"), object: nil)


        
    }
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet var infoImage: UIImageView!
    @IBOutlet weak var infoName: UILabel!
    
    //Function to show infomation in this view
    override func viewWillAppear(_ animated: Bool) {
        if r != nil{
            infoName.text = r!.name
            infoImage.image = UIImage(named: r!.name)
            infoLabel.text = r!.info
            infoLabel.sizeToFit()
            infoName.sizeToFit()
        }
    }
    
    //Prepare for segue - pass data from this view to the next view
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueResDetails"{
            (segue.destination as! ResDetailsViewController).rDetails = r
        }
    }
    //Create func to unwind segue
    @IBAction func unWindSegue(segue: UIStoryboardSegue){
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
