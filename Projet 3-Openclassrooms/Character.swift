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
    var resistance:Int
    var weapon:Weapon
    var type: String
    var treatment: Int
    
    
    init(name:String,type: String, life:Int,resistance:Int,weapon:Weapon, treatment:Int)
    {
        self.name = name; self.type = type;self.life = life;self.resistance = resistance; self.weapon = weapon; self.treatment = treatment
    }
        
    func atk(target:Character)
    {
        if life>0
        {
            target.life -= self.weapon.atk
            //target.life -= self.attack
            
           
        }
        
    }
    
    func recovery()
    {
        if life < 30
        {
            
            self.life += self.resistance
            print("La vie de votre personnage était inférieure à 30, nous venons lui donner plus de vie")
            
        }
    }
    
    
    
   
 
 }

