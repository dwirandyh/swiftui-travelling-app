//
//  HomeView.swift
//  Travelling APp
//
//  Created by Dwi Randy Herdinanto on 21/02/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(alignment: HorizontalAlignment.leading, spacing: 12){
            HStack{
                Button(action: {}) {
                    Image("menu").renderingMode(.original)
                }
                
                Spacer()
                
                Button(action: {}) {
                    Image("Profile").renderingMode(.original)
                }
            }
            
            Text("Find more").fontWeight(.heavy).font(.largeTitle).padding(.top, 15)
            
            HStack{
                Button(action: {}) {
                    Text("Experience").fontWeight(.heavy).foregroundColor(.black)
                }
                
                Spacer()
                
                Button(action: {}) {
                    Text("Adventures").foregroundColor(.gray)
                }
                
                Spacer()
                
                Button(action:{}){
                    Text("Activities").foregroundColor(.gray)
                }
            }.padding([.top, .bottom], 15)
            
            MiddleView()
            
            BottomView()
            
            Spacer()
        }.padding()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct BottomView: View {
    var body: some View{
        VStack{
            HStack{
                Text("What you want ?").fontWeight(.heavy)
                Spacer()
                Button(action: {}){
                    Text("View All").foregroundColor(.gray)
                }
            }.padding([.top, .bottom], 15)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 35){
                    Button(action:{}){
                        VStack(spacing: 8){
                            Image("mcard1").renderingMode(.original)
                            Text("Hiking").foregroundColor(.gray)
                        }
                    }
                    
                    Button(action:{}){
                        VStack(spacing: 8){
                            Image("mcard2").renderingMode(.original)
                            Text("Ski").foregroundColor(.gray)
                        }
                    }
                    
                    Button(action:{}){
                        VStack(spacing: 8){
                            Image("mcard1").renderingMode(.original)
                            Text("Sky Diving").foregroundColor(.gray)
                        }
                    }
                    
                    Button(action:{}){
                        VStack(spacing: 8){
                            Image("mcard1").renderingMode(.original)
                            Text("Skate Board").foregroundColor(.gray)
                        }
                    }
                }
            }.padding(.leading, 20)
                .padding([.top, .bottom], 15)
        }
    }
}

struct MiddleView : View {
    
    @State var show = false
    
    var body: some View{
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 15){
                VStack(alignment: HorizontalAlignment.leading, spacing: 5){
                    Button(action: {
                        
                    }){
                        Image("Card1").renderingMode(.original)
                    }
                    
                    Text("Fishing Time").fontWeight(.heavy)
                    
                    HStack(spacing: 5){
                        Image("map").renderingMode(.original)
                        Text("Vancouver, CA").foregroundColor(.gray)
                    }
                }
                
                VStack(alignment: HorizontalAlignment.leading, spacing: 5){
                    Button(action: {
                        self.show.toggle()
                    }){
                        Image("Card2").renderingMode(.original)
                    }
                    
                    Text("Forest Camping").fontWeight(.heavy)
                    
                    HStack(spacing: 5){
                        Image("map").renderingMode(.original)
                        Text("Klojen, ID").foregroundColor(.gray)
                    }
                }
            }
        }.sheet(isPresented: $show) {
            DetailView()
        }
    }
}
