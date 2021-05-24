//
//  ViewModel.swift
//  MVVMPractice
//
//  Created by Deepankar  on 24/05/21.
//  Copyright © 2021 Deepankar Parashar. All rights reserved.
//

import Foundation
import UIKit


//TODO:- ViewModel will be fetching the data from the API(or any external Server)
class ViewModel  {
    
    //MARK:- OLD Mechanism
    var onPersonChanged: ((Person) -> Void)?
    
    func fetchRecord() {
        // Calling of api, fetching from a database , etc
        let person = Person(id: 1, name: "Deepankar", age: 28)
        onPersonChanged?(person)
    }
    
    
    
    // MARK:- New Mechanism - using Dynamic class
    var personName: Dynamic<String> = Dynamic("")
    var personAge: Dynamic<Int> = Dynamic(0)
    
    // TODO:- Fetching records based on Dynamic
    func fetchPersonInfo() {
        let person = Person(id: 0, name: "Rahul", age: 20)
        
        personName.value = person.name
        personAge.value = person.age
        
    }
    
}
