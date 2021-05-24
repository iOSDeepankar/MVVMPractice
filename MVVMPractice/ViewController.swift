//
//  ViewController.swift
//  MVVMPractice
//
//  Created by Deepankar  on 24/05/21.
//  Copyright © 2021 Deepankar Parashar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    //MARK:- Properties
    private let viewModel = ViewModel()
    
    //MARK:- UIComponents
    private let nameLabel: UILabel = UILabel()
    private let ageLabel: UILabel = UILabel()
    
    
    //MARK:- LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addObserver()
      //  viewModel.fetchRecord() // Was used in Old way
        viewModel.fetchPersonInfo() // Is using the new way
        
    }

    //MARK:- Private Method
    private func addObserver(){
        //TODO:- OLD Way
       /* viewModel.onPersonChanged = {[weak self] person in
            self?.refreshUI(person:person)
            
        }*/
        
        
        // TODO:- New Way using the dynamic
        viewModel.personName.bind { [weak self] name in
             print("name is ",name)
        }
        
        viewModel.personAge.bind {[weak self] age in
            print("age is ", age)
        }
        
    }
    
    //MARK:- Refresh UI with data
    private func refreshUI(person: Person) {
        print("person data is ", person)
    }
    

}

