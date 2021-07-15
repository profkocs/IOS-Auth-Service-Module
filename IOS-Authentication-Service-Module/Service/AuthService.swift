//
//  AuthService.swift
//  IOS-Authentication-Service-Module
//
//  Created by Burak on 14.07.2021.
//  Copyright © 2021 profkocs. All rights reserved.
//

/*
    Class Responsibility -> Adjusting request that will be sended to manager.
*/

import Foundation
public class AuthService:RestService{
    
    private var builder:RequestBuilder?
    
    override init(manager:RestManagerProtocol){
        super.init(manager: manager)
    }
    
    
    func adjustSigninRequest(model:RestModelProtocol){
        
        setBuilder(url: EndpointURL.signin.rawValue)
        setHeader()
        setMethod(method:EndpointMethod.post.rawValue)
        setBody(body: model.getEncodedModel())
    
    }
    
    
    private func setBuilder(url:String){
        
        self.builder = RequestBuilder(url: url)
    }
    
    private func setHeader(){
        
        self.builder?.setHeader(header:prepareHeader())
    }
    
    private func setMethod(method:String){
        
        self.builder?.setMethod(method: method)
    }
    
    private func setBody(body:Data?){
        
        if(body != nil){
            
            self.builder?.setBody(body: body!)
        }
    }
    
    
    private func prepareHeader()->[(String,String)]{
        
        return [(EndpointHeader.content_type.rawValue,EndpointHeader.application_json.rawValue)]
    }
    
}
