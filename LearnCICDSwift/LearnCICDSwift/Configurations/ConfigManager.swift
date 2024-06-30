//
//  ConfigManager.swift
//  LearnCICDSwift
//
//  Created by Hiệp Châu on 30/6/24.
//

import Foundation

enum ConfigType: String {
    case APP_NAME                           = "APP_NAME"
    case APP_BUNDLE_IDENTIFIER              = "APP_BUNDLE_IDENTIFIER"
    case CURRENT_PROJECT_VERSION            = "CURRENT_PROJECT_VERSION"
    case MARKETING_VERSION                  = "MARKETING_VERSION"
    case EXECUTABLE_NAME                    = "EXECUTABLE_NAME"
    case PRODUCT_MODULE_NAME                = "PRODUCT_MODULE_NAME"
    case TMN_CODE                           = "TMN_CODE"
}

struct ConfigManager {
    static let shared: ConfigManager = ConfigManager()
    
    func getConfig(withType type: ConfigType) -> String {
        return infoForKey(type.rawValue)
    }
    
    private func infoForKey(_ key: String) -> String {
        return (Bundle.main.infoDictionary?[key] as? String) ?? ""
    }
}

