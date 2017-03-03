//
//  MainVC.swift
//  Baby Fun
//
//  Created by Grandon Lin on 2017-02-28.
//  Copyright © 2017 Grandon Lin. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collection: UICollectionView!
    
    var catArr = [Category]()
    let numCat = Category(name: "number")
    let colorCat = Category(name: "color")
    let fruitCat = Category(name: "fruit")
    let animalCat = Category(name: "animal")
    let foodCat = Category(name: "food")
    let transCat = Category(name: "transportation")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collection.delegate = self
        collection.dataSource = self
     
        catArr = [numCat, colorCat, fruitCat, animalCat, foodCat, transCat]
        
    }
    
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collection.dequeueReusableCell(withReuseIdentifier: "CategoryCell", for: indexPath) as? CategoryCell {
            
            let cat = catArr[indexPath.row]
            
            cell.configureCell(category: cat)
            
            return cell
        } else {
            return UICollectionViewCell()
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        var category: Category!
        category = catArr[indexPath.row]
        
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

















