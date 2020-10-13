//
//  Book.swift
//  Books
//
//  Created by Katherine Li on 9/15/20.
//  Copyright © 2020 Katherine Li. All rights reserved.
//

import Foundation

struct Book: Identifiable {
    let id = UUID()
    let name: String
    let author: String
    let version: String
    let link: String
}
