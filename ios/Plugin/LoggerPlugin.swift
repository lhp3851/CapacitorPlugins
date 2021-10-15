//
//  LoggerPlugin.swift
//  Plugin
//
//  Created by sumian on 2021/10/14.
//  Copyright © 2021 Max Lynch. All rights reserved.
//

import UIKit

@objc public class LoggerPlugin: NSObject {

    @objc public func log(params: [AnyHashable: Any]) {
        print("params:\(params)")
    }
    
}
