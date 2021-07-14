//
//  AuthService.swift
//  IOS-Authentication-Service-Module
//
//  Created by Burak on 14.07.2021.
//  Copyright © 2021 profkocs. All rights reserved.
//

import Foundation
public class AuthService:RestService, AuthServiceProtocol{
    
    private var builder:RequestBuilder?
    
    override init(manager:RestManagerProtocol){
        super.init(manager: manager)
    }
    
  
    func adjustRequest(url:String, method:String, model:RestModelProtocol){
        
        setDefaultHeader()
        setBuilder(url: url)
        setMethod(method: method)
        setBody(body: model.getEncodedModel())
        
        self.setRequest(request: self.builder!.getRequest()!)
    }
    
    func adjustRequestWithHeader(header: [(String, String)], url: String, method: String, model: RestModelProtocol) {
        
        setDefaultHeader()
        addHeader(header: header)
        setBuilder(url: url)
        setMethod(method: method)
        setBody(body: model.getEncodedModel())
        
        self.setRequest(request: self.builder!.getRequest()!)
    }
    
    private func setBuilder(url:String){
        
        self.builder = RequestBuilder(url:url)
    }
    
    private func setMethod(method:String){
        
        self.builder?.setMethod(method: method)
    }
    
    private func setBody(body:Data?){
        
        if body != nil {
            
            self.builder!.setBody(body:body!)
        }
    }

    private func setDefaultHeader(){
        
        self.builder!.setDefaultHeader()
    }
    
    private func addHeader(header:[(String, String)]){
        
        self.builder!.setHeader(header: header)
    }
    
}
