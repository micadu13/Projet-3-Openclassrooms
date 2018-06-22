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
    
    
    init()
    {
        print("Bienvenue dans ce nouveau jeu de combats à mort à 2 équipes")
        
        print("Joueur 1, veuillez svp nommer votre équipe")
        self.player1 = Team()
        self.player1.setTeamName()
        self.player1.printName()
        self.player1.chooseCharacter()
        print("Joueur 2, veuillez svp nommer votre équipe")
        self.player2 = Team()
        self.player2.setTeamName()
        self.player2.printName()
        self.player2.chooseCharacter()
        
    }
    
  
        
    
    }


