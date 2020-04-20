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

    open var lastResultCode: OSStatus? {
        get {
            return keychain.lastResultCode
        }
        set {
            keychain.lastResultCode = newValue ?? noErr
        }
    }
    
    open var accessGroup: String? {
        get {
            return keychain.accessGroup
        }
        set {
            keychain.accessGroup = newValue ?? ""
        }
    }
    
    open var synchronizable: Bool? {
        get {
            return keychain.synchronizable
        }
        set {
            keychain.synchronizable = newValue ?? false
        }
    }

    
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
    
    
    /**

     Stores the String, Boolean or Data value in the keychain item under the given key.

     - parameter key: Key under which the value is stored in the keychain.
     - parameter value: Generic type to be written to the keychain.
     - parameter withAccess: Value that indicates when your app needs access to the value in the keychain item. By default the .AccessibleWhenUnlocked option is used that permits the data to be accessed only while the device is unlocked by the user.

     - returns: True if the value was successfully written to the keychain.

     */
    @discardableResult
    open func set<T>(_ value: T, forKey key: String, withAccess access: KeychainSwiftAccessOptions? = nil) -> Bool {
        switch value {
        case is String:
            return keychain.set(value as! String, forKey: key, withAccess: access)
        case is Bool:
            return keychain.set(value as! Bool, forKey: key, withAccess: access)
        case is Data:
            return keychain.set(value as! Data, forKey: key, withAccess: access)
        default:
            return false
        }
    }
}
