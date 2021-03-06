//
//  TagAttribute.swift
//  Pods
//
//  Created by Bartosz Tułodziecki on 19/10/2016.
//
//

public protocol TagAttribute: HTMLStringRepresentable {
    var name: String { get }
    var value: String { get }
    
    init?(value: String)
    func htmlString() -> String
}

extension TagAttribute {
    
    public func htmlString() -> String {
        return self.name + "=" + "\"\(self.value)\""
    }
}
