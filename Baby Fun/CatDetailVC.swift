//
//  CatDetailVC.swift
//  Baby Fun
//
//  Created by Grandon Lin on 2017-03-01.
//  Copyright © 2017 Grandon Lin. All rights reserved.
//

import UIKit

class CatDetailVC: UIViewController {

    @IBOutlet weak var questionLbl: UILabel!
    @IBOutlet weak var btnOne: UIButton!
    @IBOutlet weak var btnTwo: UIButton!
    @IBOutlet weak var btnThree: UIButton!
    @IBOutlet weak var btnFour: UIButton!
    @IBOutlet weak var btnFive: UIButton!
    @IBOutlet weak var btnSix: UIButton!
    @IBOutlet weak var btnSeven: UIButton!
    @IBOutlet weak var btnEight: UIButton!
    @IBOutlet weak var btnNine: UIButton!
    @IBOutlet weak var btnTen: UIButton!
    @IBOutlet weak var btnEleven: UIButton!
    @IBOutlet weak var btnTwelve: UIButton!
    @IBOutlet weak var bingoimg: UIImageView!
    @IBOutlet weak var bingoView: UIView!

    
    var category: Category!
    var selectionArray: Array<String>!
    var question: String!
    var isWinMode = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let topItem = self.navigationController?.navigationBar.topItem {
            topItem.backBarButtonItem = UIBarButtonItem(title: "", style: UIBarButtonItemStyle.plain, target: nil, action: nil)
        }
        
        navigationItem.title = category.name.capitalized
        
        
        self.initArr()
        self.question(array: selectionArray)
        self.assignPhoto(array: selectionArray)
        self.assignTitle(array: selectionArray)
        
    }
    
    func question(array: [String]) {
        
        let questionIndex = Int(arc4random_uniform(UInt32(array.count-1)))
        question = array[questionIndex] as String
        questionLbl.text = "Which one is \(question!)?"
    }
    

    func initArr() {
        if category.name == "number" {
        selectionArray = number
        } else if category.name == "color" {
            selectionArray = color
        } else if category.name == "fruit" {
            selectionArray = fruit
        } else if category.name == "food" {
            selectionArray = food
        } else if category.name == "animal" {
            selectionArray = animal
        } else if category.name == "transportation" {
            selectionArray = transportation
        }
        selectionArray.shuffle()
        print(selectionArray)
        
    }
    
    func assignPhoto(array: [String]) {
        btnOne.setImage(UIImage(named: array[0]), for: .normal)
        btnTwo.setImage(UIImage(named: array[1]), for: .normal)
        btnThree.setImage(UIImage(named: array[2]), for: .normal)
        btnFour.setImage(UIImage(named: array[3]), for: .normal)
        btnFive.setImage(UIImage(named: array[4]), for: .normal)
        btnSix.setImage(UIImage(named: array[5]), for: .normal)
        btnSeven.setImage(UIImage(named: array[6]), for: .normal)
        btnEight.setImage(UIImage(named: array[7]), for: .normal)
        btnNine.setImage(UIImage(named: array[8]), for: .normal)
        btnTen.setImage(UIImage(named: array[9]), for: .normal)
        btnEleven.setImage(UIImage(named: array[10]), for: .normal)
        btnTwelve.setImage(UIImage(named: array[11]), for: .normal)
    }
    
    func assignTitle(array: [String]) {
        btnOne.setTitle(array[0], for: .normal)
        btnTwo.setTitle(array[1], for: .normal)
        btnThree.setTitle(array[2], for: .normal)
        btnFour.setTitle(array[3], for: .normal)
        btnFive.setTitle(array[4], for: .normal)
        btnSix.setTitle(array[5], for: .normal)
        btnSeven.setTitle(array[6], for: .normal)
        btnEight.setTitle(array[7], for: .normal)
        btnNine.setTitle(array[8], for: .normal)
        btnTen.setTitle(array[9], for: .normal)
        btnEleven.setTitle(array[10], for: .normal)
        btnTwelve.setTitle(array[11], for: .normal)
        print(btnTwelve.title(for: .normal)!)
    }
    
    @IBAction func btnSelected(_ sender: UIButton!) {
        if sender.title(for: .normal)! == question! {
            bingoView.isHidden = true
            bingoimg.isHidden = false
            isWinMode = true
            print(question!)
            print(sender.title(for: .selected)!)

        }
    }
    
 
//    func showBingo() {
////        if isWinMode {
//            for x in 0..<selectionArray.count {
//                
//            }
////            }
//        //}
//    }

}

extension Array {
    mutating func shuffle()
    {
        for _ in 0..<12
        {
            sort { (_,_) in arc4random() < arc4random() }
        }
    }
}


