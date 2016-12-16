//
//  String.swift
//  SwiftCheckboxDialog
//
//  Created by Kristijan Kontus on 16/12/2016.
//  Copyright © 2016 com.kkontus. All rights reserved.
//

import Foundation

extension String {
    
    static func className(_ aClass: AnyClass) -> String {
        return NSStringFromClass(aClass).components(separatedBy: ".").last!
    }
    
}
