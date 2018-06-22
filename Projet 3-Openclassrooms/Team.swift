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
   
    
    var name:String=""
    var nom_combattant:String = ""
    var nom_mage:String = ""
    var nom_giant:String = ""
    var nom_dwarf:String = ""
    var members:[Character]=[]
    
  
    
    init()
    {
        
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
        var _ = 0
        for _ in 0...2
        {
            print("Veuillez choisir un personnage dans la liste suivante: "
                + "\n1: Un Guerrier"
                + "\n2: Un Mage"
                + "\n3: Un Colosse"
                + "\n4: Un nain")
           if let choice = readLine()
           {
                switch choice
            
                {
                    case "1":
                    print("Vous avez choisi le Fighter")
                    print("Merci de nommer votre personnage")
                    
                    if let nom_combattant = readLine()
                    {
                        if nom_combattant != ""
                        {
                            self.nom_combattant = nom_combattant
                            print("Veuillez svp nommer votre combatant")
                        }
                        let combattant = Fighter(name:(nom_combattant))
                        print("Votre personnage de type Fighter s'appelle \(nom_combattant)")
                        members.append(combattant)
                    }
                    
                    
                   
                    
                    case "2":
                    print("Vous avez choisi le Mage")
                    print("Merci de nommer votre personnage")
                    if let nom_mage = readLine()
                    {
                        if nom_mage != ""
                        {
                            self.nom_mage = nom_mage
                            print("Veuillez svp nommer votre mage. Attention chaque nom de personnage doit être unique")
                            if(nom_combattant != nom_mage)
                            {
                                let mage = Mage(name:(nom_mage))
                                print("Votre personnage de type Mage s'appelle \(nom_mage)")
                                members.append(mage)
                            }
                            else
                            {
                                print("Attention, chaque nom de personnage doit être unique !")
                                print("Veuillez svp à nouveau saisir un nom de personnage poir le mage")
                                let mage = Mage(name:(nom_mage))
                                print("Votre personnage de type Mage s'appelle \(nom_mage)")
                                members.append(mage)
                            }
                            
                        }
                        
                    }
                    
                    case "3":
                    print("Vous avez choisi le Colosse")
                    print("Merci de nommer votre personnage")
                    if let nom_giant = readLine()
                    {
                        if nom_giant != ""
                        {
                            self.nom_giant = nom_giant
                            print("Veuillez svp nommer votre colosse. Attention chaque nom de personnage doit être unique")
                            if(nom_giant != nom_mage && nom_giant != nom_combattant)
                            {
                                let giant = Giant(name:(nom_giant))
                                print("Votre personnage de type Colosse s'appelle \(nom_giant)")
                                members.append(giant)
                            }
                            else
                            {
                                print("Attention, chaque nom de personnage doit être unique !")
                                print("Veuillez svp à nouveau saisir un nom de personnage poir le colosse")
                                let giant = Giant(name:(nom_giant))
                                print("Votre personnage de type Colosse s'appelle \(nom_giant)")
                                members.append(giant)
                            }
                        }
                        
                    }
                    
                    case "4":
                    print("Vous avez choisi le Nain")
                    print("Merci de nommer votre personnage")
                    if let nom_dwarf = readLine()
                    {
                        if nom_dwarf != ""
                        {
                            self.nom_dwarf = nom_dwarf
                             print("Veuillez svp nommer votre nain. Attention chaque nom de personnage doit être unique")
                            if(nom_dwarf != nom_combattant && nom_dwarf != nom_mage && nom_dwarf != nom_giant)
                            {
                                let dwarf = Dwarf(name:(nom_dwarf))
                                print("Votre personnage de type Mage s'appelle \(nom_dwarf)")
                                members.append(dwarf)
                            }
                            else
                            {
                                print("Attention, chaque nom de personnage doit être unique !")
                                print("Veuillez svp à nouveau saisir un nom de personnage poir le nain")
                                let dwarf = Dwarf(name:(nom_dwarf))
                                print("Votre personnage de type Mage s'appelle \(nom_dwarf)")
                                members.append(dwarf)
                            }
                        }
                        
                    }
                    default:
                    print("Je ne comprends pas")
                
                }
            }
            
            
        }
        for personnage in members
        {
            print("Bonjour \(personnage.name)")
        }
        
    }
 
}
