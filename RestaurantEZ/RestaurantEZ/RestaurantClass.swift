//
//  RestaurantClass.swift
//  RestaurantEZ
//
//  Created by Gabriel Querbes on 10/25/15.
//  Copyright © 2015 The Modern Tech. All rights reserved.
//

import Foundation

class RestaurantClass{
    

    
        //return a random restaurant
        func getRandomRestaurant(campus:String) ->Restaurant{
            var restaurant = Restaurant()
            if (campus == "F"){
                let fxRestaurant = createFairfaxRestaurant()
                let randomNumber = Int (arc4random_uniform(UInt32(fxRestaurant.count)))
                restaurant = fxRestaurant[randomNumber]
            }
            else if (campus == "S"){
                let sciTechRestaurant = createSciTechRestaurant()
                let randomNumber = Int (arc4random_uniform(UInt32(sciTechRestaurant.count)))
                restaurant = sciTechRestaurant[randomNumber]
            }
            return restaurant
        }
    
    
    
    
    
    
    //GENERATE DATA
    
    func createFairfaxRestaurant() ->[Restaurant]{
        var fxRestuarants = [Restaurant]()
        
        let aRestaurant = Restaurant(name: "Panera", hours: "7:00am-9:00pm", campus: "Fairfax", location: "JC Floor 1", speciality: "Soups",logo: "panera.png", sound: "something")
        fxRestuarants.append(aRestaurant)
        
        let bRestaurant = Restaurant(name: "Chick-fil-a", hours: "7:00am-9:00pm", campus: "Fairfax", location: "SUB 1", speciality: "Lemonade",logo: "chickfila.png", sound: "chicken")
        fxRestuarants.append(bRestaurant)
        
        let cRestaurant = Restaurant(name: "Panda Express", hours: "1:00am-5:00pm", campus: "Fairfax", location: "Merten Hall", speciality: "Panda?",logo: "pandaexpress.png", sound: "fattening")
        fxRestuarants.append(cRestaurant)
        
        let dRestaurant = Restaurant(name: "Subway", hours: "1:00am-5:00pm", campus: "Fairfax", location: "Roger's Hall", speciality: "Subs",logo: "subway.png", sound: "something")
        fxRestuarants.append(dRestaurant)
        
        let eRestaurant = Restaurant(name: "Taco Bell", hours: "1:00am-5:00pm", campus: "Fairfax", location: "SUB 1", speciality: "Munchies",logo: "tacobell.png", sound: "fattening")
        fxRestuarants.append(eRestaurant)
        
        let fRestaurant = Restaurant(name: "Einstein Bagels", hours: "1:00am-5:00pm", campus: "Fairfax", location: "Merten Hall / Engineering", speciality: "Bagels",logo: "einsteinbagels.png", sound: "danish")
        fxRestuarants.append(fRestaurant)
        
        let gRestaurant = Restaurant(name: "Rathskeller", hours: "1:00am-5:00pm", campus: "Fairfax", location: "SUB 1", speciality: "BEER!",logo: "rathskeller.png", sound: "beer")
        fxRestuarants.append(gRestaurant)
        
        let hRestaurant = Restaurant(name: "Burger King", hours: "1:00am-5:00pm", campus: "Fairfax", location: "JC Floor 1", speciality: "Whopper",logo: "burgerking.png", sound: "burger")
        fxRestuarants.append(hRestaurant)
        
        return fxRestuarants
    }
    
    //function to create Sci/Tech restaurants
    func createSciTechRestaurant()->[Restaurant]{
        var sciTechRestaurants = [Restaurant]()
        
        let aRestaurant = Restaurant(name: "Randall's Cafe", hours: "7:00am-9:00pm", campus: "Sci/Tech", location: "Occocuan", speciality: "Fries",logo: "randalls.png", sound: "greasy")
        sciTechRestaurants.append(aRestaurant)
        
        let bRestaurant = Restaurant(name: "Subway", hours: "7:00am-9:00pm", campus: "Sci/Tech", location: "Somewhere", speciality: "Subs",logo: "subway.png", sound: "something")
        sciTechRestaurants.append(bRestaurant)
        
        let cRestaurant = Restaurant(name: "Jazzman's", hours: "1:00am-5:00pm", campus: "Sci/Tech", location: "Bull Run Hall", speciality: "Coffee",logo: "jazzmans.png", sound: "danish")
        sciTechRestaurants.append(cRestaurant)
        
        
        return sciTechRestaurants
    }
    
    
    
    
    
    
    
}