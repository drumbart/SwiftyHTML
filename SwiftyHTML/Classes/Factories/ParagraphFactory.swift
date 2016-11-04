//
//  ParagraphFactory.swift
//  Pods
//
//  Created by Bartosz Tułodziecki on 24/10/2016.
//
//

struct ParagraphFactory: TagGenerating {
    
    func generateTag(content: String, range: NSRange, attributes: [String : Any]) -> Tag? {
        print("should generate Paragraph tag\n")
        return nil
    }
}
