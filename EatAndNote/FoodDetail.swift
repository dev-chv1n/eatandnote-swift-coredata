//
//  FoodDetail.swift
//  EatAndNote
//
//  Created by MAC923_40 on 16/2/2566 BE.



import SwiftUI
 
struct FoodDetails: View {
    
    @Environment(\.presentationMode) var presentationMode
    @State var food: Foods = foodData[0]
    
    var body: some View {
        VStack(alignment: .center) {
           
            VStack {
                Text(food.name)
                    .foregroundColor(.black)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.horizontal)
                    
            }
            
            Header(image: food.image)
            VStack(alignment: .center) {
                
                    VStack(alignment: .center) {
                        
                        
                        HStack{
                            Text("KCal :")
                                .foregroundColor(.primary)
                                .font(.title)
                                .fontWeight(.bold)
                                .padding(.vertical, 10)
                            Text("\(food.kcal)")
                                .foregroundColor(.primary)
                                .font(.title)
                                .fontWeight(.regular)
                                
                        }.padding(.top, 30)
                       
                        HStack{
                            
                            VStack{
                                Text("Carb")
                                    .font(.title3)
                                    .fontWeight(.semibold)
                                    
                                Text("\(food.carb)")
                                    .font(.title3)
                                    .fontWeight(.light)
                                    .padding(.bottom ,30)
                            }
                            
                            VStack{
                                Text("Protiens")
                                    .font(.title3)
                                    .fontWeight(.semibold)
                                    
                                Text("\(food.protien)")
                                    .font(.title3)
                                    .fontWeight(.light)
                                    .padding(.bottom ,30)
                            }
                            .padding(.leading,55)
                            .offset(x:6)
                            
                            
                            VStack{
                                Text("Fats")
                                    .font(.title3)
                                    .fontWeight(.semibold)
                                    
                                Text("\(food.fats)")
                                    .font(.title3)
                                    .fontWeight(.light)
                                    .padding(.bottom ,30)
                            }.padding(.leading,55)
                        }

                        ScrollView(.vertical, showsIndicators: false) {
                            
                                Text("Ingredients")
                                    .fontWeight(.medium)
                                    .padding(.bottom,10)
                            VStack(alignment: .leading){
                                Text(food.ingredients)
                                    .foregroundColor(.gray)
                                    .fontWeight(.light)
                                    .padding(.bottom,20)
                            }
                                
                                Text("Method")
                                    .fontWeight(.medium)
                                    .padding(.bottom,10)
                                 
                            VStack(alignment: .leading) {
                                Text(food.step)
                                        .foregroundColor(.gray)
                                    .fontWeight(.light)
                            }
                                
                            
                            
                                
                       
                        }
                        .padding(.horizontal,20)
                        
                     
                }
            }
           
            
            
        }
        
       
    }
}
 

 

 
struct Header: View {
    @State var food: Foods = foodData[0]
    var image: String
    var body: some View {
        ZStack(alignment: .bottom) {

            
            Image(image)
                .resizable()
                .scaledToFill()
                .frame(width: 340 , height: 200)
                .cornerRadius(45)
                .shadow(color: Color.black.opacity(0.3), radius: 10 , x:0 ,y:10)

            
                
            
        }
    }
}
 
struct DessertDetails_Previews: PreviewProvider {
    static var previews: some View {
        FoodDetails()
    }
}

