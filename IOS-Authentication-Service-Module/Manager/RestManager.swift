//
//  Manager.swift
//  IOS-Authentication-Service-Module
//
//  Created by Burak on 12.07.2021.
//  Copyright © 2021 profkocs. All rights reserved.
//

/*
    Class Responsibilities -> Sending the request to server and getting response from it.
*/

import Foundation
public class RestManager:RestManagerProtocol{
    
    private var task: URLSessionDataTask?
    
    func stopTask(){
        
        print("Task Stopped")
        task!.cancel()
    }
    
    func startTask(request:URLRequest, completionHandler: @escaping (Data?, URLResponse?, Error?)->()){
        
        task =  URLSession.shared.dataTask(with:request) { (data, response, error) in
            
            print("Task Finished")
            completionHandler(data,response,error)
        }
        
        task!.resume()
        
    }
    
}
