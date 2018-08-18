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

    
    init()//weapons_chest:[Weapon], treatments_chest:[Cure], //player1:Team, player2:Team, character_chosen:Character
    {
        /*self.weapons_chest = weapons_chest;
        self.treatments_chest = treatments_chest;
        self.player1 = player1;
        self.player2 = player2;
        */
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
    
  func atourderole()
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
        print("Bravo \(player2.team_name) vous avez gagné. Votre équipe était donc composée de:" +
            "\n1. \(player2.characters[0].name) de type:  \(player2.characters[0].type) avec \(player2.characters[0].life) points de vie, ainsi que,"
            +
            "\n2. \(player2.characters[1].name) de type:  \(player2.characters[1].type) avec \(player2.characters[1].life) points de vie, ainsi que "
            + "\n3. \(player2.characters[2].name) de type:  \(player2.characters[2].type) avec \(player2.characters[2].life) points de vie.")
    }
    else
    {
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
                targetCharacter.recovery()
            }
    }
    
    func chest(charactertochoose:Team, weapontochoose:Team, treatmenttochoose:Team)
    {
        //character_chosen is applied to function PlayingWithTheCharacters which will be in Team Class
        //weapon_chosen is applied to function PlayingWithTheWeapons which will be in Team Class
        //treamtent_chosen is applied to function PlayingWithTreatment which will be in Team Class
        
        if(chestapparition())
        {
            let character_chosen = charactertochoose.PlayingWithTheCharacters()
            
            if let mage = character_chosen as? Mage
            {
                var treatment_chosen = treatmenttochoose.PlayingWithTheTreatments()
                treatment_chosen = character_chosen.cure
                
            }
            else
            {
                var weapon_chosen = weapontochoose.PlayingWithTheWeapons()
                {
                    weapon_chosen = character_chosen.weapon
                }
            }
           
            
        }
            // Sett random to make appear sometimes the chest
            //on selectionne aléatoirement une arme dans le coffre
            //on demande a l'utilisateur si il veut équiper son personnage de l'arme en question
            // si oui, on fait en sorte que le personnage.weapon = la nouvelle arme
            //si c'est mage: arme de soin sinon arme d'attaque

    }
    
    func chestapparition()->Bool
    {
        let random = arc4random_uniform(3)
        var random_value = 0
        
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

