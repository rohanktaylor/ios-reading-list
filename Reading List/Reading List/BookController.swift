//
//  BookController.swift
//  Reading List
//
//  Created by Rohan Taylor on 11/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class BookController {
    
    var books: [Book] = []

init() {
    loadFromPersistentStore()
}
private var readingListURL: URL? {
        let fileManager = FileManager.default
        guard let documentsDir = fileManager.urls(for: .documentDirectory, in: .userDomainMask).first else { return nil }

    return documentsDir.appendingPathComponent("ReadingList.plist")
        }

func saveToPersistentStore() {
    guard let fileURL = readingListURL else { return }
    let encoder = PropertyListEncoder()
        do {
    let booksData = try encoder.encode(books)
        try booksData.write(to: fileURL)
            
        } catch {
print("Error saving books: \(error)")
    }
}


