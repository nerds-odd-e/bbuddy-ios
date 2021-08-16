// MARK: - Mocks generated from file: bbuddy/Api.swift at 2021-08-16 08:55:21 +0000

//
//  Api.swift
//  bbuddy
//
//  Created by Jackson Zhang on 10/02/2017.
//  Copyright © 2017 odd-e. All rights reserved.
//

import Cuckoo
@testable import bbuddy

import Argo
import Cely
import Foundation
import Moya


 class MockApi: Api, Cuckoo.ClassMock {
    
     typealias MocksType = Api
    
     typealias Stubbing = __StubbingProxy_Api
     typealias Verification = __VerificationProxy_Api

     let cuckoo_manager = Cuckoo.MockManager.preconfiguredManager ?? Cuckoo.MockManager(hasParent: true)

    
    private var __defaultImplStub: Api?

     func enableDefaultImplementation(_ stub: Api) {
        __defaultImplStub = stub
        cuckoo_manager.enableDefaultStubImplementation()
    }
    

    

    

    
    
    
     override func signIn(_ email: String, password: String, action: @escaping () -> Void)  {
        
    return cuckoo_manager.call("signIn(_: String, password: String, action: @escaping () -> Void)",
            parameters: (email, password, action),
            escapingParameters: (email, password, action),
            superclassCall:
                
                super.signIn(email, password: password, action: action)
                ,
            defaultCall: __defaultImplStub!.signIn(email, password: password, action: action))
        
    }
    
    
    
     override func getAccounts(_ action: @escaping ([DTO.Account]) -> Void)  {
        
    return cuckoo_manager.call("getAccounts(_: @escaping ([DTO.Account]) -> Void)",
            parameters: (action),
            escapingParameters: (action),
            superclassCall:
                
                super.getAccounts(action)
                ,
            defaultCall: __defaultImplStub!.getAccounts(action))
        
    }
    
    
    
     override func addAccount(_ account: DTO.Account, to action: @escaping () -> Void)  {
        
    return cuckoo_manager.call("addAccount(_: DTO.Account, to: @escaping () -> Void)",
            parameters: (account, action),
            escapingParameters: (account, action),
            superclassCall:
                
                super.addAccount(account, to: action)
                ,
            defaultCall: __defaultImplStub!.addAccount(account, to: action))
        
    }
    
    
    
     override func updateAccount(_ account: DTO.Account, to action: @escaping () -> Void)  {
        
    return cuckoo_manager.call("updateAccount(_: DTO.Account, to: @escaping () -> Void)",
            parameters: (account, action),
            escapingParameters: (account, action),
            superclassCall:
                
                super.updateAccount(account, to: action)
                ,
            defaultCall: __defaultImplStub!.updateAccount(account, to: action))
        
    }
    
    
    
     override func deleteAccount(_ account: DTO.Account, to action: @escaping () -> Void)  {
        
    return cuckoo_manager.call("deleteAccount(_: DTO.Account, to: @escaping () -> Void)",
            parameters: (account, action),
            escapingParameters: (account, action),
            superclassCall:
                
                super.deleteAccount(account, to: action)
                ,
            defaultCall: __defaultImplStub!.deleteAccount(account, to: action))
        
    }
    

	 struct __StubbingProxy_Api: Cuckoo.StubbingProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	
	     init(manager: Cuckoo.MockManager) {
	        self.cuckoo_manager = manager
	    }
	    
	    
	    func signIn<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(_ email: M1, password: M2, action: M3) -> Cuckoo.ClassStubNoReturnFunction<(String, String, () -> Void)> where M1.MatchedType == String, M2.MatchedType == String, M3.MatchedType == () -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(String, String, () -> Void)>] = [wrap(matchable: email) { $0.0 }, wrap(matchable: password) { $0.1 }, wrap(matchable: action) { $0.2 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockApi.self, method: "signIn(_: String, password: String, action: @escaping () -> Void)", parameterMatchers: matchers))
	    }
	    
	    func getAccounts<M1: Cuckoo.Matchable>(_ action: M1) -> Cuckoo.ClassStubNoReturnFunction<(([DTO.Account]) -> Void)> where M1.MatchedType == ([DTO.Account]) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(([DTO.Account]) -> Void)>] = [wrap(matchable: action) { $0 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockApi.self, method: "getAccounts(_: @escaping ([DTO.Account]) -> Void)", parameterMatchers: matchers))
	    }
	    
	    func addAccount<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ account: M1, to action: M2) -> Cuckoo.ClassStubNoReturnFunction<(DTO.Account, () -> Void)> where M1.MatchedType == DTO.Account, M2.MatchedType == () -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(DTO.Account, () -> Void)>] = [wrap(matchable: account) { $0.0 }, wrap(matchable: action) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockApi.self, method: "addAccount(_: DTO.Account, to: @escaping () -> Void)", parameterMatchers: matchers))
	    }
	    
	    func updateAccount<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ account: M1, to action: M2) -> Cuckoo.ClassStubNoReturnFunction<(DTO.Account, () -> Void)> where M1.MatchedType == DTO.Account, M2.MatchedType == () -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(DTO.Account, () -> Void)>] = [wrap(matchable: account) { $0.0 }, wrap(matchable: action) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockApi.self, method: "updateAccount(_: DTO.Account, to: @escaping () -> Void)", parameterMatchers: matchers))
	    }
	    
	    func deleteAccount<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ account: M1, to action: M2) -> Cuckoo.ClassStubNoReturnFunction<(DTO.Account, () -> Void)> where M1.MatchedType == DTO.Account, M2.MatchedType == () -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(DTO.Account, () -> Void)>] = [wrap(matchable: account) { $0.0 }, wrap(matchable: action) { $0.1 }]
	        return .init(stub: cuckoo_manager.createStub(for: MockApi.self, method: "deleteAccount(_: DTO.Account, to: @escaping () -> Void)", parameterMatchers: matchers))
	    }
	    
	}

	 struct __VerificationProxy_Api: Cuckoo.VerificationProxy {
	    private let cuckoo_manager: Cuckoo.MockManager
	    private let callMatcher: Cuckoo.CallMatcher
	    private let sourceLocation: Cuckoo.SourceLocation
	
	     init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
	        self.cuckoo_manager = manager
	        self.callMatcher = callMatcher
	        self.sourceLocation = sourceLocation
	    }
	
	    
	
	    
	    @discardableResult
	    func signIn<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable, M3: Cuckoo.Matchable>(_ email: M1, password: M2, action: M3) -> Cuckoo.__DoNotUse<(String, String, () -> Void), Void> where M1.MatchedType == String, M2.MatchedType == String, M3.MatchedType == () -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(String, String, () -> Void)>] = [wrap(matchable: email) { $0.0 }, wrap(matchable: password) { $0.1 }, wrap(matchable: action) { $0.2 }]
	        return cuckoo_manager.verify("signIn(_: String, password: String, action: @escaping () -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func getAccounts<M1: Cuckoo.Matchable>(_ action: M1) -> Cuckoo.__DoNotUse<(([DTO.Account]) -> Void), Void> where M1.MatchedType == ([DTO.Account]) -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(([DTO.Account]) -> Void)>] = [wrap(matchable: action) { $0 }]
	        return cuckoo_manager.verify("getAccounts(_: @escaping ([DTO.Account]) -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func addAccount<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ account: M1, to action: M2) -> Cuckoo.__DoNotUse<(DTO.Account, () -> Void), Void> where M1.MatchedType == DTO.Account, M2.MatchedType == () -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(DTO.Account, () -> Void)>] = [wrap(matchable: account) { $0.0 }, wrap(matchable: action) { $0.1 }]
	        return cuckoo_manager.verify("addAccount(_: DTO.Account, to: @escaping () -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func updateAccount<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ account: M1, to action: M2) -> Cuckoo.__DoNotUse<(DTO.Account, () -> Void), Void> where M1.MatchedType == DTO.Account, M2.MatchedType == () -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(DTO.Account, () -> Void)>] = [wrap(matchable: account) { $0.0 }, wrap(matchable: action) { $0.1 }]
	        return cuckoo_manager.verify("updateAccount(_: DTO.Account, to: @escaping () -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	    @discardableResult
	    func deleteAccount<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ account: M1, to action: M2) -> Cuckoo.__DoNotUse<(DTO.Account, () -> Void), Void> where M1.MatchedType == DTO.Account, M2.MatchedType == () -> Void {
	        let matchers: [Cuckoo.ParameterMatcher<(DTO.Account, () -> Void)>] = [wrap(matchable: account) { $0.0 }, wrap(matchable: action) { $0.1 }]
	        return cuckoo_manager.verify("deleteAccount(_: DTO.Account, to: @escaping () -> Void)", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
	    }
	    
	}
}

 class ApiStub: Api {
    

    

    
     override func signIn(_ email: String, password: String, action: @escaping () -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     override func getAccounts(_ action: @escaping ([DTO.Account]) -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     override func addAccount(_ account: DTO.Account, to action: @escaping () -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     override func updateAccount(_ account: DTO.Account, to action: @escaping () -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
     override func deleteAccount(_ account: DTO.Account, to action: @escaping () -> Void)   {
        return DefaultValueRegistry.defaultValue(for: (Void).self)
    }
    
}

