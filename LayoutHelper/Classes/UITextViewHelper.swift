//  UITextViewHelper.swift
//  Layout Helper
//
//  Created by Kuldeep Tanwar on 4/15/19.
//  Copyright © 2019 Kuldeep Tanwar. All rights reserved.
import UIKit

@IBDesignable class UITextViewHelper : UITextView {
    
    @IBInspectable var iPhoneSE: CGFloat = 0.0 {
        didSet { deviceFont(.i4Inch,value:iPhoneSE) }
    }
    @IBInspectable var iPhone8: CGFloat = 0.0 {
        didSet { deviceFont(.i4_7Inch,value:iPhone8) }
    }
    @IBInspectable var iPhone8Plus: CGFloat = 0.0 {
        didSet { deviceFont(.i5_5Inch,value:iPhone8Plus) }
    }
    
    @IBInspectable var iPhone11Pro: CGFloat = 0.0 {
        didSet { deviceFont(.i5_8Inch,value:iPhone11Pro) }
    }
    
    @IBInspectable var iPhone12Mini: CGFloat = 0.0 {
        didSet { deviceFont(.i5_4Inch,value:iPhone12Mini) }
    }
    
    @IBInspectable var iPhone12: CGFloat = 0.0 {
        didSet { deviceFont(.i6_1Inch,value:iPhone12) }
    }
    @IBInspectable var iPhone12Max: CGFloat = 0.0 {
        didSet { deviceFont(.i6_7Inch ,value:iPhone12Max) }
    }
    
    // Helpers
    open func deviceFont(_ device:UIDeviceSize,value:CGFloat) {
        if deviceSize == device {
            if let font = font {
                self.font = UIFont(descriptor: font.fontDescriptor, size: value)
                layoutIfNeeded()
            }
        }
    }
}
