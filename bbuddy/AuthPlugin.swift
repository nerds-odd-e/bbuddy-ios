//
//  AuthPlugin.swift
//  bbuddy
//
//  Created by Jackson Zhang on 10/02/2017.
//  Copyright © 2017 odd-e. All rights reserved.
//

import Foundation
import Moya
import KeychainAccess

struct AuthorizedToken {
    let uid: String
    let client: String
    let accessToken: String
    let type: String
    let expiry: Int
    
    static func load() -> Self {
        let keychain = Keychain(service: "com.odd-e.bbuddy")
        return AuthorizedToken(uid: keychain["uid"] ?? "", client: keychain["client"] ?? "", accessToken: keychain["accessToken"] ?? "", type: keychain["type"] ?? "", expiry: Int(keychain["expiry"] ?? "0")!)
    }
    
    static func valid() -> Bool {
        let token = Self.load()
        let interval = TimeInterval(token.expiry)
        return !token.accessToken.isEmpty && Date(timeIntervalSince1970: interval) > Date()
    }
    
    static func clear() {
        let keychain = Keychain(service: "com.odd-e.bbuddy")
        keychain["uid"] = nil
        keychain["client"] = nil
        keychain["accessToken"] = nil
        keychain["type"] = nil
        keychain["expiry"] = nil
    }
    
    func save() {
        let keychain = Keychain(service: "com.odd-e.bbuddy")
        keychain["uid"] = uid
        keychain["client"] = client
        keychain["accessToken"] = accessToken
        keychain["type"] = type
        keychain["expiry"] = String(expiry)
    }
}

struct AuthPlugin: PluginType {
    let tokenClosure: () -> AuthorizedToken?
    
    func prepare(_ request: URLRequest, target: TargetType) -> URLRequest {
        guard
            let token = tokenClosure(),
            let target = target as? Authorizable,
            target.shouldAuthorize
        else {
            return request
        }
        
        var request = request
        request.addValue(token.type, forHTTPHeaderField: "token-type")
        request.addValue(token.uid, forHTTPHeaderField: "uid")
        request.addValue(token.client, forHTTPHeaderField: "client")
        request.addValue(token.accessToken, forHTTPHeaderField: "access-token")
        return request
    }
    
    func didReceive(_ result: Result<Response, MoyaError>, target: TargetType) {
        switch result {
        case .success(let response):
            if let headers = response.response?.allHeaderFields,
               let uid = headers["uid"] as? String,
               let client = headers["client"] as? String,
               let accessToken = headers["access-token"] as? String,
               let type = headers["token-type"] as? String,
               let expiry = headers["expiry"] as? String {
                if !accessToken.isEmpty {
                    if let expiry = Int(expiry) {
                        AuthorizedToken(uid: uid, client: client, accessToken: accessToken, type: type, expiry: expiry).save()
                    }
                }
            }
        default:
            break
        }
    }
}
