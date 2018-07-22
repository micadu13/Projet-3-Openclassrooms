//
//  Game.swift
//  Projet_3_OC-Jeu_video
//
//  Created by Michael Aidan on 06/05/2018.
//  Copyright © 2018 Michael Aidan. All rights reserved.
//

import Foundation
class Game {
    
    var player1:Team
    var player2:Team
    var weapons_chest:[String] = ["Feu","javelot","kalachnikov"]
    
    
    init()
    {
        //Introduction: démarrage du jeu
        print("Bienvenue dans ce nouveau jeu de combats à mort à 2 équipes")
        print("\n")
        //Demande au joueur 1 de nommer son équipe
        print("Joueur 1, veuillez svp nommer votre équipe")
        self.player1 = Team()
        print("Joueur 1, votre équipe s'appelle \(player1.team_name)")
        print("\n")
        //Demande au joueur 2 de nommer son équipe
        print("Joueur 2, veuillez svp nommer votre équipe")
        self.player2 = Team()
        print("Joueur 2, votre équipe s'appelle \(player2.team_name)")
        print("\n")
        //Le joueur 1 choisit ses personnages
        print("\(player1.team_name), c'est à vous")
        player1.chooseCharacter()
        print("\n")
        // Le joueur 2 choisit ses personnages
        print("\(player2.team_name), c'est à vous")
        player2.chooseCharacter()
        // Récapitulation joueur 1 et joueur 2
        print("\n")
        print("Récapitulons" +
            "\n Joueur 1, votre équipe s'appelle \(player1.team_name) et vous avez les personnages suivants:"
            + "\n.1 \(player1.characters[0].name), de type:  \(player1.characters[0].type) qui a \(player1.characters[0].life) points de vie et \(player1.characters[0].attaque) points d'attaque"
            + "\n.2 \(player1.characters[1].name) , de type:  \(player1.characters[1].type) qui a \(player1.characters[1].life) points de vie et \(player1.characters[1].attaque) points d'attaque"
            + "\n.2 \(player1.characters[2].name) , de type:  \(player1.characters[2].type) qui a \(player1.characters[2].life) points de vie et \(player1.characters[2].attaque) points d'attaque" +
            "\n"
            +
        
            "\n Joueur 2, votre équipe s'appelle \(player2.team_name) et vous avez les personnages suivants:"
            + "\n.1 \(player2.characters[0].name), de type:  \(player2.characters[0].type) qui a \(player2.characters[0].life) points de vie et \(player2.characters[0].attaque) points d'attaque"
            + "\n.2 \(player2.characters[1].name) , de type:  \(player2.characters[1].type) qui a \(player2.characters[1].life) points de vie et \(player2.characters[1].attaque) points d'attaque"
            + "\n.2 \(player2.characters[2].name) , de type:  \(player2.characters[2].type) qui a \(player2.characters[2].life) points de vie et \(player2.characters[2].attaque) points d'attaque")
        
}
    
   
    
    
   /* func fight()
    {
        
        
        
        var actionCharacter = attakingplayer.PlayingWithTheCharacters()
        if let mage = actionCharacter as? Mage
        {
            var healedCharacter = attakingplayer.PlayingWithTheCharacters()
            mage.heal(target: healedCharacter)
        }
        else
        {
            var targetCharacter = defendingplayer.PlayingWithTheCharacters()
        actionCharacter.atk(target:targetCharacter)
        print("Le personnage \(targetCharacter.name) a \(targetCharacter.life) points de vie")
        }
        
 
    }*/
    
    
   func atourderole()
   {
    
    let casgeneral:Bool = player1.characters[0].life != 0 && player1.characters[1].life != 0 && player1.characters[2].life != 0 && player2.characters[0].life != 0 && player2.characters[1].life != 0 && player2.characters[2].life != 0
    
    let caspartielteam1:Bool = player1.characters[0].life != 0 || player1.characters[1].life != 0 || player1.characters[2].life != 0
    
    let caspartielteam2:Bool = player2.characters[0].life != 0 || player2.characters[1].life != 0 || player2.characters[2].life != 0
    
    let casfinalteam1:Bool = player1.characters[0].life != 0 && player1.characters[1].life != 0 && player1.characters[2].life != 0
    
    let casfinalteam2:Bool = player2.characters[0].life != 0 && player2.characters[1].life != 0 && player2.characters[2].life != 0
    
    
        while(casgeneral == true)
        {
            fightprotocolfirstteam()
            fightprotocolsecondteam()
            
        }
    
        while (caspartielteam1 == true && caspartielteam2 == true)
        {
            fightprotocolfirstteam()
            fightprotocolsecondteam()
           
        }
    
        while(casfinalteam1 == true)
        {
            print("Bravo \(player1.team_name) vous avez gagné cette partie." +
                "\n Vos personnages: " +
                "n1. \(player1.characters[0].name) de type \(player1.characters[0].type) de \(player1.characters[0].life) points de vie" +
                "n2. \(player1.characters[1].name) de type \(player1.characters[1].type) de \(player1.characters[1].life) points de vie" +
                "n3. \(player1.characters[2].name) de type \(player1.characters[2].type) de \(player1.characters[2].life) points de vie" +
                "se sont bien battus !")
            
        }
    
        while(casfinalteam2 == true)
        {
            print("Bravo \(player2.team_name) vous avez gagné cette partie." +
                "\n Vos personnages: " +
                "n1. \(player2.characters[0].name) de type \(player2.characters[0].type) de \(player2.characters[0].life) points de vie" +
                "n2. \(player2.characters[1].name) de type \(player2.characters[1].type) de \(player2.characters[1].life) points de vie" +
                "n3. \(player2.characters[2].name) de type \(player2.characters[2].type) de \(player2.characters[2].life) points de vie" +
                "se sont bien battus !")
        }
    
    
    }
    
    func fightprotocolfirstteam()
    {
       
           print("\n")
           print("\(player1.team_name), c'est à vous, attaquez ")
            print("Choisissez un personnage qui va attquer ")
        let attakingplayer = player1
        let defendingplayer = player2
            
        let actionCharacter = attakingplayer.PlayingWithTheCharacters()
        
            if let mage = actionCharacter as? Mage
            {
                let healedCharacter = attakingplayer.PlayingWithTheCharacters()
                mage.heal(target: healedCharacter)
            }
            else
            {
                print("Choisisez le personnage que vous allez cibler")
                let targetCharacter = defendingplayer.PlayingWithTheCharacters()
                actionCharacter.atk(target:targetCharacter)
                print("Le personnage \(targetCharacter.name) de l'équipe  de \(player2.team_name) a été attaqué par \(actionCharacter.name) de l'équipe \(player1.team_name) et a \(targetCharacter.life) points de vie")
            }
    }
    
    func fightprotocolsecondteam()
    {
        print("\n")
            print("\(player2.team_name), c'est à vous, attaquez ")
        let attakingplayer = player2
        let defendingplayer = player1
            
        let actionCharacter = attakingplayer.PlayingWithTheCharacters()
            if let mage = actionCharacter as? Mage
            {
                let healedCharacter = attakingplayer.PlayingWithTheCharacters()
                mage.heal(target: healedCharacter)
            }
            else
            {
                let targetCharacter = defendingplayer.PlayingWithTheCharacters()
                actionCharacter.atk(target:targetCharacter)
                print("Le personnage \(targetCharacter.name)  de l'équipe de \(player1.team_name) a été attaqué par \(actionCharacter.name)  de l'équipe de \(player2.team_name)et a \(targetCharacter.life) points de vie")
            }
        }
    
    
    func chest()
    {
        
        let weapons_random = arc4random()
        let weapons_value = 0
        
        if(weapons_random == weapons_value)
        {
            print("Choisisez une arme dans le coffre")
            for armes in weapons_chest
            {
                var arme1 = weapons_chest[0]
                var arme2 = weapons_chest[1]
                var arme3 = weapons_chest[2]
                
                print("Vous avez la possibilité de choisir une nouvelle arme quand vous voulez. Voici les armes que vous pouvez utiliser:" +
                    "\n1. \(arme1)" +
                    "\n2. \(arme2)" +
                    "\n3. \(arme3)")
            }
            
            
        }
        
    }
        
    }
  
    



