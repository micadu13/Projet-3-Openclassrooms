//
//  Cure.swift
//  Projet 3-Openclassrooms
//
//  Created by Michael Aidan on 12/08/2018.
//  Copyright © 2018 Michael Aidan. All rights reserved.
//

import Foundation
class Cure {
    //Le coffre au trésor des armes
    
    var name:String
    var ishealing:Bool
    var cure_value:Int
    
    init(name:String,cure_value:Int)
    {
        self.name = name; self.cure_value = cure_value
        ishealing = true
    }
    
    func PlayingWithTheTreatments()
    {
        let treatment1 = Game.init().treatments_chest[0]
        let treatment2 = Game.init().treatments_chest[1]
        let treatment3 = Game.init().treatments_chest[2]
        print("Le coffre à soin a été ouvert." +
        "")
        
    
    }
}
