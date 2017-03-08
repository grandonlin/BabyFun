//
//  MainVC.swift
//  Baby Fun
//
//  Created by Grandon Lin on 2017-02-28.
//  Copyright © 2017 Grandon Lin. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func categorySelected(_ sender: UIButton) {
        let category = Category(name: sender.currentTitle!)
        performSegue(withIdentifier: "CatDetailVC", sender: category)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? CatDetailVC {
            if let cat = sender as? Category {
                destination.category = cat
            }
        }
    }

}

















