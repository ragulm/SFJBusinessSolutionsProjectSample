//
//  RestDelegate.swift
//  NytSampleApp
//
//  Created by M L Ragul on 27/03/19.
//  Copyright © 2019 M L Ragul. All rights reserved.
//

import Foundation

protocol RestDelegate {
    
    func success(response: Any!)
    func fail(error: NSError)
    
}

