//
//  DetailView.swift
//  Travelling APp
//
//  Created by Dwi Randy Herdinanto on 21/02/20.
//  Copyright © 2020 dwirandyh.com. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        VStack{
            Image("topbg").resizable().frame(height: 500).aspectRatio(1.35, contentMode: .fill)
                .frame(width: UIScreen.main.bounds.width, height: 500).offset(y: -200).padding(.bottom, -200)
            
            GeometryReader{geo in
                VStack(){
                    DetailTop()
                    
                    DetailMiddle()
                    
                    DetailBottom()
                    
                    Spacer()
                }
            }.background(Color.white)
                .clipShape(Rounded())
                .padding(.top, -75)
            
            Spacer()
        }
    }
}

struct DetailTop: View {
    var body: some View{
        VStack(alignment: HorizontalAlignment.leading, spacing: 10) {
            HStack{
                VStack{
                    Text("Forest").fontWeight(.heavy).font(.largeTitle)
                    Text("Camping").fontWeight(.heavy).font(.largeTitle)
                }
                
                Spacer()
                
                Text("$229").foregroundColor(Color("bg")).font(.largeTitle)
            }
        }.padding()
    }
}

struct DetailMiddle : View {
    var body: some View {
        VStack(alignment: HorizontalAlignment.leading, spacing: 10){
            HStack(spacing: 5){
                Image("map").renderingMode(.original)
                Text("Kecamatan Klojen").foregroundColor(Color("bg"))
                
                Spacer()
            }
            
            HStack{
                ForEach(0..<5){_ in
                    Image(systemName: "star.fill").font(.body).foregroundColor(.yellow)
                }
            }
            
            Text("People").fontWeight(.heavy)
            
            Text("Number of People In Your Group").foregroundColor(.gray)
            
            HStack(spacing: 6){
                ForEach(0..<5){i in
                    Button(action:{}){
                        Text("\(i + 1)").foregroundColor(.white).padding(20)
                    }.background(i == 0 ? Color("bg") : Color.gray)
                    .cornerRadius(8)
                }
            }
            
        }.padding(.horizontal, 15)
    }
}

struct DetailBottom: View {
    var body: some View{
        VStack(alignment: HorizontalAlignment.leading, spacing: 10) {
            Text("Description").fontWeight(.heavy)
            Text("Forest Camping Experience and Meanings Key elements of camping experience include nature, social interaction, and comfort/convenience. The most common associated meanings are restoration, family functioning")
            
            HStack(spacing: 8){
                Button(action:{}){
                    Image("Save").renderingMode(.original)
                }
                
                Button(action:{}){
                    HStack{
                        Text("Book You Experience")
                        Image("arrow").renderingMode(.original)
                    }.foregroundColor(.white)
                    .padding()
                }.background(Color("bg"))
                .cornerRadius(8)
            }
        }.padding(.top, 15)
    }
}

struct Rounded: Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft, .topRight], cornerRadii: CGSize(width: 40, height: 40))
        return Path(path.cgPath)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
