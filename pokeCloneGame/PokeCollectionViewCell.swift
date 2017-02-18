//
//  PokeCollectionViewCell.swift
//  pokeCloneGame
//
//  Created by Uchenna Ezeobi on 2/17/17.
//  Copyright © 2017 Uchenna Ezeobi. All rights reserved.
//

import UIKit

class PokeCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    var pokemon:Pokemon!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        layer.cornerRadius = 10.0
    }
    
    func configureCell(pokemon: Pokemon) {
        self.pokemon = pokemon
        nameLabel.text = self.pokemon.name.capitalized
        thumbImage.image = UIImage(named: "\(self.pokemon.pokedexId)")
    }
    
}
