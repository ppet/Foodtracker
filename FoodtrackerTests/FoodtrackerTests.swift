//
//  FoodtrackerTests.swift
//  FoodtrackerTests
//
//  Created by Philippe petit on 05/01/2016.
//  Copyright © 2016 Philippe petit. All rights reserved.
//

import UIKit
import XCTest
@testable import Foodtracker

class FoodtrackerTests: XCTestCase {
    // MARK: FoodTracker Tests
    
    // Tests to confirm that the meal initializer returns when no name or a negative rating is provided
    func testMealInitialization(){
        // Success case
        let potentialItem = Meal(name: "Newest Meal", photo: nil, rating: 5)
        XCTAssertNotNil(potentialItem)
        
        // Failure cases
        // 1
        let noName = Meal(name: "", photo: nil, rating: 5)
        XCTAssertNil(noName, "Empty name is invalid")
        
        // 2
        let badRating = Meal(name: "Really bad rating", photo: nil, rating: -1)
        XCTAssertNil(badRating, "Negative ratings are invalid, be positive")

    }
}
