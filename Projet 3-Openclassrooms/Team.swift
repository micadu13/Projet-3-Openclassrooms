//
//  Team.swift
//  Projet_3_OC-Jeu_video
//
//  Created by Michael Aidan on 06/05/2018.
//  Copyright © 2018 Michael Aidan. All rights reserved.
//

import Foundation
class Team
{
   
    
    var team_name:String = ""
    static var characters_name: [String] = []
    var characters:[Character]=[]
    
    
    init()
    {
        self.setTeamName()
       
    }
    
    
    func setTeamName()
    {
       
        if let entreeClavier = readLine()
        {
            if entreeClavier != ""
            {
                self.team_name = entreeClavier
            }
        }
        
    }
    
 
    func chooseCharacter()
    {
        
        while(characters.count<3)
        {
            presentationCharacter()
         
        }
        
        if(characters.count == 3)
        {
            recapCharacter()
        }
    }
    
    
    
    func presentationCharacter()
    {
            print("Veuillez choisir un personnage dans la liste suivante. Rapper, vous devez en choisir 3 maximum: "
                + "\n1: Un Fighter"
                + "\n2: Un Mage"
                + "\n3: Un Giant"
                + "\n4: Un Dwarf")
            if let choice = readLine()
            {
                switch choice
                {
                    case "1":
                    print("Vous avez choisi le Fighter")
                    print("Veuillez nommer votre Fighter")
                    
                    let fighter_name = unique_name_character()
                    Team.characters_name.append(fighter_name)
                    let fighter = Fighter(name:fighter_name)
                    characters.append(fighter)
                    print("Votre fighter s'appelle \(fighter.name)")
                    
                    case "2":
                    print("Vous avez choisi le Mage")
                    print("Veuillez nommer votre Mage")
                    let mage_name = unique_name_character()
                    Team.characters_name.append(mage_name)
                    let mage = Mage(name:mage_name)
                    characters.append(mage)
                    print("Votre mage s'appelle \(mage.name)")
                    
                    case "3":
                    print("Vous avez choisi le Giant")
                    print("Veuillez nommer votre Giant")
                    let giant_name = unique_name_character()
                    Team.characters_name.append(giant_name)
                    let giant = Giant(name:giant_name)
                    characters.append(giant)
                    print("Votre giant s'appelle \(giant.name)")
                    
                    case "4":
                    print("Vous avez choisi le Dwarf")
                    print("Veuillez nommer votre Dwarf")
                    let dwarf_name = unique_name_character()
                    Team.characters_name.append(dwarf_name)
                    let dwarf = Dwarf(name:dwarf_name)
                    characters.append(dwarf)
                    print("Votre dwarf s'appelle \(dwarf.name)")
                    
                    default:
                        print("Je ne comprends pas, veuillez rééssayer")
                }
            }
        

}
   
    func recapCharacter()
    {
        for personnage in characters
        {
            print("Récapitulons, votre personnage de type \(personnage.type) s'appelle \(personnage.name) et il a \(personnage.life) points de vie.")
        }
        
    }
  

    
    
    func checkuniquename_character(_ character_name:String)-> Bool
    {
        for character in Team.characters_name
        {
            if(character_name == character)
            {
                print("Le nom existe deja")
                return false
            }
        }
        Team.characters_name.append(character_name)
        return true
    }
    
    func unique_name_character()->String
    {
        let unique_character = false
        repeat
        {
            if let character_name = readLine()
            {
                if (checkuniquename_character(character_name))
                {
                    return character_name
                }
                else
                {
                    print("Le nom de votre pesonnage doit être unique, veuillez renommer le personnage")
                }
            }
            
        } while !unique_character
        
       
        }
    
  
    
    func PlayingWithTheCharacters()-> Character
    {
       

        print("1. Tapez 1 pour \(characters[0].name), vie : \(characters[0].life)"
                + "\n2.Tapez 2 pour:\(characters[1].name), vie : \(characters[1].life) "
                + "\n3.Tapez 3 pour: \(characters[2].name), vie : \(characters[2].life)")
            let entryOk:Bool = false
            repeat
            {
                
                
                if let choice = readLine()
                {
                    var character:Character?
                    
                    switch choice
                    {
                    case "1":
                         character = characters[0]
                     
                    case "2":
                         character = characters[1]
                    
                    case "3":
                         character = characters[2]
                      
                    default:
                        print("Je ne comprends pas, veuillez rééssayer")
                        
                    }
                    if let selectedcharacter = character
                    {
                        print("Vous avez choisi le \(selectedcharacter.type) qui s'appelle \(selectedcharacter.name) )")
                        if(selectedcharacter.life > 0)
                        {
                            return selectedcharacter
                        }
                        else
                        {
                            print("Le personnage est mort, veuillez choisir un autre personnage")
                            return PlayingWithTheCharacters()
                        }
                    }
                    else
                    {
                       return PlayingWithTheCharacters()
                    }
                }
                
                
                
            } while(!entryOk)

    }
    
    func PlayingWithTheWeapons()-> Weapon
    {
        
        
        print("1. Tapez 1 pour \(Game.init().weapons_chest[0].name), attaque : \(Game.init().weapons_chest[0].atk)"
            + "\n2.Tapez 2 pour:\(Game.init().weapons_chest[1].name), vie : \(Game.init().weapons_chest[1].atk) "
            + "\n3.Tapez 3 pour: \(Game.init().weapons_chest[2].name), vie : \(Game.init().weapons_chest[2].atk)")
        let entryOk:Bool = false
        repeat
        {
            
            
            if let choice = readLine()
            {
                var weapon:Weapon?
                
                switch choice
                {
                case "1":
                    weapon = Game.init().weapons_chest[0]
                    
                case "2":
                    weapon = Game.init().weapons_chest[1]
                    
                case "3":
                    weapon = Game.init().weapons_chest[2]
                    
                default:
                    print("Je ne comprends pas, veuillez rééssayer")
                    
                }
                if let selectedweapon = weapon
                {
                    print("Vous avez choisi le \(selectedweapon.name), attaque: \(selectedweapon.atk )")
                    
                }
                else
                {
                    return PlayingWithTheWeapons()
                }
            }
            
            
            
        } while(!entryOk)
        
    }

    func PlayingWithTheTreatments()-> Cure
    {
        
        
        print("1. Tapez 1 pour \(Game.init().treatments_chest[0].name), soin : \(Game.init().treatments_chest[0].cure_value)"
            + "\n2.Tapez 2 pour:\(Game.init().treatments_chest[1].name), soin : \(Game.init().treatments_chest[1].cure_value) "
            + "\n3.Tapez 3 pour: \(Game.init().treatments_chest[2].name), soin : \(Game.init().treatments_chest[2].cure_value)")
        let entryOk:Bool = false
        repeat
        {
            
            
            if let choice = readLine()
            {
                var treatment:Cure?
                
                switch choice
                {
                case "1":
                    treatment = Game.init().treatments_chest[0]
                    
                case "2":
                    treatment = Game.init().treatments_chest[1]
                    
                case "3":
                    treatment = Game.init().treatments_chest[2]
                    
                default:
                    print("Je ne comprends pas, veuillez rééssayer")
                    
                }
                if let selectedtreatment = treatment
                {
                    print("Vous avez choisi le \(selectedtreatment.name), soin: \(selectedtreatment.cure_value )")
                    
                }
                else
                {
                    return PlayingWithTheTreatments()
                }
            }
            
            
            
        } while(!entryOk)
        
    }
}
