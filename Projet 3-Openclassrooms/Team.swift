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
            print("Veuillez choisir un personnage dans la liste suivante: "
                + "\n1: Un Guerrier"
                + "\n2: Un Mage"
                + "\n3: Un Colosse"
                + "\n4: Un nain")
            
        
        
            
            
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
