//
//  Anchor.swift
//  Pods
//
//  Created by Bartosz Tułodziecki on 24/10/2016.
//
//

open class Anchor: Tag {
    public var name: String = "a"
    open var value: String
    open var range: NSRange
    open var attributes: [TagAttribute]
    
    public var attributedString: NSMutableAttributedString? {
        return NSMutableAttributedString(string: self.value, attributes: [NSUnderlineStyleAttributeName : NSUnderlineStyle.styleSingle.rawValue,
                                                                          NSForegroundColorAttributeName : UIColor.blue])
    }
    
    public required init(value: String, range: NSRange, attributes: [TagAttribute]) {
        self.value = value
        self.range = range
        self.attributes = attributes
    }
}
