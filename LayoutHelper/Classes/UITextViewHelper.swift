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
    @IBInspectable var iPhone11: CGFloat = 0.0 {
        didSet { deviceFont(.i6_1Inch,value:iPhone11) }
    }
    @IBInspectable var iPhone11Max: CGFloat = 0.0 {
        didSet { deviceFont(.i6_5Inch,value:iPhone11Max) }
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
