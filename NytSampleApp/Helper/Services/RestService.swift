//
//  RestService.swift
//  NytSampleApp
//
//  Created by M L Ragul on 27/03/19.
//  Copyright © 2019 M L Ragul. All rights reserved.
//

import UIKit
import ObjectMapper

class RestService: NSObject {
    
    
    
    func GetnytDetails(delegate : RestDelegate) {
        let action = "http://api.nytimes.com/svc/mostpopular/v2/mostviewed/all-sections/7.json?api-key=AMRRWiqmBDOGGv8rmFhgrH9Bb9ZyexL9"
        
        HttpClient.sharedInstance.request(action: action, imethod: .get) {
            response, error in
            
            if error == nil {
                if let authResponse = Mapper<BaseValue>().map(JSONObject: response) {
                    delegate.success(response: authResponse)
                }
                else {
                    // something happened with the mapping
                    let nsError = NSError(domain: "Mapping error", code: 255, userInfo: ["":""])
                    delegate.fail(error: nsError)
                }
            }
            else {
                let nsError = error! as NSError
                delegate.fail(error: nsError)
            }
            
        }
    }
    
}
