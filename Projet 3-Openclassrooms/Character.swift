//
//  Character.swift
//  Projet_3_OC-Jeu_video
//
//  Created by Michael Aidan on 06/05/2018.
//  Copyright © 2018 Michael Aidan. All rights reserved.
//

import Foundation


class Character
{
    
    enum charactertype
    {
        case Fighter
        case Mage
        case Giant
        case Dwarf
    }
    var name:String
    var life:Int
    var attaque:Int
    var resistance:Int
    var arme:String
    
    init(name:String,life:Int,attaque:Int,resistance:Int,arme:String)
    {
        self.name = name;self.life = life;self.attaque = attaque; self.resistance = resistance;self.arme = arme
    }
        
    func atk(cible:Character)
    {
        cible.life -= self.attaque
    }
}

