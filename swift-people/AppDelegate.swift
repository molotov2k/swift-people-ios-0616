//  AppDelegate.swift

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        let nightKing = Person(name: "Night King", ageInYears: 2000)
        let jim = Person(name: "Jim")
        let doe = Person()
        
        print(nightKing.celebrateBirthday())
        print(jim.celebrateBirthday())
        
        //jim.ageInYears = 20
        
        doe.learnSkillBash()
        doe.learnSkillInterfaceBuilder()
        doe.learnSkillObjectiveC()
        doe.learnSkillObjectiveC()
        
        print(doe.qualifiedTutor)
        
        doe.learnSkillSwift()
        
        print(doe.qualifiedTutor)
        
        
        // Do not alter
        return true  //
    }   //////////////
}       /////////////

