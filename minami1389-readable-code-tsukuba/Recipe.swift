//
//  Recipe.swift
//  minami1389-readable-code-tsukuba
//
//  Created by IllyasvielVonEinzbern on 7/4/15.
//  Copyright (c) 2015 minami. All rights reserved.
//

import Cocoa

class Recipe {
    let id: Int
    let name: String
    let description: String

    init(id: Int, name: String, description: String) {
        self.name = name
        self.id   = id
        self.description = description
    }

    func print() {
        println("\(id): \(name) \(description)")
    }
}
