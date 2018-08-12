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
    var atk:Int
    var ishealing:Bool
    var cure:Int
    
    init(name:String, atk:Int, cure:Int)
    {
        self.name = name; self.atk = atk; self.cure = cure
        ishealing = true
    }
    
    
}
