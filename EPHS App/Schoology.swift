//
//  Schoology.swift
//  EPHS App
//
//  Created by 90305863 on 10/22/20.
//

import Foundation

struct AssignmetsInfo:Decodable {
    let oauth_consumer_key = "796a05917638570d5a2095dbed4dab7705f919cca"
    let oauth_signature = "0803d500d15771de8a0dc0bc25a652e3"
    let oauth_token = ""
    
    //let oauth_nonce
    let oauth_timestamp = NSDate().timeIntervalSince1970
    
    let oauth_signature_method = "PLAINTEXT"
    let oauth_version = 1.0
}
