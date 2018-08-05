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
    var attack:Int
    var resistance:Int
    var weapon:String
    var type: String
    var treatment: Int
    var weapons_chest:[Weapon] = []
    
    init(name:String,type: String, life:Int,attack:Int,resistance:Int,weapon:String, treatment:Int)
    {
        self.name = name; self.type = type;self.life = life;self.attack = attack; self.resistance = resistance; self.weapon = weapon; self.treatment = treatment
    }
        
    func atk(target:Character)
    {
        if life>0
        {
            target.life -= self.attack
            
            if life < 30
            {
                target.resistance += self.life
                print("La vie de votre personnage était inférieure à 30, nous venons lui donner plus de vie")
    
            }
        }
        
    }
    
    
    
    
   func PlayingwithTheWeapons()
    {
        let weapon1 = weapons_chest[0]
        let weapon2 = weapons_chest[1]
        let weapon3 = weapons_chest[2]
        print("Vous avez la possibilité de choisir une nouvelle arme, parmi les armes suivantes:" +
            "\n1.Tapez 1 pour \(weapon1.name) avec une puissance de \(weapon1.atk);" +
            "\n2. Tapez 2 pour \(weapon2.name) avec une puissance de \(weapon2.atk);" +
            "et \n3. Tapez 3 pour \(weapon3.name) avec une puissance de \(weapon3.atk)")
        let entryOk:Bool = false
        repeat
        {
            if let weaponchosen = readLine()
            {
                var weapon:Weapon?
                switch weaponchosen
                {
                    case "1":
                        weapon = weapons_chest[0]
                    case "2":
                        weapon = weapons_chest[1]
                    case "3":
                        weapon = weapons_chest[2]
                    default:
                        print("Je ne comprends pas, veuillez rééssayer")
                }
                if let selectedweapon = weapon
                {
                    print("Vous avez choisi le \(selectedweapon.name) avec \(selectedweapon.atk) points d'attaque)")
                    
                    
                }
                else
                {
                    return PlayingwithTheWeapons()
                }
            }
        }while(!entryOk)
        
    }
 
 }

