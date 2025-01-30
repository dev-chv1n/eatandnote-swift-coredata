//
//  FirstPage.swift
//  Eatandnote


import SwiftUI
import CoreData
 
struct CustomColor {
    static let myOrenge = Color("myOrenge")
    static let myOrenge2 = Color("myOrenge2")
    static let myYellow = Color("myYellow")
    static let myGray = Color("myGray")
    static let myTran = Color("myTran")
    static let myBlack = Color("myBlack")
}

struct FirstPage: View {
    @Environment(\.managedObjectContext) var managedObjContext
    @FetchRequest(sortDescriptors: [SortDescriptor(\.name, order: .reverse)]) var food: FetchedResults<Food>
    @State private var showingAddView = false
    @State private var showMenu: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack{
                
                
                VStack{
                    LogoTopBar()
                        .padding(.bottom,-55)
                        .offset(x:-100,y: -55)

                ZStack{
                    RoundedRectangle(cornerRadius: 50)
                        .fill(LinearGradient(gradient: Gradient(colors: [CustomColor.myOrenge, CustomColor.myYellow]), startPoint: .topLeading, endPoint: .bottomTrailing))
                        .frame(height: 250)
                        .shadow(color: .black.opacity(0.3), radius: 4,x: 0,y:2)
                    
                    VStack{
                        HStack{
                            Text("KCal :")
                                .fontWeight(.bold)
                                .foregroundColor(Color.white)
                                .frame(alignment: .center)
                                .font(.system(size: 38))
                            Text("\(Int(totalCaloriesToday()))")
                                .foregroundColor(Color.white)
                                .frame(alignment: .center)
                                .font(.system(size: 38))
                        }
                        .padding(.bottom)
                        
                        HStack{
                            
                            VStack{
                                Text("Carb")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .frame(alignment: .center)
                                    .font(.system(size: 18))
                                Text("\(Int(totalCarb()))")
                                
                                    .foregroundColor(Color.white)
                                    .frame(alignment: .center)
                                    .font(.system(size: 20))
                            }
                            
                            VStack{
                                Text("Protien")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .frame(alignment: .center)
                                    .font(.system(size: 18))
                                Text("\(Int(totalProtien()))")
                                
                                    .foregroundColor(Color.white)
                                    .frame(alignment: .center)
                                    .font(.system(size: 20))
                            }
                            .padding(.horizontal,50)
                            
                            
                            VStack{
                                Text("Fats")
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.white)
                                    .frame(alignment: .center)
                                    .font(.system(size: 18))
                                Text("\(Int(totalFats()))")
                                    .foregroundColor(Color.white)
                                    .frame(alignment: .center)
                                    .font(.system(size: 20))
                            }
                            
                        }
                        .padding(.bottom,20)
                        
                        NavigationLink(destination: AddMenu(),label: {
                            Label("", systemImage: "plus.circle")
                                .foregroundColor(.orange)
                                .font(.title3)
                                .padding(.trailing,-10)
                                
                            Text("Add Food")
                                .foregroundColor(.orange)
                        })
                        .padding(10)
                        .background(.white)
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                        
                    }
                }
                
                .padding(.horizontal)
                
                ZStack{
                    RoundedRectangle(cornerRadius: 50)
                        .edgesIgnoringSafeArea(.all)
                        .opacity(0)
                        
                    
                    VStack(alignment: .center) {

                        List {
                            ForEach(food) { food in
                                NavigationLink(destination: EditFood(food: food)) {
                                    HStack {
                                        VStack(alignment: .leading , spacing: 6) {
                                            Text(food.name!)
                                                .bold()

                                            HStack{
                                                
                                                    Text("Kcal: ").foregroundColor(.gray)
                                                    +
                                                    Text("\(Int(food.calories))")
                                                                           
                                                
                                                    Text("Carb: ").foregroundColor(.gray)
                                                    +
                                                    Text("\(Int(food.carb))")
                                                
                                                
                                                    Text("Protien: ").foregroundColor(.gray)
                                                    +
                                                    Text("\(Int(food.protien))")
   
                                                
                                                    Text("Fats: ").foregroundColor(.gray)
                                                    +
                                                    Text("\(Int(food.fats))")
                                                
                                            }.font(.system(size: 12))
                                            
                                            
                                        }
                                        Spacer()
                                        
                                    }
                                }
                            }
                            .onDelete(perform: deleteFood)
                            
                        }
                        .listStyle(.plain)
                        
                        
                        
                    }
                    .padding(.top,20)
                    
                    
                 
                    
                }
                }
                
                
                GeometryReader { _ in
                  
                  HStack {
                    Spacer()
                    
                    SideMenu()
                      .offset(x: showMenu ? 0 : UIScreen.main.bounds.width)
                      .animation(.easeInOut(duration: 0.4), value: showMenu)
                  }
                  
                }
                .background(Color.black.opacity(showMenu ? 0.5 : 0))
                
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {

              Button {
                self.showMenu.toggle()
              } label: {

                if showMenu {

                  Image(systemName: "xmark")
                    .font(.title2)
                    .foregroundColor(.orange)

                } else {
                  Image(systemName: "text.justify.right")
                    .font(.title2)
                    .foregroundColor(.orange)
                }

              }
            }
            
            
        }
        .navigationViewStyle(.stack)
        .accentColor(.orange)
    }
    
    
    
   
    private func deleteFood(offsets: IndexSet) {
        withAnimation {
            offsets.map { food[$0] }
            .forEach(managedObjContext.delete)
            
            
            DataController().save(context: managedObjContext)
        }
    }
    
    
    private func totalCaloriesToday() -> Double {
        var caloriesToday : Double = 0
        
        for item in food {
            
                caloriesToday += item.calories
            
        }
        print("Calories: \(caloriesToday)")
        return caloriesToday
    }
    
    private func totalCarb() -> Double {
        var carbToday : Double = 0
        for item in food {
            
                carbToday += item.carb
            
        }
        print("Carb: \(carbToday)")
        return carbToday
    }
    
    private func totalProtien() -> Double {
        var protienToday : Double = 0
        for item in food {
            
                protienToday += item.protien
            
        }
        print("Protien: \(protienToday)")
        return protienToday
    }
    
    private func totalFats() -> Double {
        var fatsToday : Double = 0
        for item in food {
            
                fatsToday += item.fats
            
        }
        print("Fats: \(fatsToday)")
        return fatsToday
    }
    
}




struct FirstPage_Previews: PreviewProvider {
    static var previews: some View {
        FirstPage()
    }
}
