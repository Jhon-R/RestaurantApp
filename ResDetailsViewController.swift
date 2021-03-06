//
//  ResDetailsViewController.swift
//  RestaurantApp
//
//  Created by Hong Duc Nguyen on 8/5/17.
//  Copyright © 2017 Hong Duc Nguyen. All rights reserved.
//

import UIKit
import AVFoundation


class ResDetailsViewController: UIViewController{
    
    //notification for music player to play/pause
    
    let notification = NotificationCenter.default
    
    //Music function to play and pause, this feature calls the class from the play pause button in MusicViewController

    @IBAction func playMusic(_ sender: Any) {
        notification.post(name: Notification.Name("coldplaySomethingLT"), object: nil)

    }
    
    
    //Declare a variable to receive data from previous view
    var rDetails: Restau?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //this bundle helps to call the song and form for the music player to be played
        _ = Bundle.main.path(forResource: "coldplay_something_just_like_this", ofType: "mp3")

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var detailsName: UILabel!
    @IBOutlet weak var detailsHours: UILabel!
    @IBOutlet weak var detailsTel: UILabel!
    @IBOutlet weak var detailsWeb: UILabel!
    @IBOutlet weak var detailsAdd: UILabel!
    
    //Oveeride function to display infomation
    override func viewWillAppear(_ animated: Bool) {
        if rDetails != nil{
            detailsName.text = rDetails!.name
            detailsHours.text = rDetails!.open
            detailsTel.text = rDetails!.tel
            detailsWeb.text = rDetails!.website
            detailsAdd.text = rDetails!.address
            detailsHours.sizeToFit()
            detailsWeb.sizeToFit()
            detailsAdd.sizeToFit()
        }
    }
    //Override function to prepare for segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segueResWeb"{
            (segue.destination as! ResWebViewController).resWeb = rDetails!.website
        }
        if segue.identifier == "segueResMap"{
            (segue.destination as! ResMapViewController).resMap = rDetails
        }
    }
    //Create function to unwind segue
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
