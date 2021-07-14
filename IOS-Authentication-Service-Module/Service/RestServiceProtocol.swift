//
//  ServiceProtocol.swift
//  IOS-Authentication-Service-Module
//
//  Created by Burak on 12.07.2021.
//  Copyright © 2021 profkocs. All rights reserved.
//

import Foundation
protocol RestServiceProtocol {
    
    func startService(request:URLRequest, completionHandler: @escaping(_:Data?, _:URLResponse, _:Error?)->())
    func stopService()
}
