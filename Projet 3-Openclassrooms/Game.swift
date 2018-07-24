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
            // penser à afficher chaque personnage s'il est toujours vivant ? 
            
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
                let arme1 = weapons_chest[0]
                let arme2 = weapons_chest[1]
                let arme3 = weapons_chest[2]
                
                if let arme1 = arme1 as? Weapon
                {
                    weapons_chest.append(arme1)
                }
                if let arme2 = arme2 as? Weapon
                {
                    weapons_chest.append(arme2)
                }
                if let arme3 = arme3 as? Weapon
                {
                    weapons_chest.append(arme3)
                }
            }
        }
    }
                
         func changing_weapons()
                {
                    let arme1 = weapons_chest[0]
                    let arme2 = weapons_chest[1]
                    let arme3 = weapons_chest[2]
                    
                    print("Vous avez la possibilité de choisir une nouvelle arme supplémentaire si vous voulez. Voici les armes que vous pouvez utiliser:" +
                    "\n1. Le/La \(arme1.name) avec une attaque de \(arme1.atk)" +
                    "\n2. Le/La \(arme2.name) avec une attaque de \(arme2.atk)" +
                    "\n3. Le/La \(arme3.name) avec une attaque de \(arme3.atk) ")
                    
                    print("Laquelle de ces armes voudiez-vous choisir ?"
                    + "\n1. Le/La \(arme1.name)" +
                    "\n2. Le/La \(arme2.name)" +
                    "\n3. Le/La \(arme3.name)")
                    if let weapontochoose = readLine()
                    {
                        switch weapontochoose
                        {
                            case "1":
                            print("Vous avez choisi l'arme n°1 appellée \(arme1.name)")
                            print("A quel personnage souhaiteriez-vous associer cette arme ?")
                            completeListOfCharacters()
                            var character1 = player1.characters[0]
                            print("Tapez le chiffre correspondant suivant le numéro de votre personnage associé:"
                            + "\n1.Tapez 1 pour \(characters[0])")
                            if let weapon1toassociate = readLine()
                            {
                                switch weapon1toassociate
                                {
                                    case
                                }
                            }
                                
                            case "2":
                            print("Vous avez choisi l'arme n°2 appellée \(arme2.name)")
                            case "3":
                            print("Vous avez choisi l'arme n°3 appellée \(arme3.name)")
                            default:
                            print("Je ne comprends pas")
                        }
                    }
                
                    print("Bonus: Souhaiteriez-vous ajouter  de nouvelles armes  ?:" +
                    "\n1. Tapez O pour Oui" +
                    "\n2. Tapez N pour Non")
                
                if let reponse = readLine()
                {
                    switch reponse
                    {
                        case "O":
                        print("Vous avez souhaité ajouter de nouvelles armes")
                        
                        case "N":
                        print("OK, pas de problème, continuons le jeu")
                        default:
                        print("Je n'ai pas bien compris, pourriez-vous rééssayer svp? ")
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
        

  
    



