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
    var type: String
    var soin: Int
    
    init(name:String,type: String, life:Int,attaque:Int,resistance:Int,arme:String, soin:Int)
    {
        self.name = name; self.type = type;self.life = life;self.attaque = attaque; self.resistance = resistance;self.arme = arme; self.soin = soin
    }
        
    func atk(target:Character)
    {
        if life>0
        {
            target.life -= self.attaque
        }
        
        else
        {
                print("\(self.name) est mort, et ne peut plus attaquer. Vous avez perdu un tour!")
        }
    }
 
 }

