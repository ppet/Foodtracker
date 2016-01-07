//
//  Meal.swift
//  Foodtracker
//
//  Created by Philippe petit on 06/01/2016.
//  Copyright © 2016 Philippe petit. All rights reserved.
//

import UIKit
class Meal {
    // MARK: Properties
    
    var name: String
    var photo: UIImage?
    var rating: Int
    
    // MARK: Initialization
    init?(name: String, photo: UIImage?, rating: Int) {
        // Initizalize stored properties
        self.name = name
        self.photo = photo
        self.rating = rating
        
        // Initialization should fail if there is no name or if the rating is negative
        if name.isEmpty || rating < 0 {
            return nil
        }
    }
}
