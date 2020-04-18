//
//  Keychain.swift
//  Keychain
//
//  Created by AmrFawaz on 4/18/20.
//  Copyright © 2020 AmrFawaz. All rights reserved.
//

import Foundation




open class Keychain {
    public static let shared = Keychain()
    private let keychain = KeychainSwift()

    open func set<T>(value: T?, forKey key: String) {
        guard value != nil else {
            return
        }
        switch value {
        case is String:
            keychain.set(value as! String, forKey: key)
        case is Bool:
            keychain.set(value as! Bool, forKey: key)
        case is Data:
            keychain.set(value as! Data, forKey: key)
        default:
            break
        }
    }

    open func getBool(forKey key: String) -> Bool? {
        return keychain.getBool(key)
    }

    open func getString(forKey key: String) -> String? {
        return keychain.get(key)
    }

    open func getData(forKey key: String) -> Data? {
        return keychain.getData(key)
    }

    open func removeValue(forKey key: String) {
        keychain.delete(key)
    }

    open func remvoeClearKeychain() {
        keychain.clear()
    }
}
