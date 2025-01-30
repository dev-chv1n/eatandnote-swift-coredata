//
//  SideMenu.swift

import SwiftUI

struct SideMenu: View {
    @State private var showingAddView = false
    @State var changPage : Bool = false
    
    var body: some View {
        VStack {
            
            LogoTopBar()
            
            Divider()
                .frame(width: 200, height: 2)
                .background(Color.white)
                .padding(.horizontal, 16)
            
            Button {
                showingAddView.toggle()
            } label: {
                Label("Food Menu", systemImage: "list.bullet")
            }
            .padding(10)
            .background(.white)
            .foregroundColor(.orange)
            .clipShape(Capsule())
            .sheet(isPresented: $showingAddView){Menu()}
            Divider()
                .frame(width: 200, height: 2)
                .background(Color.white)
                .padding(.horizontal, 16)
            
            
            NavigationLink(destination: AddMenu(),label: {
                Label("", systemImage: "plus")
                    .font(.title3)
                    .padding(.trailing,-10)
                Text("Add Food")
            })
            .padding(10)
            .foregroundColor(.orange)
            
            Spacer()
        }
        .padding(32)
        .background(Color.white)
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct SideMenu_Previews: PreviewProvider {
  static var previews: some View {
    SideMenu()
  }
}

