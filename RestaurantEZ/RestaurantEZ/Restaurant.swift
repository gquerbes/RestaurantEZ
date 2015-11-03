//
//  Restaurant.swift
//  RestaurantEZ
//
//  Created by Gabriel Querbes on 10/27/15.
//  Copyright © 2015 The Modern Tech. All rights reserved.
//

import Foundation


class Restaurant{
    
    var name = ""
    
    var hours = ""
    
    var campus = ""
    
    var location = ""
    
    var specialty = ""
    
    var logo = ""
    
    var sound = ""

    
    init(){
        
    }

    //initializer for the restaurant class
    init(name:String, hours: String, campus: String, location: String, speciality:String, logo: String, sound: String){
        self.name = name
        self.hours = hours
        self.campus = campus
        self.location = location
        self.specialty = speciality
        self.logo = logo
        self.sound = sound
    }
    
}










