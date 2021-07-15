//
//  RestService.swift
//  IOS-Authentication-Service-Module
//
//  Created by Burak on 12.07.2021.
//  Copyright © 2021 profkocs. All rights reserved.
//

/*
    Class Responsibilities -> Sending the request to Manager and getting response from it to transmit them.
*/

import Foundation

public class RestService:RestServiceProtocol{
    
    var manager:RestManagerProtocol
    
    var request: URLRequest?
    
    init(manager:RestManagerProtocol){
        
        self.manager = manager
    }
    
    func setRequest(request: URLRequest) {
        
        self.request = request
    }
    
    func startService(request:URLRequest,completionHandler: @escaping (Data?, URLResponse, Error?) -> ()) {
        
        self.manager.startTask(request:request ,completionHandler:{ data, response, error in

            completionHandler(data,response!,error)
        } )
    }
    
    func stopService() {
    
        self.manager.stopTask()
    }
    

}
