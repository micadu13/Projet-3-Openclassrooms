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
        
        if(members.count == 3)
        {
            listOfCharacter()
        }
    }
    
    
    
    func presentationCharacter()
    {
            print("Veuillez choisir un personnage dans la liste suivante. Vous devez en choisir 3 maximum: "
                + "\n1: Un Fighter"
                + "\n2: Un Mage"
                + "\n3: Un Giant"
                + "\n4: Un Dwarf.")
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
                    
                    
                    case "2":
                    print("Vous avez choisi le Mage")
                    print("Veuillez nommer votre Mage")
                    let mage_name = unique_name()
                    Team.characters_name.append(mage_name)
                    let mage = Mage(name:mage_name)
                    members.append(mage)
                    
                    
                    case "3":
                    print("Vous avez choisi le Giant")
                    print("Veuillez nommer votre Giant")
                    let giant_name = unique_name()
                    Team.characters_name.append(giant_name)
                    let giant = Giant(name:giant_name)
                    members.append(giant)
                    
                    
                    case "4":
                    print("Vous avez choisi le Dwarf")
                    print("Veuillez nommer votre Dwarf")
                    let dwarf_name = unique_name()
                    Team.characters_name.append(dwarf_name)
                    let dwarf = Dwarf(name:dwarf_name)
                    members.append(dwarf)
                   
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
            print("Votre personnage de type \(personnage.type) s'appelle \(personnage.name) et il a \(personnage.life) points de vie.")
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
    
    //Le joueur 1 va choisir un premier personnage à jouer
    //Le joueur 1 va selectionner le personnage cible à recevoir les dégats
    //fonction à mettre en place soit le joueur choisit n'importe quel personnage, soit il choisit le mage pour guérir les autres personnages
    //mettre en place une fonction pour que le mage puisse soigner un personnage et demander quel personnage doit être soigné
    
    func PlayingWithTheCharacters()
    {
        print("Quel personnage voulez-vous jouer ?")
        let personnage1 = members[0]
        let name_personnage1 = Team.characters_name[0]
        let personnage2 = members[1]
        let name_personnage2 = Team.characters_name[1]
        let personnage3 = members[2]
        let name_personnage3 = Team.characters_name[2]
        
        print("Pour rappel, vous avez le choix entre: "
        + "\n1. \(personnage1) qui s'appelle \(name_personnage1)"
        + "\n2. \(personnage2) qui s'appelle \(name_personnage2)"
        + "\n3. \(personnage3) qui s'appelle \(name_personnage3)")
        
        if let choice = readLine()
        {
            switch choice
            {
            case "1":
            print("Vous avez choisi \(name_personnage1)")
                
            //fonction d'attaque ou de soin
            case "2":
            print("Vous avez choisi \(name_personnage2)")
            
            case "3":
            print("Vous avez choisi \(name_personnage3)")
             
                
            default:
            print("Je ne comprends pas, veuillez rééssayer")
        
            }
    
    
       
       
        }
    
    }
   //Création de la fonction d'attaque
    func atk_ou_soin(cible:Character)// Un personnage attaque un autre ou un personnage soigne un autre
    {
        if(Character.self == Mage.self)
        {
            Mage.soin += Character.self.life //on demande au Mage de donner de la vie au personnage cible
            
            
        }
      
    }
     
   
}

