//
//  Character.swift
//  Projet_3_OC-Jeu_video
//
//  Created by Michael Aidan on 06/05/2018.
//  Copyright © 2018 Michael Aidan. All rights reserved.
//

import Foundation

enum Charactertype
{
    case Fighter
    case Mage
    case Giant
    case Dwarf
}



class Character
{
    var name:String
    var attaque:Int = 50
    var arme:String = "Epee"
    var resistance:Int
    
    
    init(name:String,attaque:Int,arme:String,resistance:Int)
    {
        self.name = name; self.attaque = attaque;self.arme = arme;self.resistance = resistance
    }
}

