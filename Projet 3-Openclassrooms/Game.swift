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
    var weapons_chest:[Weapon] = [Kalachnikov(),Javelin(),Fire()]
    var treatments_chest:[Cure] = [Potion(),Energy(),Magnetism()]

    
    
    init()
    {
    
        //Introduction: démarrage du jeu
        print("Bienvenue dans ce nouveau jeu de combats à mort à 2 équipes")
        print("\n")
        //Asking to player 1 to name his/her team
        print("Joueur 1, veuillez svp nommer votre équipe")
        self.player1 = Team()
        print("Joueur 1, votre équipe s'appelle \(player1.team_name)")
        print("\n")
        //Asking to player 2 to name his/her team
        print("Joueur 2, veuillez svp nommer votre équipe")
        self.player2 = Team()
        print("Joueur 2, votre équipe s'appelle \(player2.team_name)")
        print("\n")
        //Player 1 chooses its characters
        print("\(player1.team_name), c'est à vous")
        player1.chooseCharacter()
        print("\n")
        // Player 2 chooses its characters
        print("\(player2.team_name), c'est à vous")
        player2.chooseCharacter()
        // Sum-up for player 1 & 2 
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
    
  func process()
  {
    
 
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
        print("\n")
        print("---- ✌️ Victoire de \(player2.team_name)!! ✌️ --- ")
        print("Bravo \(player2.team_name) vous avez gagné. Votre équipe était donc composée de:" +
            "\n1. \(player2.characters[0].name) de type:  \(player2.characters[0].type) avec \(player2.characters[0].life) points de vie, ainsi que,"
            +
            "\n2. \(player2.characters[1].name) de type:  \(player2.characters[1].type) avec \(player2.characters[1].life) points de vie, ainsi que "
            + "\n3. \(player2.characters[2].name) de type:  \(player2.characters[2].type) avec \(player2.characters[2].life) points de vie.")
    }
    else
    {
        print("\n")
        print("---- ✌️ Victoire de \(player1.team_name)!! ✌️ --- ")
        print("Bravo \(player1.team_name) vous avez gagné. Votre équipe était donc composée de:" +
            "\n1. \(player1.characters[0].name) de type:  \(player1.characters[0].type) avec \(player1.characters[0].life) points de vie, ainsi que,"
            +
            "\n2. \(player1.characters[1].name) de type:  \(player1.characters[1].type) avec \(player1.characters[1].life) points de vie, ainsi que "
            + "\n3. \(player1.characters[2].name) de type:  \(player1.characters[2].type) avec \(player1.characters[2].life) points de vie.")
        
    }

    }
    
    
    func fight(attakingplayer:Team,defendingplayer:Team)
    {
       
           print("\n")
           print("\(attakingplayer.team_name), c'est à vous, attaquez!! ✊ ")
            print("Choisissez un personnage qui va attaquer ")
            print("\n")
            
        let actionCharacter = attakingplayer.PlayingWithTheCharacters()
        chest(target: actionCharacter)
            if let mage = actionCharacter as? Mage
            {
                
                let healedCharacter = attakingplayer.PlayingWithTheCharacters()
                mage.heal(target: healedCharacter)
                print("Le personnage \(healedCharacter.name) de l'équipe  de \(attakingplayer.team_name) a été soigné par \(mage.name) de l'équipe \(attakingplayer.team_name) et a \(healedCharacter.life) points de vie")
            }
            else
            {
                print("Choisisez le personnage que vous allez cibler  ")
                print("\n")
                let targetCharacter = defendingplayer.PlayingWithTheCharacters()
                actionCharacter.atk(target:targetCharacter)
                print("Le personnage \(targetCharacter.name) de l'équipe  de \(defendingplayer.team_name) a été attaqué par \(actionCharacter.name) de l'équipe \(attakingplayer.team_name) et a \(targetCharacter.life) points de vie")
                targetCharacter.recovery()
            }
    }
    
    func chest(target:Character)
    {
       
        if(chestapparition())
        {
            
            
           if let mage = target as? Mage
        
            {
                let random = Int(arc4random_uniform(UInt32(treatments_chest.count)))
                mage.cure = treatments_chest[random]
                print("Votre personnage \(mage.name) a un nouveau soin: \(mage.cure.name) et qui a \(mage.cure.cure_value) points de soin")


            }
            else
            {
                let random = Int(arc4random_uniform(UInt32(weapons_chest.count)))
                target.weapon = weapons_chest[random]
                print("Votre personnage \(target.name) a une nouvelle attaque: \(target.weapon.name) et qui a \(target.weapon.atk) points d'attaque")

            }
           
            
        }

    }
    

    
    func chestapparition()->Bool
    {
        let random = arc4random_uniform(9)
        let random_value = 0
        
        if(random == random_value)
        {
            return true
            
        }
        else
        {
            return false
        }
    }

    

    func completeListOfCharacters()
    {
        print("Récapitulons, voici la liste des personnages par joueur:"
            + "\n L'équipe de \(player1.team_name) est composée de"
            + "\n"
            + "\n1. \(player1.characters[0].name) de type \(player1.characters[0].type) avec: \(player1.characters[0].life) points de vie, une arme de type \(player1.characters[0].weapon.name) et une attaque de puissance \(player1.characters[0].weapon.atk)"
            + "\n2. \(player1.characters[1].name) de type \(player1.characters[1].type) avec: \(player1.characters[1].life) points de vie, une arme de type \(player1.characters[1].weapon) et une attaque de puissance \(player1.characters[1].weapon.atk)"
            + "\n3. \(player1.characters[2].name) de type \(player1.characters[2].type) avec: \(player1.characters[2].life) points de vie, une arme de type \(player1.characters[2].weapon.name) et une attaque de puissance \(player1.characters[2].weapon.atk)"
            + "\n"
            + "\n L'équipe de \(player2.team_name) est composée de"
            + "\n"
            + "\n1. \(player2.characters[0].name) de type \(player2.characters[0].type) avec: \(player2.characters[0].life) points de vie, une arme de type \(player2.characters[0].weapon.name) et une attaque de puissance \(player2.characters[0].weapon.atk)"
            + "\n2. \(player2.characters[1].name) de type \(player2.characters[1].type) avec: \(player2.characters[1].life) points de vie, une arme de type \(player2.characters[1].weapon.name) et une attaque de puissance \(player2.characters[1].weapon.atk)"
            + "\n3. \(player2.characters[2].name) de type \(player2.characters[2].type) avec: \(player2.characters[2].life) points de vie, une arme de type \(player2.characters[2].weapon.name) et une attaque de puissance \(player2.characters[2].weapon.atk)"
            )
    }
    


}

