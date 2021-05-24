//
//  Dynamic.swift
//  MVVMPractice
//
//  Created by Deepankar  on 24/05/21.
//  Copyright © 2021 Deepankar Parashar. All rights reserved.
//

import Foundation

class Dynamic<Value> {
    
    typealias Listener = (Value) -> ()
    var listener: Listener?
    
    // MARK:- Initiliazer
    init(_ value: Value) {
        self.value = value
    }
    
    //MARK:- Properties
    var value: Value {
        didSet {
            listener?(value)
        }
    }
    
    //MARK:-  Data Binder
    func bind(_ listener: Listener?) {
        self.listener = listener
    }
    
    
    func bindAndFire(_ listener: Listener?){
        self.listener = listener
        listener?(value)
    }
    
}
