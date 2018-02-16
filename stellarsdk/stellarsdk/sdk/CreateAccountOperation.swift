//
//  CreateAccountOperation.swift
//  stellarsdk
//
//  Created by Rogobete Christian on 16.02.18.
//  Copyright © 2018 Soneso. All rights reserved.
//

import Foundation

/**
    Represents a create account operation. This operation creates and funds a new account with the specified starting balance.
    See [Stellar Guides] (https://www.stellar.org/developers/learn/concepts/list-of-operations.html#create-account, "Create Account Operation")
 */
public class CreateAccountOperation:Operation {
    
    public let destination:KeyPair?
    public let startBalance:String
    
    /**
        Initializer
     
        - Parameter sourceAccount: Operations are executed on behalf of the source account specified in the transaction, unless there is an override defined for the operation.
     */
    public init(sourceAccount:KeyPair?, destination:KeyPair, startBalance:String) {
        self.destination = destination
        self.startBalance = startBalance
        super.init(sourceAccount:sourceAccount)
    }
}
