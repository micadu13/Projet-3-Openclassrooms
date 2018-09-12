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
            
            print("Veuillez choisir un personnage dans la liste suivante. Rappel, vous devez en choisir 3 maximum: "
                + "\n1: Un Fighter"
                + "\n2: Un Mage"
                + "\n3: Un Giant"
                + "\n4: Un Dwarf")
            print("\n")
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
                    print("\n")
                    
                    case "2":
                    print("Vous avez choisi le Mage")
                    print("Veuillez nommer votre Mage")
                    let mage_name = unique_name_character()
                    Team.characters_name.append(mage_name)
                    let mage = Mage(name:mage_name)
                    characters.append(mage)
                    print("Votre mage s'appelle \(mage.name)")
                    print("\n")
                    
                    case "3":
                    print("Vous avez choisi le Giant")
                    print("Veuillez nommer votre Giant")
                    let giant_name = unique_name_character()
                    Team.characters_name.append(giant_name)
                    let giant = Giant(name:giant_name)
                    characters.append(giant)
                    print("Votre giant s'appelle \(giant.name)")
                    print("\n")
                    
                    case "4":
                    print("Vous avez choisi le Dwarf")
                    print("Veuillez nommer votre Dwarf")
                    let dwarf_name = unique_name_character()
                    Team.characters_name.append(dwarf_name)
                    let dwarf = Dwarf(name:dwarf_name)
                    characters.append(dwarf)
                    print("Votre dwarf s'appelle \(dwarf.name)")
                    print("\n")
                    
                    default:
                        print("Je ne comprends pas, veuillez rééssayer")
                        print("\n")
                }
            }
        

}
   
    func recapCharacter()
    {
        print("\(team_name) récapitulons:")
        for personnage in characters
        {
            
            print("Votre personnage de type \(personnage.type) s'appelle \(personnage.name) et il a \(personnage.life) points de vie.")
            
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
       

        print("1. Tapez 1 pour \(characters[0].name),de type : \(characters[0].type) et de vie : \(characters[0].life)"
            + "\n2.Tapez 2 pour:\(characters[1].name), de type: \(characters[1].type) et de vie : \(characters[1].life) "
                + "\n3.Tapez 3 pour: \(characters[2].name), de type \(characters[0].type) et de vie : \(characters[2].life)")
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
                        print("Vous avez choisi le \(selectedcharacter.type) qui s'appelle \(selectedcharacter.name) de type \(selectedcharacter.type) et de vie \(selectedcharacter.life)")
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
    
    
}
