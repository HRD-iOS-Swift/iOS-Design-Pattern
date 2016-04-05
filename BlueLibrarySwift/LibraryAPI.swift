//
//  LibraryAPI.swift
//  BlueLibrarySwift
//
//  Created by Kokpheng Yin on 2016. 4. 5..
//  Copyright © 2016년 Raywenderlich. All rights reserved.
//

import UIKit

class LibraryAPI: NSObject {
    
    class var sharedInstance: LibraryAPI{
        struct Singleton{
            static let instance = LibraryAPI()
        }
        return Singleton.instance
    }
    
    
    private let persistencyManager: PersistencyManager
    private let httpClient: HTTPClient
    private let isOnline: Bool
    
    override init() {
        persistencyManager = PersistencyManager()
        httpClient = HTTPClient()
        isOnline = false
        
        super.init()
    }
    
    

}
