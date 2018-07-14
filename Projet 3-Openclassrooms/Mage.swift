//
//  Mage.swift
//  Projet_3_OC-Jeu_video
//
//  Created by Michael Aidan on 06/05/2018.
//  Copyright © 2018 Michael Aidan. All rights reserved.
//

import Foundation
class Mage:Character
{
    init(name:String,soin:Int = 20)
    {
        
         super.init(name:name,type:"Mage",life: 80,attaque:0,resistance: 5,arme:"Potion")
        
    }
}
