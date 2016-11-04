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
            print("attributes value: \(value) - range: loc \(range.location), len \(range.length)")
            if let tag = parser.tagWith(string: String(self.attributedSubstring(from: range).string)!.htmlSanitized(), range: range, attributes: value) {
                outputString.append(tag.htmlString())
            }
        }
        
        return outputString
    }
}
