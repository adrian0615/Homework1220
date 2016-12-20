//
//  NSCoding.swift
//  JournalEntry
//
//  Created by Adrian McDaniel on 12/20/16.
//  Copyright © 2016 dssafsfsd. All rights reserved.
//

import Foundation


class JourneyEntry: NSObject, NSCoding {
    var entry: String
    
    
    init(entry: String) {
        self.entry = entry
    }
    
    
    
    required convenience init?(coder decoder: NSCoder) {
        guard let entry = decoder.decodeObject(forKey: "entry") as? String else { return nil }
        
        self.init{
            entry: entry
        }
    }
    
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(self.entry, forKey: "entry")
    }
}


