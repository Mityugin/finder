//
//  main.swift
//  finder
//
//  Created by Uchitel on 14.07.16.
//  Copyright © 2016 Uchitel. All rights reserved.
//

import Foundation


var address = "81.19.76.10"

let htp = "http"
let slash = "://"

let timestamp = Int(NSDate().timeIntervalSince1970*100000)
let datestamp = "\(timestamp)"

let htpurl = htp+slash+address

// Create URLSession

let session = URLSession.shared
let request = URLRequest(url: URL(string: htpurl)!)

let task = session.dataTask(with: request) { (data, response, error) in
    
    if (response != nil) {
        let urlStr = String(response!.url)
        print (urlStr)
    }

}


// Running URLSession
task.resume()

repeat {
 
} while task.state.rawValue<3

sleep(4)


