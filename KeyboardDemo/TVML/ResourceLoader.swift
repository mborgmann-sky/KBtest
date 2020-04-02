//
//  ResourceLoader.swift
//  KeyboardDemo
//
//  Created by Michael Borgmann on 02/04/2020.
//  Copyright © 2020 Michael Borgmann. All rights reserved.
//

import Foundation
import JavaScriptCore

@objc protocol ResourceLoaderExport: JSExport {
    static func create() -> ResourceLoaderExport
    func loadBundleResource(_ name: String) -> String
}

@objc class ResourceLoader: NSObject, ResourceLoaderExport {
    
    static func create() -> ResourceLoaderExport {
        return ResourceLoader()
    }
    
    func loadBundleResource(_ name: String) -> String {
        
        let path = Bundle.main.path(forResource: name, ofType: nil)
        
        do {
            print("load bundle resource")
            return try String(contentsOfFile: path!, encoding: .utf8)
        } catch {
            print("There was a problem")
            return ""
        }
    }
    
}
