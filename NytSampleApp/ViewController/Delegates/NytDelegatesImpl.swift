//
//  NytDelegatesImpl.swift
//  NytSampleApp
//
//  Created by M L Ragul on 27/03/19.
//  Copyright © 2019 M L Ragul. All rights reserved.
//

import UIKit

class NytDelegatesImpl: NSObject,NytDelegates {
    
    var viewController : ViewControllerProtocol?
    
    func success(response: Any!) {
        viewController?.handleUpdateSuccess(nytData: response as! BaseValue)
    }
    
    func fail(error: NSError) {
        viewController?.handleErrors(error: error)
    }
    
    
    func getnytDetails() {
        
        RestService().GetnytDetails(delegate: self)
    }
    
}
