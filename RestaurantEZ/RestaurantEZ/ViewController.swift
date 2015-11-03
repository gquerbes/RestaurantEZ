//
//  ViewController.swift
//  RestaurantEZ
//
//  Created by Gabriel Querbes on 10/25/15.
//  Copyright © 2015 The Modern Tech. All rights reserved.
//

import AVFoundation
import UIKit

class ViewController: UIViewController {
    
    // audio variable
    var sound: AVAudioPlayer!
    
    //Label for restaurant name
    @IBOutlet weak var lblName: UILabel!
    
    //label for campus
    @IBOutlet weak var lblCampus: UILabel!
   
    //label for location
    @IBOutlet weak var lblLocation: UILabel!
    
    //label for specialy
    @IBOutlet weak var lblSpecialty: UILabel!
    
    //label for hours
    @IBOutlet weak var lblHours: UILabel!
    
    //image holder
    @IBOutlet weak var imgLogo: UIImageView!
    
    //fairfax button
    @IBAction func btnFairfax(sender: AnyObject) {
        //updates the restaurant label with a fairfax restaurant
        updateRestaurantLabel("F")
        
    }
   
    //sci/tech button
    @IBAction func btnSciTech(sender: AnyObject) {
        //updates the restaurant label with a sci/tech restaurant
        updateRestaurantLabel("S")
    }
    
    // This function changes the restaurant after a shake
    override func motionEnded(motion:UIEventSubtype,
        withEvent event: UIEvent?){
            //show a new fairfax restauant after a shake
            if motion == .MotionShake{
                updateRestaurantLabel("F")
            }
    }
    
    //update the restaurant label
    func updateRestaurantLabel(campus: String){
        let restaurant = RestaurantClass()
        UIView.animateWithDuration(3.0,animations: {self.lblName.alpha = 1.0})
            //create temp restaurant
            let randRestaurant = restaurant.getRandomRestaurant(campus)
            //set label info
            lblName.text = randRestaurant.name
            lblCampus.text = randRestaurant.campus
            lblLocation.text = randRestaurant.location
            lblSpecialty.text = randRestaurant.specialty
            lblHours.text = randRestaurant.hours
            imgLogo.image = UIImage(named: randRestaurant.logo)
            //return random color and set as background
            let colors = ColorStruct()
            self.view.backgroundColor=colors.getRandomColor()
            //use play sound method to play sound for restaurant
            playSound(randRestaurant)

        
    }
    
    func playSound(aRestaurant: Restaurant){
         sound = try? AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource(aRestaurant.sound, ofType:"wav")!))
         sound.play()
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

