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
        var i = 0
        while(i<3)
        {
            presentationCharacter()
            i += 1
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
                    print("Veuillez nommer votre fighter")
                    var fighter_name = readLine()
                    if(checkuniquename(fighter_name!) == true)
                    {
                        Team.characters_name.append(fighter_name!)
                        var fighter = Fighter(name:fighter_name!)
                        members.append(fighter)
                    }
                    else
                    {
                        print("Le nom de chaque personnage doit être unique")
                        print("Veuillez svp nommer votre fighter")
                        if (checkuniquename(fighter_name!) == true)
                        {
                            Team.characters_name.append(fighter_name!)
                            var fighter = Fighter(name:fighter_name!)
                            members.append(fighter)
                        }
                    }
                    case "2":
                    print("Vous avez choisi le Mage")
                case "3":
                print("Vous avez choisi le Giant")
                case "4":
                print("Vous avez choisi le Dwarf")
                default:
                print("Je ne comprends pas, veuillez rééssayer")
                }
            }
        
        
            
            
        
        for personnage in members
        {
            print("Bonjour \(personnage.name)")
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
    
    
}
