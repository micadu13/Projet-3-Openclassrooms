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
   
    
    var name:String = ""
    static var characters_name: [String] = []
    var members:[Character]=[]
    
    
    
    init()
    {
        self.setTeamName()
        self.printName()
        self.chooseCharacter()
      
    }
    

 
    
    func setTeamName()
    {
       
        if let entreeClavier = readLine()
        {
            if entreeClavier != ""
            {
                self.name = entreeClavier
            }
        }
        
    }
    func printName()
    {
        print("Le nom de votre équipe est \(self.name)")
    }
    
    func chooseCharacter()
    {
        
        while(members.count<3)
        {
            presentationCharacter()
         
        }
    }
    
    
    func presentationCharacter()
    {
            print("Veuillez choisir un personnage dans la liste suivante: "
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
                    
                    let fighter_name = unique_name()
                    Team.characters_name.append(fighter_name)
                    let fighter = Fighter(name:fighter_name)
                    members.append(fighter)
                    listOfCharacter()
                    
                    case "2":
                    print("Vous avez choisi le Mage")
                    print("Veuillez nommer votre Mage")
                    let mage_name = unique_name()
                    Team.characters_name.append(mage_name)
                    let mage = Mage(name:mage_name)
                    members.append(mage)
                    listOfCharacter()
                    
                    case "3":
                    print("Vous avez choisi le Giant")
                    print("Veuillez nommer votre Giant")
                    let giant_name = unique_name()
                    Team.characters_name.append(giant_name)
                    let giant = Giant(name:giant_name)
                    members.append(giant)
                    listOfCharacter()
                    
                    case "4":
                    print("Vous avez choisi le Dwarf")
                    print("Veuillez nommer votre Dwarf")
                    let dwarf_name = unique_name()
                    Team.characters_name.append(dwarf_name)
                    let dwarf = Dwarf(name:dwarf_name)
                    members.append(dwarf)
                    listOfCharacter()
                    default:
                        print("Je ne comprends pas, veuillez rééssayer")
                }
            }
        

        /*for personnage in members
        {
            print("Votre personnage s'appelle \(personnage.name) et il a \(personnage.life) points de vie.")
        }
        */
}
   
    func listOfCharacter()
    {
        for personnage in members
        {
            print("Votre personnage s'appelle \(personnage.name) et il a \(personnage.life) points de vie.")
        }
    
    }
    
    
    func checkuniquename(_ name:String)-> Bool
    {
        for character in Team.characters_name
        {
            if(name == character)
            {
                print("Le nom existe deja")
                return false
            }
        }
        Team.characters_name.append(name)
        return true
    }
    
    func unique_name()->String
    {
        let unique = false
        repeat
        {
            if let name = readLine()
            {
                if (checkuniquename(name))
                {
                    return name
                }
                else
                {
                    print("Le nom doit être unique, veuillez renommer le personnage")
                }
            }
            
        } while !unique
        
       
        }
       
       
    }
    
    

