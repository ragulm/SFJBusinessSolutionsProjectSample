//
//  ViewControllerProtocol.swift
//  NytSampleApp
//
//  Created by M L Ragul on 27/03/19.
//  Copyright © 2019 M L Ragul. All rights reserved.
//

import UIKit

protocol ViewControllerProtocol {
    
    func handleErrors(error: NSError)
    func handleUpdateSuccess(nytData: BaseValue)
    
}
