//
//  ContentView.swift
//  SebastianCard
//
//  Created by Sebas's Mac on 2/09/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.systemTeal)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("zombie")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150.0, height: 150.0)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                
                Text("Sebastian Güiza")
                    .font(Font.custom("QwitcherGrypen-Bold", size: 80))
                    .bold()
                    .foregroundColor(.white)
                Text("Junior iOS Developer")
                    .foregroundColor(.white)
                    .font(Font.custom("Black", size: 30))
                    .bold()
                Divider()
                InfoView(text: "+57 300 123 4567", imageName: "phone.fill")
                InfoView(text: "sebas@zombie.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View{
        ContentView()
    }
}


