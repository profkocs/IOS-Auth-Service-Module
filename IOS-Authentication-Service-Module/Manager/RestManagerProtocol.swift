//
//  RestManagerProtocol.swift
//  IOS-Authentication-Service-Module
//
//  Created by Burak on 12.07.2021.
//  Copyright © 2021 profkocs. All rights reserved.
//

import Foundation
protocol RestManagerProtocol {
    
    func stopTask()
    
    func startTask(request:URLRequest, completionHandler: @escaping (Data?, URLResponse?, Error?)->())
    
}
