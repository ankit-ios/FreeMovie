//
//  ViewController.swift
//  FreeMovie
//
//  Created by Ankit Sharma on 15/11/17.
//  Copyright © 2017 Ankit Sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        requestAPI()
    }

    
    func requestAPI() {
        FMWebServiceManager.makeHTTPGetRequestForJSON(path: FMMovieAPI.categoryList()) {[weak self] (venues, error) in
        }
    }
}

