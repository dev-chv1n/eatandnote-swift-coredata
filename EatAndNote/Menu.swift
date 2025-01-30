//
//  Menu.swift
//  EatAndNote
//
//  Created by MAC923_40 on 16/2/2566 BE.
//


import SwiftUI


struct Menu: View {

    @Environment(\.managedObjectContext) var managedObjectContext
    @State private var showingAddView = false
    @State private var showDetails = false
    @State private var selectedItem = foodData[0]
    @State private var backButton = false

    
    var body: some View {
        NavigationView {
            ZStack {

                VStack {
                        VStack(spacing: 4){
                            Text("Food Menu")
                                .font(.title2)
                                .fontWeight(.semibold)

                    }
                    .accentColor(.orange)
                    .font(.headline)
                    .padding(.top,70)
                    .padding(.horizontal)

                    ScrollView(.vertical, showsIndicators: false) {
                        VStack {
                            ForEach(foodData, id: \.self) { item in
                                Button(action: {
                                    showDetails = true
                                    selectedItem = item
                                }, label: {
                                    FoodItemView(item: item)
                                })
                            }
                            .background(
                            NavigationLink(
                                destination: FoodDetails(food : selectedItem)
                                    .navigationBarBackButtonHidden(false), isActive: $showDetails) {
                                    EmptyView()
                                }
                            )
                        }.padding()
                    }
                    Spacer()
                }
            }

            .edgesIgnoringSafeArea(.all)
        }
        .accentColor(.orange)
    }
}

struct FoodItemView: View {
    @Environment(\.managedObjectContext) var managedObjectContext
    @Environment(\.dismiss) var dismiss
    var item: Foods
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            HStack(spacing: 20) {
                Image(item.image)
                    .resizable()
                    .scaledToFill()
                   // .clipShape(Circle())
                    .cornerRadius(30)
                    .frame(width: 80, height: 80)
                    .padding(9)
                    .shadow(color: Color.black.opacity(0.2), radius: 3 , x:0 ,y:3)

                VStack(alignment: .leading) {
                    Text(item.name)
                        .font(.system(size: 16, weight: .bold))

                        .offset(y:-8)
                        .foregroundColor(CustomColor.myOrenge)


                    HStack{
                        VStack{
                            Text("Carb")
                                .font(.system(size: 15))
                                .fontWeight(.semibold)


                            Text("\(item.carb)")
                                .font(.system(size: 15))
                                .fontWeight(.light)

                        }
                        VStack{
                            Text("Protiens")
                                .font(.system(size: 15))
                                .fontWeight(.semibold)


                            Text("\(item.protien)")
                                .font(.system(size: 15))
                                .fontWeight(.light)

                        }
                        .padding(.leading,10)
                        VStack{
                            Text("Fats")
                                .font(.system(size: 15))
                                .fontWeight(.semibold)
                            


                            Text("\(item.fats)")
                                .font(.system(size: 15))
                                .fontWeight(.light)

                        }
                        .padding(.leading,10)
                    }.foregroundColor(Color.gray)
                }
                .padding(.trailing)


               

            }
        }
        .background(Color.white)
        .cornerRadius(30)
        .padding(.horizontal, 0)
        .padding(.vertical,5)



    }
}

struct Menu_Previews: PreviewProvider {
    static var previews: some View {
        Menu()
    }
}

