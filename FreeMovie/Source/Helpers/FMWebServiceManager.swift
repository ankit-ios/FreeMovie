//
//  FMWebServiceManager.swift
//  FoodBreak
//
//  Created by Ankit Sharma on 04/11/17.
//  Copyright © 2017 Ankit Sharma. All rights reserved.
//

import Foundation
import Alamofire

class FMWebServiceManager {
    
    typealias completionHandlerForJSON = (_ response: [String: AnyObject]?, _ error: Error?) -> Void
    
    static func makeHTTPGetRequestForJSON(path: String, completion: @escaping completionHandlerForJSON) {
                
        Alamofire.request(path).responseJSON { response in
            print("Request: \(String(describing: response.request))")   // original url request
            print("Response: \(String(describing: response.response))") // http url response
            print("Result: \(response.result)")                         // response serialization result
            
            if let json = response.result.value, let dict = json as? [String: AnyObject] {
                print("JSON: \(json)") // serialized json response
                completion(dict, nil)
            }
        }
    }
    
    /**
     get venues
     
     - parameter urlString:    url String
     - parameter onCompletion: get Venues details in array and error
     */
//    static func getMovieDetails(with urlString: String, onCompletion: @escaping (_ response: [FBVenue]?, _ error: Error?) -> Void) {
//        
//        makeHTTPGetRequestForJSON(path: urlString) { (response, error) in
//            if let response = response, error == nil {
//            
//            }
//            else {
//                onCompletion(nil, error)
//            }
//        }
//    }
//    
//    /**
//     get venues
//     
//     - parameter urlString:    url String
//     - parameter onCompletion: get Venues details in array and error
//     */
//    static func getVenueDetail(with urlString: String, onCompletion: @escaping (_ response: FBVenue?, _ error: Error?) -> Void) {
//        
//        makeHTTPGetRequestForJSON(path: urlString) { (response, error) in
//            if let response = response, error == nil {
//                if let venues = FBVenue.constructModel(data: response) {
////                    onCompletion(venues, nil)
//                }
//            }
//            else {
//                onCompletion(nil, error)
//            }
//        }
//    }
}
