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
   
    func PlayingWithTheWeapons()-> Weapon
    {
        let weapon1 = Game.init().weapons_chest[0]
        let weapon2 = Game.init().weapons_chest[1]
        let weapon3 = Game.init().weapons_chest[2]
        
        print("1. Tapez 1 pour \(weapon1.name)" +
            "\n2.Tapez 2 pour \(weapon2.name)" +
            "\n2.Tapez 2 pour \(weapon3.name)")
        
        let entryOK:Bool = false
        repeat
        {
            if let choice = readLine()
            {
                var weapon:Weapon?
                
                switch choice
                {
                    case "1":
                    weapon = weapon1
                    case "2":
                    weapon = weapon2
                    case "3":
                    weapon = weapon3
                    default:
                        print("Je ne comprends pas, veuillez réessayer")
                    
                }
                if let selectedweapon = weapon
                {
                    print("Vous avez choisi la/le \(weapon?.name)  avec une puissance de \(weapon?.atk)")
                }
                else
                {
                    return PlayingWithTheWeapons()
                }
                
            }
            
            
        }while(!entryOK)
        
    }
    
   
}
