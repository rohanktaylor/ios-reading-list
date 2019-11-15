//
//  Book.swift
//  Reading List
//
//  Created by Rohan Taylor on 11/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

struct Book: Codable, Equatable {
    var title: String
    var reasonToRead: String
    var hasBeenRead: Bool
    
    init(title: String, reasonToRead: String){
         self.title = title
         self.reasonToRead = reasonToRead
         self.hasBeenRead = false
     }
}
