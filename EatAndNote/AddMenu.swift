//
//  AddMenu.swift



import SwiftUI

struct AddMenu: View {
    
    @Environment(\.dismiss) var dismiss
    @Environment(\.managedObjectContext) var managedObjectContext
    @State private var name = ""
    @State private var calories: Double = 0
    @State private var carb: Double = 0
    @State private var protien: Double = 0
    @State private var fats: Double = 0
    
    var body: some View {
        ZStack{
            VStack{
                HStack{
                    

                        Text("Add Food")
                            .font(.title2)
                            .fontWeight(.semibold)
                        
                }
                .accentColor(.orange)
                .font(.headline)
                .padding(.top,60)
                .padding(.bottom,20)
                .padding(.horizontal)
                
                Spacer()
                VStack(alignment: .leading){
                    Text("Food name")
                        .foregroundColor(Color.black)
                        .padding(.leading,10)
                    TextField("Food Name", text: $name)
                        .padding()
                        .background(Color.gray.opacity(0.1).cornerRadius(10))
                    

                    
                    Text("Kcal")
                        .foregroundColor(Color.black)
                        .padding(.leading,10)
                    TextField("Kcal" , value: $calories, format: .number)
                        .padding()
                        .background(Color.gray.opacity(0.1).cornerRadius(10))
                    
                    
                    
                    HStack{
                        
                        VStack(alignment: .leading){
                            Text("Carb")
                                .foregroundColor(Color.black)
                                .padding(.leading,10)
                            TextField("Carb", value: $carb, format: .number)
                                
                                .padding()
                                .background(Color.gray.opacity(0.1).cornerRadius(10))
                        }
                        VStack(alignment: .leading){
                            Text("Protien")
                                .foregroundColor(Color.black)
                                .padding(.leading,10)
                            TextField("Protien", value: $protien, format: .number)
                                
                                .padding()
                                .background(Color.gray.opacity(0.1).cornerRadius(10))
                        }
                        VStack(alignment: .leading){
                            Text("Fats")
                                .foregroundColor(Color.black)
                                .padding(.leading,10)
                            TextField("Fats", value: $fats, format: .number)
                                
                                .padding()
                                .background(Color.gray.opacity(0.1).cornerRadius(10))
                        }
                        
                    }.padding(.vertical,15)
                    
                    Button() {

                       DataController().addFood(name: name, calories: calories, carb: carb, protien: protien, fats: fats, context: managedObjectContext)
                        dismiss()
                    }label: {
                        Label("", systemImage: "plus")
                            .foregroundColor(.white)
                            .font(.title3)
                            .padding(.trailing,-10)
                        
                        Text("Add")
                            .foregroundColor(.white)

                    }
                    .padding(10)
                    .background(.orange)
                    .foregroundColor(.white)
                    .clipShape(Capsule())
                    
                    
                    
                    Spacer()
                }.padding(.horizontal,20)
                
                
            }
            
        }.edgesIgnoringSafeArea(.all)
    }
}

struct AddMenu_Previews: PreviewProvider {
    static var previews: some View {
        AddMenu()
    }
}

