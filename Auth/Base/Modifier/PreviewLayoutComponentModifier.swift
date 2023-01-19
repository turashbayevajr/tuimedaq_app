//
//  PreviewLayoutComponentModifier.swift
//  Auth
//
//  Created by Ажар Турашбаева on 18.01.2023.
//

import SwiftUI

struct PreviewLayoutComponentModifier: ViewModifier{
   
    let name: String
    
    func body(content: Content) -> some View {
        
        content
            .previewLayout(.sizeThatFits)
            .previewDisplayName(name)
            .padding()
    }
}

extension View{
    
    func preview(with name: String) -> some View{
        self.modifier(PreviewLayoutComponentModifier(name: name))
    }
}
