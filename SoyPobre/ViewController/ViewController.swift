//
//  ViewController.swift
//  SoyPobre
//
//  Created by kaya on 26/9/18.
//  Copyright © 2018 kaya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var btnPress: UIButton!
    
    @IBOutlet weak var imgPokemon: UIImageView!
    
    @IBOutlet weak var txtTitle: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showPokemon(_ sender: Any) {
        let pokemons = [#imageLiteral(resourceName: "chicorita"), #imageLiteral(resourceName: "totodile"), #imageLiteral(resourceName: "squartul"), #imageLiteral(resourceName: "eve"), #imageLiteral(resourceName: "saidok"), #imageLiteral(resourceName: "vulbasor")]
        let namePokemons = ["Chicorita", "Totodile", "squartle", "Eve", "Saidok", "Vulbasur"]
        let randomNum = Int(arc4random_uniform(6))
        
        txtTitle.text = "Eres "+namePokemons[randomNum]
        imgPokemon.image = pokemons[randomNum]
    }
}

