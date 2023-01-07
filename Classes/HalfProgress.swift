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


extension UIButton {
    private func image(withColor color: UIColor) -> UIImage? {
        let rect = CGRect(x: 0.0, y: 0.0, width: 1.0, height: 1.0)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()

        context?.setFillColor(color.cgColor)
        context?.fill(rect)

        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image
    }

    func setBackgroundColor(withColor color: UIColor, for state: UIControl.State) {
        self.setBackgroundImage(image(withColor: color), for: state)
    }
}


extension String {
    //--- getting character by "str[i]"
    subscript(idx: Int) -> String {
        String(self[index(startIndex, offsetBy: idx)])
    }
    
    //--- getting substring by "str[i..<j]"     //--- from 'i' to 'j' position
    subscript(_ range: CountableRange<Int>) -> String {
        let start = index(startIndex, offsetBy: max(0, range.lowerBound))
        let end = index(start, offsetBy: min(self.count - range.lowerBound,
                                             range.upperBound - range.lowerBound))
        return String(self[start..<end])
    }
    
    //--- getting substring by "str[i...]"      //--- from i'th position to end
    subscript(_ range: CountablePartialRangeFrom<Int>) -> String {
        let start = index(startIndex, offsetBy: max(0, range.lowerBound))
        return String(self[start...])
    }
    
    //--- getting substring by "str[...j]"      //--- from first to j'th position
    subscript(range: PartialRangeThrough<Int>) -> SubSequence {
        return self[...index(startIndex, offsetBy: range.upperBound)]
    }
}
