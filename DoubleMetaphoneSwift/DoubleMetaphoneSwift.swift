//
//  DoubleMetaphoneSwift.swift
//  Pods
//
//  Created by Zebulon Frantzich on 3/11/17.
//
//

import Foundation
import double_metaphone

public class DoubleMetaphoneSwift: NSObject {
    let impl = DoubleMetaphoneImpl()
    
    static let instance = DoubleMetaphoneSwift()
    
    public static func calculate(input: String) -> (String, String)? {
        return instance.calculate(input:input)
    }
    
    private func calculate(input: String) -> (String, String)? {
        
        guard let response = impl.calculate(input as String!), let primary = response[0] as? String, let secondary = response[1] as? String else {
            return nil
        }
        
        return (primary, secondary)
    }
}
 
