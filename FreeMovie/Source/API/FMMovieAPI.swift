//
//  FMMovieAPI
//  FoodBreak
//
//  Created by Ankit Sharma on 04/11/17.
//  Copyright © 2017 Ankit Sharma. All rights reserved.
//

import Foundation

/**
 *  Here, we get all APIs.
 */
struct FMMovieAPI {
    
    
    /*
     http://10.10.41.42:9000/api/v1/categories/list
     http://10.10.41.42:9000/api/v1/movies/list
     http://10.10.41.42:9000/api/v1/movies/video
     */
    
    //constants
    private static let baseURL = "http://10.10.41.42:9000/api/v1/"
    private static let categories = "categories/"
    private static let movies = "movies/"
    private static let list = "list"
    private static let video = "video"
    
    //getting movies urls
    static func categoryList() -> String {
        return baseURL + categories + list
    }
    
    static func movieList() -> String {
        return baseURL + movies + list
    }
    
    static func movieVideoList() -> String {
        return baseURL + movies + video
    }
}

