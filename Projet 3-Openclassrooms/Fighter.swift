//
//  Fighter.swift
//  Projet_3_OC-Jeu_video
//
//  Created by Michael Aidan on 12/05/2018.
//  Copyright © 2018 Michael Aidan. All rights reserved.
//

import Foundation
class Fighter:Character
{
    init(name:String)
    {
        
        super.init(name:name,type: "Fighter",life: 100,attack: 100,resistance: 30,weapon:"Sword/Epée",treatment: 0)
        
    }
}
