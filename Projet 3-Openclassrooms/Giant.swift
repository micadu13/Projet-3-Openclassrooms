//
//  Giant.swift
//  Projet_3_OC-Jeu_video
//
//  Created by Michael Aidan on 06/05/2018.
//  Copyright © 2018 Michael Aidan. All rights reserved.
//

import Foundation
class Giant:Character
{
    init(name:String)
    {
        super.init(name:name,type: "Giant",life: 200,resistance: 50,weapon:Weapon(name:"Fists",atk:5),cure:Cure(name: "No Cure", cure_value:0))
    }
}
