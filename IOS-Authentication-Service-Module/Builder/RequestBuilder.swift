//
//  RequestBuilder.swift
//  IOS-Authentication-Service-Module
//
//  Created by Burak on 14.07.2021.
//  Copyright © 2021 profkocs. All rights reserved.
//

import Foundation
class RequestBuilder{
    
    private var request:URLRequest
    
    init(url:String) {
        
        self.request = URLRequest(url: URL(string: url)!)
    }
    
    func setHeader(header:[(String,String)]){
        
        for data in header{
            
            self.request.addValue(data.0, forHTTPHeaderField: data.1)
        }
    }
    
    func setMethod(method:String){
        
        self.request.httpMethod = method
    }
    
    func setBody(body:Data){
        
        self.request.httpBody = body
    }
    
    func getRequest()->URLRequest?{
        
        return self.request
    }
    
}
