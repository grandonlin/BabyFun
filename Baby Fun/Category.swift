//
//  Category.swift
//  Baby Fun
//
//  Created by Grandon Lin on 2017-03-01.
//  Copyright © 2017 Grandon Lin. All rights reserved.
//

import Foundation

class Category {
    
    private var _name: String!
    private var _title: String!
    var number = 12
    
    var name: String {
        return _name
    }
    
    var title: String {
        return _title
    }
    
    init(name: String) {
        self._name = name
    }
    
    
}
