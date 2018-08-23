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
    init(name:String)
    {
        
        super.init(name:name,type:"Mage",life:80,resistance:5,weapon:Weapon(name:"No Weapon",atk:0),cure:Cure(name:"Potion",cure_value:20))
        
    }
    func heal(target:Character)
    {
       //target.life += self.cure
       // Setting function to heal/cure a character
        let cure = self.cure.cure_value
        target.life += cure
        
        
    }
}

