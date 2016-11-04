//
//  NSMutableAttributedString+HTMLConvert.swift
//  Pods
//
//  Created by Bartosz Tułodziecki on 19/10/2016.
//
//

public extension NSMutableAttributedString {
    
    func toHTML() -> String {
        let parser = AttributtedStringParser()
        var outputString = ""
        
        self.enumerateAttributes(in: NSMakeRange(0, self.length), options:.longestEffectiveRangeNotRequired) { (value, range, stop) in
            let substring = String(self.attributedSubstring(from: range).string)!.htmlSanitized()
            print("* >>\(substring)<< attributes value: \(value) - range: loc \(range.location), len \(range.length)")
            if let tag = parser.tagWith(string: substring, range: range, attributes: value) {
                outputString.append(tag.htmlString())
            }
            else {
                outputString.append(substring)
            }
        }
        
        return "<span style=\"font-family:apple-system, sans-serif; font-size:14px\">\(outputString)</span>"
    }
}
