//
//  ViewController.swift
//  Test KeychainSwiftX
//
//  Created by AmrFawaz on 4/18/20.
//  Copyright © 2020 AmrFawaz. All rights reserved.
//

import UIKit
import KeychainSwiftX
class ViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: - Set String in keychain
        Keychain.shared.set(value: "SecretToken", forKey: "SecretTokenKey")
        
        // MARK: - Set Data in keychain
        Keychain.shared.set(value: Data(), forKey: "SecretDataKey")
        
        // MARK: - Get String from keychain
        let _ = Keychain.shared.getString(forKey: "SecretTokenKey")
        
        // MARK: - Get Data from keychain
        let _ = Keychain.shared.getData(forKey: "SecretDataKey")
    }


}

