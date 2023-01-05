//
//  HalfProgress.swift
//  HalfProgress
//
//  Created by BJIT on 6/12/22.
//

import Foundation
import UIKit

extension UIView{
    
    public func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
    
    // gives the horizontal gradient-layer on background for any view (for example: uiview, uibutton, uilabel) [but, you can't update the gradient-layer later]
    public func applyHorizontalGradient(colors: [UIColor], cornerRadius: CGFloat? = nil) {
        
        let gradient = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = colors.map { $0.cgColor }
        gradient.startPoint = CGPoint(x: 0, y: 0.5)
        gradient.endPoint = CGPoint(x: 1, y: 0.5)
        if let radius = cornerRadius {
            gradient.cornerRadius = radius
        }
        layer.insertSublayer(gradient, at: 0)
    }
    
    // gives the vertical gradient-layer on background for any view (for example: uiview, uibutton, uilabel) [but, can't you update the gradient-layer later]
    public func applyVerticalGradient(colors: [UIColor], cornerRadius: CGFloat? = nil) {
        
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.frame = self.bounds
        gradient.colors = colors.map { $0.cgColor }
        if let radius = cornerRadius {
            gradient.cornerRadius = radius
        }
        self.layer.insertSublayer(gradient, at: 0)
    }
}
