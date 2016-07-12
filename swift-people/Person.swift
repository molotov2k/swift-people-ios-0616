//
//  Person.swift
//  swift-people
//
//  Created by Max Tkach on 7/12/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation


class Person {
    
    let name: String
    private(set) var ageInYears: Int?
    private(set) var skills = Set<String>()
    
    var qualifiedTutor: Bool {
        get { return qualifiedTutorCheck() }
    }
    
    
    convenience init() {
        self.init(name: "John Doe", ageInYears: nil)
    }
    
    
    convenience init(name: String) {
        self.init(name: name, ageInYears: nil)
    }
    
    
    init(name: String, ageInYears: Int?) {
        self.name = name
        self.ageInYears = ageInYears
    }
    
    
    func celebrateBirthday() -> String {
        if var age = ageInYears {
            age += 1
            ageInYears = age
            return "HAPPY \(age)\(age.ordinal().uppercaseString) BIRTHDAY, \(name.uppercaseString)!!!"
        } else {
            return "HAPPY BIRTHDAY, \(name.uppercaseString)!!!"
        }
    }
    
    
    func learnSkillBash() {
        skills.insert("bash")
    }
    
    func learnSkillXcode() {
        skills.insert("Xcode")
    }
    
    func learnSkillObjectiveC() {
        skills.insert("Objective-C")
    }
    
    func learnSkillSwift() {
        skills.insert("Swift")
    }
    
    func learnSkillInterfaceBuilder() {
        skills.insert("Interface Builder")
    }
    
    
    private func qualifiedTutorCheck() -> Bool {
        return skills.count > 3
    }
    
    
}