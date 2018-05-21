//
//  Game.swift
//  Projet_3_OC-Jeu_video
//
//  Created by Michael Aidan on 06/05/2018.
//  Copyright © 2018 Michael Aidan. All rights reserved.
//

import Foundation
class Game {
    //Fonction souhaiter la Bienvenue
    func bienvenue()
    {
        print("Bienvenue dans ce nouveau jeu de combats à mort à 2 équipes")
    }
    // Proposer de créer une équipe pour le joueur 1
    func creationTeam()
    {
        print("Créez une nouvelle équipe")
        if let newTeamName1 = readLine()
        {
            print("Bienvenue \(newTeamName1)")
        }
        
    }
    
    // Création de 3 personnages
    // Nom du personnage
    // Type du personnage
    // Proposer de créer une équipe pour le joueur 1
    // Création de 3 personnages
    // Nom du personnage
    // Type du personnage
    // Affichage des équipes et points de vie des personnages
    // Compte rendu dernière action
    // Choix du personnage à jouer
    // Arrivée aléatoire d'un coffre au trésor contenant une arme au hasard
    // Choix de la cible du personnage
    // Action du personnage
    // Félicitations au vainqueur
    // Affichage du nombre de tours de la partie
}
