//
//  TopBar.swift
//  EatAndNote
//
//  Created by MAC923_40 on 16/2/2566 BE.
//


import SwiftUI

struct LogoTopBar: View {
    
    
    var body: some View {
        HStack{
            Image("eatandnote3-or-logo")
                .resizable()
                .frame(width: 160 ,height: 40)
            
        }
        .padding()
        .foregroundColor(Color.orange)
        .font(.system(size: 28))
    }
}




struct Top_Previews: PreviewProvider {
    static var previews: some View {
        LogoTopBar()
    }
}



