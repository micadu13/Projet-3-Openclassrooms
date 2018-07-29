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
    var weapons_chest:[Weapon] = []
    
    
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
       completeListOfCharacters()
        
        
}
    

    
  func atourderole(){
    
    let generalcase:Bool = player1.characters[0].life != 0 && player1.characters[1].life != 0 && player1.characters[2].life != 0 && player2.characters[0].life != 0 && player2.characters[1].life != 0 && player2.characters[2].life != 0
    
    let particularcaseteam1:Bool = player1.characters[0].life != 0 || player1.characters[1].life != 0 || player1.characters[2].life != 0
    
    let particularcaseteam2:Bool = player2.characters[0].life != 0 || player2.characters[1].life != 0 || player2.characters[2].life != 0
    
   var team1eliminated = player1.characters[0].life <= 0 && player1.characters[1].life <= 0 && player1.characters[2].life <= 0
   
    var team2eliminated = player2.characters[0].life <= 0 && player2.characters[1].life <= 0 && player2.characters[2].life <= 0
    
    while generalcase
    {
        fight(attakingplayer:player1,defendingplayer:player2)
        fight(attakingplayer:player2,defendingplayer:player1)
        
    
    
        if(particularcaseteam1 && particularcaseteam2)
        {
            while(player1.characters[0].life <= 0)
            {
                print(" Rappel \(player1.team_name), votre personnage \(player1.characters[0].name) a été supprimé parce qu'il est décédé.")
                //Loop for fight
                
                while(player1.characters[0].life <= 0)
                {
                    fight(attakingplayer: player1, defendingplayer: player2)
                    fight(attakingplayer:player2,defendingplayer:player1)
                    // Adapt the PlayingWithTheCharacters, maybe a new fonction with the condition
                }
            }
            
            while(player1.characters[1].life <= 0)
            {
                print(" Rappel \(player1.team_name), votre personnage \(player1.characters[1].name) a été supprimé parce qu'il est décédé.")
                //Loop for fight
                while(player1.characters[1].life <= 0)
                {
                    fight(attakingplayer: player1, defendingplayer: player2)
                    fight(attakingplayer:player2,defendingplayer:player1)
                    // Adapt the PlayingWithTheCharacters, maybe a new fonction with the condition
                }
            }
            
            while(player1.characters[2].life <= 0)
            {
                print(" Rappel \(player1.team_name), votre personnage \(player1.characters[2].name) a été supprimé parce qu'il est décédé.")
                
                //Loop for fight
                while(player1.characters[2].life <= 0)
                {
                    fight(attakingplayer: player1, defendingplayer: player2)
                    fight(attakingplayer:player2,defendingplayer:player1)
                    // Adapt the PlayingWithTheCharacters, maybe a new fonction with the condition
                }
                
            }
            
            while(player2.characters[0].life <= 0)
            {
                print(" Rappel \(player2.team_name), votre personnage \(player2.characters[0].name) a été supprimé parce qu'il est décédé.")
                //Loop for fight
                while(player2.characters[0].life <= 0)
                {
                    fight(attakingplayer: player2, defendingplayer: player1)
                    fight(attakingplayer:player1,defendingplayer:player2)
                    // Adapt the PlayingWithTheCharacters, maybe a new fonction with the condition
                }
                
            }
            
            while(player2.characters[1].life <= 0)
            {
                print(" Rappel \(player2.team_name), votre personnage \(player2.characters[1].name) a été supprimé parce qu'il est décédé.")
                //Loop for fight
                while(player2.characters[1].life <= 0)
                {
                    fight(attakingplayer: player2, defendingplayer: player1)
                    fight(attakingplayer:player1,defendingplayer:player2)
                    // Adapt the PlayingWithTheCharacters, maybe a new fonction with the condition
                }
                
            }
            
            while(player2.characters[2].life <= 0)
            {
                print(" Rappel \(player2.team_name), votre personnage \(player2.characters[2].name) a été supprimé parce qu'il est décédé.")
                //Loop for fight
                while(player2.characters[2].life <= 0)
                {
                    fight(attakingplayer: player2, defendingplayer: player1)
                    fight(attakingplayer:player1,defendingplayer:player2)
                    // Adapt the PlayingWithTheCharacters, maybe a new fonction with the condition
                }
                
            }
        
        }
    
    }
    
    
    
    
        if team2eliminated
        {
            print("Bravo \(player1.team_name) vous avez gagné cette partie." +
                "\n Vos personnages: " +
                "n1. \(player1.characters[0].name) de type \(player1.characters[0].type) de \(player1.characters[0].life) points de vie" +
                "n2. \(player1.characters[1].name) de type \(player1.characters[1].type) de \(player1.characters[1].life) points de vie" +
                "n3. \(player1.characters[2].name) de type \(player1.characters[2].type) de \(player1.characters[2].life) points de vie" +
                "se sont bien battus !")
            // penser à afficher chaque personnage s'il est toujours vivant ?
            
        }
    
        if team1eliminated
        {
            print("Bravo \(player2.team_name) vous avez gagné cette partie." +
                "\n Vos personnages: " +
                "n1. \(player2.characters[0].name) de type \(player2.characters[0].type) de \(player2.characters[0].life) points de vie" +
                "n2. \(player2.characters[1].name) de type \(player2.characters[1].type) de \(player2.characters[1].life) points de vie" +
                "n3. \(player2.characters[2].name) de type \(player2.characters[2].type) de \(player2.characters[2].life) points de vie" +
                "se sont bien battus !")
        }
    
    
    }
    
    
    func fight(attakingplayer:Team,defendingplayer:Team)
    {
       
           print("\n")
           print("\(attakingplayer.team_name), c'est à vous, attaquez ")
            print("Choisissez un personnage qui va attaquer ")
       
            
        let actionCharacter = attakingplayer.PlayingWithTheCharacters()
        
            if let mage = actionCharacter as? Mage
            {
                let healedCharacter = attakingplayer.PlayingWithTheCharacters()
                mage.heal(target: healedCharacter)
                print("Le personnage \(healedCharacter.name) de l'équipe  de \(defendingplayer.team_name) a été soigné par \(mage.name) de l'équipe \(attakingplayer.team_name) et a \(healedCharacter.life) points de vie")
            }
            else
            {
                print("Choisisez le personnage que vous allez cibler")
                let targetCharacter = defendingplayer.PlayingWithTheCharacters()
                actionCharacter.atk(target:targetCharacter)
                print("Le personnage \(targetCharacter.name) de l'équipe  de \(defendingplayer.team_name) a été attaqué par \(actionCharacter.name) de l'équipe \(attakingplayer.team_name) et a \(targetCharacter.life) points de vie")
            }
    }

    
    
    
    func chest()
    {
        
        let weapons_random = arc4random()
        let weapons_value = 0
        
        if(weapons_random == weapons_value)
        {
            print("Un coffre magique vient de s'ouvrir, vous avez la possibilité de changer d'arme et d'en utiliser une autre ou de continuer le jeu sans utiliser une nouvelle arme")
            
            for _ in weapons_chest
            {
                let weapon1 = weapons_chest[0]
                weapons_chest.append(weapon1)
                let weapon2 = weapons_chest[1]
                weapons_chest.append(weapon2)
                let weapon3 = weapons_chest[2]
                weapons_chest.append(weapon3)
            
                print("Choisisez une arme dans le coffre." +
                    "\n. Tapez 1 pour \(weapon1.name)" +
                    "\n. Tapez 2 pour \(weapon2.name)" +
                    "\n. Tapez 3 pour \(weapon3.name)" +
                    "\n. Tapez 4 si vous désirez continuer le jeu sans changer d'armes")
                if let weaponchoice = readLine()
                {
                    switch weaponchoice
                    
                    {
                        case "1":
                            print("Vous venez de choisir le type d'arme suivant: \(weapon1.name)")
                            print("A quel personnage souhaitez-vous associer cette arme ?")
                        
                        case "2":
                        
                        case "3":
                        
                        case "4":
                        atourderole()
                        default:
                        print("Je n'ai pas compris, merci de rééssayer")
                    }
                }
                
                
                
                
            }
            
            
        }
                
    
    func completeListOfCharacters()
    {
        print("Récapitulons, voici la liste des personnages par joueur:"
            + "\n L'équipe de \(player1.team_name) est composée de"
            + "\n"
            + "\n1. \(player1.characters[0].name) de type \(player1.characters[0].type) avec: \(player1.characters[0].life) points de vie, une arme de type \(player1.characters[0].arme) et une attaque de puissance \(player1.characters[0].attaque)"
            + "\n2. \(player1.characters[1].name) de type \(player1.characters[1].type) avec: \(player1.characters[1].life) points de vie, une arme de type \(player1.characters[1].arme) et une attaque de puissance \(player1.characters[1].attaque)"
            + "\n3. \(player1.characters[2].name) de type \(player1.characters[2].type) avec: \(player1.characters[2].life) points de vie, une arme de type \(player1.characters[2].arme) et une attaque de puissance \(player1.characters[2].attaque)"
            + "\n"
            + "\n L'équipe de \(player2.team_name) est composée de"
            + "\n"
            + "\n1. \(player2.characters[0].name) de type \(player2.characters[0].type) avec: \(player2.characters[0].life) points de vie, une arme de type \(player2.characters[0].arme) et une attaque de puissance \(player2.characters[0].attaque)"
            + "\n2. \(player2.characters[1].name) de type \(player2.characters[1].type) avec: \(player2.characters[1].life) points de vie, une arme de type \(player2.characters[1].arme) et une attaque de puissance \(player2.characters[1].attaque)"
            + "\n3. \(player2.characters[2].name) de type \(player2.characters[2].type) avec: \(player2.characters[2].life) points de vie, une arme de type \(player2.characters[2].arme) et une attaque de puissance \(player2.characters[2].attaque)"
            )
    }
    
    
    
            
        }
        

  
    



}

