//
//  Editfood.swift


import SwiftUI

struct EditFood: View {
    @Environment(\.managedObjectContext) var managedObjectContext
    @Environment(\.dismiss) var dismiss
    
    var food: FetchedResults<Food>.Element
    
    @State private var name = ""
    @State private var calories: Double = 0
    @State private var carb: Double = 0
    @State private var protien: Double = 0
    @State private var fats: Double = 0
    
    var body: some View {
        ZStack{
            VStack{
                HStack{
                    
                    
                    Text("Edit")
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
                        .onAppear{
                            name = food.name!
                            calories = food.calories
                            carb = food.carb
                            protien = food.protien
                            fats = food.fats
                        }
                        .padding()
                        .background(Color.gray.opacity(0.1).cornerRadius(10))
                    
                    //                    Text("Kcal: \(Int(calories))")
                    //                    Slider(value: $calories, in: 0...1000, step: 10)
                    
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
                        DataController().editFood(food: food, name: name, calories: calories,carb: carb,protien: protien,fats: fats, context: managedObjectContext)
                        dismiss()
                    }label: {
                        Label("", systemImage: "pencil")
                            .foregroundColor(.white)
                            .font(.title3)
                            .padding(.trailing,-10)
                        
                        Text("Edit")
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
