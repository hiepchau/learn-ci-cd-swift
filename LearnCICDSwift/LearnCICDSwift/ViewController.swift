//
//  ViewController.swift
//  LearnCICDSwift
//
//  Created by Hiệp Châu on 30/6/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let productName = ConfigManager.shared.getConfig(withType: .APP_NAME)
        let bundleIdentifier = ConfigManager.shared.getConfig(withType: .APP_BUNDLE_IDENTIFIER)
        let projectVersion = ConfigManager.shared.getConfig(withType: .CURRENT_PROJECT_VERSION)
        let marketingVersion = ConfigManager.shared.getConfig(withType: .MARKETING_VERSION)
        let executableName = ConfigManager.shared.getConfig(withType: .EXECUTABLE_NAME)
        let productModuleName = ConfigManager.shared.getConfig(withType: .PRODUCT_MODULE_NAME)
        let tmnCode = ConfigManager.shared.getConfig(withType: .TMN_CODE)
        
        print("Product Name: \(productName)")
        print("Bundle Identifier: \(bundleIdentifier)")
        print("Project Version: \(projectVersion)")
        print("Marketing Version: \(marketingVersion)")
        print("Executable Name: \(executableName)")
        print("Product Module Name: \(productModuleName)")
        print("tmnCode: \(tmnCode)")
    }
}

