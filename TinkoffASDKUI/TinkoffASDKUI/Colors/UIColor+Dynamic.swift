//
//  UIColor+Dynamic.swift
//  TinkoffASDKUI
//
//  Created by grisha on 07.12.2020.
//

import UIKit

extension UIColor {
    static func dynamicColor(light: UIColor, dark: UIColor) -> UIColor {
        if #available(iOS 13.0, *) {
            return UIColor(dynamicProvider: {
                $0.userInterfaceStyle == .dark ? dark : light
            })
        }
        return light
    }
}

extension UIColor {
    static var asdk = ASDKColors()
}
struct ASDKColors {}

extension ASDKColors {
    var dynamic: Dynamic {
        return Dynamic()
    }
    
    var yellow: UIColor {
        return UIColor(hex: "#FFDD2D") ?? .clear
    }
    
    var black: UIColor {
        return UIColor(hex: "#333333") ?? .clear
    }
    
    var n3: UIColor {
        return UIColor(hex: "#9299A2") ?? .clear
    }
    
    var n8: UIColor {
        return UIColor(hex: "#428BF9") ?? .clear
    }
    
    var lightGray: UIColor {
        return UIColor(hex: "#F7F7F7") ?? .clear
    }
    
    var darkGray: UIColor {
        return UIColor(hex: "#C7C9CC") ?? .clear
    }
    
    struct Dynamic {
        public struct Button {
            public struct Sbp {
                public var background: UIColor {
                    return UIColor.dynamicColor(light: .black, dark: .white)
                }
                
                public var tint: UIColor {
                    return UIColor.dynamicColor(light: .white, dark: .black)
                }
            }
            
            public var sbp: Sbp {
                return Sbp()
            }
        }
        
        public var button: Button {
            return Button()
        }
    }
}
