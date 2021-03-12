//
//  PresenterView.swift
//  MVPDemo
//
//  Created by Jayant Tiwari on 10/03/21.
//  Copyright © 2021 Expleo. All rights reserved.
//

protocol PresenterViewDelegate : class {
    
    func updateUI(name : String)
}

class PresenterView {

    var count = 0
    
    var presenterViewDelegate : PresenterViewDelegate
    
    init(presenterViewDelegate : PresenterViewDelegate) {
        self.presenterViewDelegate = presenterViewDelegate
    }
    
    func fetchData()  {
        
        count = count + 1
        if count == 5 {
            count = 0
            var person = Person(name: "Expleo")
            presenterViewDelegate.updateUI(name: person.name)
        }
    }
}
