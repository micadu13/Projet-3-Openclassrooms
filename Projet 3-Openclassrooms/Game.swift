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
    
    func deadTeam(_ team:Team)->Bool
    {
        if team.characters[0].life <= 0 && team.characters[1].life <= 0 && team.characters[2].life <= 0
        {
            return true
        }
        else
        {
            return false
        }
    }
    
  func atourderole(){
    
 
    while !deadTeam(player1) && !deadTeam(player2)
    {
        if(!deadTeam(player1))
        {
           fight(attakingplayer:player1,defendingplayer:player2)
        }
        if(!deadTeam(player2))
        {
            fight(attakingplayer:player2,defendingplayer:player1)
        }
    
        
    }
    if(deadTeam(player1))
    {
        print("Bravo \(player2.team_name) vous avez gagné")
    }
    else
    {
        print("Bravo \(player1.team_name) vous avez gagné")
        
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
                 // Put the chest func
                let healedCharacter = attakingplayer.PlayingWithTheCharacters()
                mage.heal(target: healedCharacter)
                print("Le personnage \(healedCharacter.name) de l'équipe  de \(attakingplayer.team_name) a été soigné par \(mage.name) de l'équipe \(attakingplayer.team_name) et a \(healedCharacter.life) points de vie")
            }
            else
            {
                 // Put the chest func
                print("Choisisez le personnage que vous allez cibler")
                let targetCharacter = defendingplayer.PlayingWithTheCharacters()
                actionCharacter.atk(target:targetCharacter)
                print("Le personnage \(targetCharacter.name) de l'équipe  de \(defendingplayer.team_name) a été attaqué par \(actionCharacter.name) de l'équipe \(attakingplayer.team_name) et a \(targetCharacter.life) points de vie")
            }
    }

    
    
    
    func chest()
    {
        
    }
    
  /*func choseCharactersForChest()-> Character
  {
    let character1_player1 = player1.characters[0]
    let character2_player1 = player1.characters[1]
    let character3_player1 = player1.characters[2]
    
    let character1_player2 = player2.characters[0]
    let character2_player2 = player2.characters[1]
    let character3_player2 = player2.characters[2]
    
    
    
    if(character1_player1.life > 0 && character2_player1.life > 0 && character3_player1.life > 0)
        {
            print("Choisissez un personnage dans la liste suivante:"
            + "\n1. Tapez 1 pour \(character1_player1.name) de type \(character1_player1.type)"
            + "\n2. Tapez 2 pour \(character2_player1.name) de type \(character2_player1.type)"
            + "\n3. Tapez 3 pour \(character3_player1.name) de type \(character3_player1.type)")
            
            if let charactertochooseforchest = readLine()
            {
                switch charactertochooseforchest
                {
                    case "1":
                    print("Vous venez de choisir \(character1_player1.name)")
                    return character1_player1
                    case "2":
                    print("Vous venez de choisir \(character2_player1.name)")
                    return character2_player1
                    case "3":
                    print("Vous venez de choisir \(character3_player1.name)")
                    return character3_player1
                    default:
                    print("Je ne comprends pas")
                }
            }
            
        }
    
    else if (character1_player1.life > 0 && character2_player1.life > 0)
    {
        print("Choisissez un personnage dans la liste suivante:"
            + "\n1. Tapez 1 pour \(character1_player1.name) de type \(character1_player1.type)"
            + "\n2. Tapez 2 pour \(character2_player1.name) de type \(character2_player1.type)")
        
        if let charactertochooseforchest = readLine()
        {
            switch charactertochooseforchest
            {
            case "1":
                print("Vous venez de choisir \(character1_player1.name)")
                return character1_player1
            case "2":
                print("Vous venez de choisir \(character2_player1.name)")
                return character2_player1
            default:
                print("Je ne comprends pas")
            }
        }
        
        
    }
       
    else if(character1_player1.life > 0 && character3_player1.life > 0)
    {
        print("Choisissez un personnage dans la liste suivante:"
            + "\n1. Tapez 1 pour \(character1_player1.name) de type \(character1_player1.type)"
            + "\n2. Tapez 3 pour \(character3_player1.name) de type \(character3_player1.type)")
        
        if let charactertochooseforchest = readLine()
        {
            switch charactertochooseforchest
            {
            case "1":
                print("Vous venez de choisir \(character1_player1.name)")
                return character1_player1
            case "3":
                print("Vous venez de choisir \(character3_player1.name)")
                return character3_player1
            default:
                print("Je ne comprends pas")
            }
        }
        
        
    }
        

  else if(character2_player2.life > 0 && character3_player1.life > 0)
    {
        
            print("Choisissez un personnage dans la liste suivante:"
                + "\n1. Tapez 2 pour \(character2_player1.name) de type \(character2_player1.type)"
                + "\n2. Tapez 3 pour \(character3_player1.name) de type \(character3_player1.type)")
            
            if let charactertochooseforchest = readLine()
            {
                switch charactertochooseforchest
                {
                case "2":
                    print("Vous venez de choisir \(character2_player1.name)")
                    return character2_player1
                case "3":
                    print("Vous venez de choisir \(character3_player1.name)")
                    return character3_player1
                default:
                    print("Je ne comprends pas")
                }
            }
            
            
        
    }
   
  else if(character1_player2.life > 0 && character2_player2.life > 0 && character3_player2.life > 0)
    {
        
        print("Choisissez un personnage dans la liste suivante:"
            + "\n1. Tapez 1 pour \(character1_player2.name) de type \(character1_player2.type)"
            + "\n2. Tapez 2 pour \(character2_player2.name) de type \(character2_player2.type)"
            + "\n3. Tapez 3 pour \(character3_player2.name) de type \(character3_player2.type)")
        
        if let charactertochooseforchest = readLine()
        {
            switch charactertochooseforchest
            {
            case "1":
                print("Vous venez de choisir \(character1_player2.name)")
                return character1_player2
            case "2":
                print("Vous venez de choisir \(character2_player2.name)")
                return character2_player2
            case "3":
                print("Vous venez de choisir \(character3_player2.name)")
                return character3_player2
            default:
                print("Je ne comprends pas")
            }
        }
    }
        
  else if(character1_player2.life > 0 && character2_player2.life > 0)
    {
        print("Choisissez un personnage dans la liste suivante:"
            + "\n1. Tapez 1 pour \(character1_player2.name) de type \(character1_player2.type)"
            + "\n2. Tapez 2 pour \(character2_player2.name) de type \(character2_player2.type)")
        
        if let charactertochooseforchest = readLine()
        {
            switch charactertochooseforchest
            {
            case "1":
                print("Vous venez de choisir \(character1_player2.name)")
                return character1_player2
            case "2":
                print("Vous venez de choisir \(character2_player2.name)")
                return character2_player2
            default:
                print("Je ne comprends pas")
            }
        }
        
    }
        
    else if(character1_player2.life > 0 && character3_player2.life > 0)
    {
        print("Choisissez un personnage dans la liste suivante:"
            + "\n1. Tapez 1 pour \(character1_player2.name) de type \(character1_player2.type)"
            + "\n3. Tapez 3 pour \(character3_player2.name) de type \(character3_player2.type)")
        
        if let charactertochooseforchest = readLine()
        {
            switch charactertochooseforchest
            {
            case "1":
                print("Vous venez de choisir \(character1_player2.name)")
                return character1_player2
            case "2":
                print("Vous venez de choisir \(character3_player2.name)")
                return character3_player2
            default:
                print("Je ne comprends pas")
            }
        }
        
    }
 
    else if (character2_player2.life > 0 && character3_player2.life > 0)
    {
        print("Choisissez un personnage dans la liste suivante:"
            + "\n1. Tapez 2 pour \(character2_player2.name) de type \(character2_player2.type)"
            + "\n3. Tapez 3 pour \(character3_player2.name) de type \(character3_player2.type)")
        
        if let charactertochooseforchest = readLine()
        {
            switch charactertochooseforchest
            {
            case "1":
                print("Vous venez de choisir \(character2_player2.name)")
                return character2_player2
            case "2":
                print("Vous venez de choisir \(character3_player2.name)")
                return character3_player2
            default:
                print("Je ne comprends pas")
            }
        }
        
    }
        
    else if (character1_player1.life > 0 && character2_player1.life < 0 && character3_player1.life < 0)
    {
        print("Vous ne pouvez choisir que \(character1_player1.name) de l'équipe \(player1.team_name). Tous les autres personnages sont morts")
        return character1_player1
    }
    else if (character1_player1.life < 0 && character2_player1.life > 0 && character3_player1.life < 0)
    {
        print("Vous ne pouvez choisir que \(character2_player1.name) de l'équipe \(player1.team_name). Tous les autres personnages sont morts")
        return character2_player1
        
    }
    
    else if (character1_player1.life < 0 && character2_player1.life < 0 && character3_player1.life > 0)
    {
        print("Vous ne pouvez choisir que \(character3_player1.name) de l'équipe \(player1.team_name). Tous les autres personnages sont morts")
        return character3_player1
    }
        
    else if (character1_player2.life > 0 && character2_player2.life < 0 && character3_player2.life < 0)
    {
       print("Vous ne pouvez choisir que \(character1_player2.name) de l'équipe \(player2.team_name). Tous les autres personnages sont morts")
            return character1_player2
    }
    
    else if (character1_player2.life < 0 && character2_player2.life > 0 && character3_player2.life < 0)
    {
        print("Vous ne pouvez choisir que \(character2_player2.name) de l'équipe \(player2.team_name). Tous les autres personnages sont morts")
        return character2_player2
    }
    
   else if (character1_player2.life < 0 && character2_player2.life < 0 && character3_player2.life > 0)
    {
        print("Vous ne pouvez choisir que \(character3_player2.name) de l'équipe \(player2.team_name). Tous les autres personnages sont morts")
        return character3_player2
        
    }
    else
    {
     
    }
    
    }*/
    
    
    
    func completeListOfCharacters()
    {
        print("Récapitulons, voici la liste des personnages par joueur:"
            + "\n L'équipe de \(player1.team_name) est composée de"
            + "\n"
            + "\n1. \(player1.characters[0].name) de type \(player1.characters[0].type) avec: \(player1.characters[0].life) points de vie, une arme de type \(player1.characters[0].weapon) et une attaque de puissance \(player1.characters[0].attack)"
            + "\n2. \(player1.characters[1].name) de type \(player1.characters[1].type) avec: \(player1.characters[1].life) points de vie, une arme de type \(player1.characters[1].weapon) et une attaque de puissance \(player1.characters[1].attack)"
            + "\n3. \(player1.characters[2].name) de type \(player1.characters[2].type) avec: \(player1.characters[2].life) points de vie, une arme de type \(player1.characters[2].weapon) et une attaque de puissance \(player1.characters[2].attack)"
            + "\n"
            + "\n L'équipe de \(player2.team_name) est composée de"
            + "\n"
            + "\n1. \(player2.characters[0].name) de type \(player2.characters[0].type) avec: \(player2.characters[0].life) points de vie, une arme de type \(player2.characters[0].weapon) et une attaque de puissance \(player2.characters[0].attack)"
            + "\n2. \(player2.characters[1].name) de type \(player2.characters[1].type) avec: \(player2.characters[1].life) points de vie, une arme de type \(player2.characters[1].weapon) et une attaque de puissance \(player2.characters[1].attack)"
            + "\n3. \(player2.characters[2].name) de type \(player2.characters[2].type) avec: \(player2.characters[2].life) points de vie, une arme de type \(player2.characters[2].weapon) et une attaque de puissance \(player2.characters[2].attack)"
            )
    }
    
    
    
            
        
        

  
    




}
