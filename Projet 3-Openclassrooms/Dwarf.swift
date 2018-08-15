//
//  Dwarf.swift
//  Projet_3_OC-Jeu_video
//
//  Created by Michael Aidan on 06/05/2018.
//  Copyright © 2018 Michael Aidan. All rights reserved.
//

import Foundation
class Dwarf:Character
{
    init(name:String)
    {
        
        super.init(name:name,type:"Dwarf",life: 60,resistance: 10,weapon:Weapon(name:"Axe",atk:50),cure:Cure(name: "No Cure", cure_value:0))
        
    }
}
