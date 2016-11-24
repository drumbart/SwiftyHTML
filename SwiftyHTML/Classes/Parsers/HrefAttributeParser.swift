//
//  HrefAttributeParser.swift
//  Pods
//
//  Created by Bartek Tułodziecki on 04/11/2016.
//
//

struct HrefAttributeParser: AttributeValueParser {
    
    func parsed(attributes: [String : Any]) -> [TagAttribute] {
        // Generate style attribute if available
        var styleAttributes = StyleAttributeParser().parsed(attributes: attributes)
        
        if let urlValue = attributes[NSLinkAttributeName],
            let url = urlValue as? NSURL,
            let absoluteStr = url.absoluteString,
            let href = SwiftyHTMLConfiguration.hrefClass.init(value:absoluteStr) {
            styleAttributes += [href as! TagAttribute]
        }
        
        return styleAttributes
    }
}
