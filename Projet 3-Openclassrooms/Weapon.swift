//
//  Weapon.swift
//  Projet 3-Openclassrooms
//
//  Created by Michael Aidan on 27/05/2018.
//  Copyright © 2018 Michael Aidan. All rights reserved.
//

import Foundation
class Weapon {
   //Le coffre au trésor des armes
    
    var name:String
    var atk:Int
    var ishealing:Bool
    
    init(name:String, atk:Int)
    {
        self.name = name; self.atk = atk
        ishealing = false
    }
   
    
    
   
}
