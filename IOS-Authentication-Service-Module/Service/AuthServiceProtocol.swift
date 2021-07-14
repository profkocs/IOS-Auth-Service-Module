//
//  AuthServiceProtocol.swift
//  IOS-Authentication-Service-Module
//
//  Created by Burak on 14.07.2021.
//  Copyright © 2021 profkocs. All rights reserved.
//

import Foundation
protocol AuthServiceProtocol {
    
    func adjustRequest(url:String, method:String, model:RestModelProtocol)
    func adjustRequestWithHeader(header:[(String,String)],url:String, method:String, model:RestModelProtocol)
    
}
