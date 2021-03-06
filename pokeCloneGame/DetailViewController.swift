//
//  DetailViewController.swift
//  pokeCloneGame
//
//  Created by Uchenna Ezeobi on 2/17/17.
//  Copyright © 2017 Uchenna Ezeobi. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var pokemon: Pokemon!
    
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var pokedexLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var baseAttackLabel: UILabel!
    @IBOutlet weak var currentEvolutionLabel: UIImageView!
    @IBOutlet weak var nextEvolutionLabel: UIImageView!
    @IBOutlet weak var evolutionLabel: UILabel!
    @IBOutlet weak var defenseLabel: UILabel!
    

    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = pokemon.name.capitalized
        let image = UIImage(named: "\(pokemon.pokedexId)")
        mainImage.image = image
        currentEvolutionLabel.image = image
        pokedexLabel.text = "\(pokemon.pokedexId)"
        pokemon.downloadPokemonDetail {
            //whateevre we call here wil be done after completion
            self.updateUI()
        }
        // Do any additional setup after loading the view.
    }
    
    func updateUI() {
        baseAttackLabel.text = pokemon.baseAttack
        defenseLabel.text = pokemon.defense
        heightLabel.text = pokemon.height
        weightLabel.text = pokemon.weight
        typeLabel.text = pokemon.type
        descriptionLabel.text = pokemon.description
        if pokemon.nextEvolutionId == "" {
            
            evolutionLabel.text = "No Evolutions"
            nextEvolutionLabel.isHidden = true
            
        } else {
            
             nextEvolutionLabel.isHidden = false
             nextEvolutionLabel.image = UIImage(named: pokemon.nextEvolutionId)
            let str = "Next Evolution: \(pokemon.nextEvolutionName) - LVL \(pokemon.nextEvolutionLevel)"
            evolutionLabel.text = str
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backButtonPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
