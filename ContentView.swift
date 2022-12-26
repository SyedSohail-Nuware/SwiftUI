//
//  ContentView.swift
//  myapp
//
//  Created by syed.sohail on 23/12/22.
//
 
import SwiftUI
import MapKit

struct ContentView: View {
    var body: some View {
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
//            Text("Hello, Sohail")
//                .font(.largeTitle)
//                .foregroundColor(Color.green)
//                .multilineTextAlignment(.trailing)
//                .padding(24.0)
//        }
//        .padding()
//        VStack(alignment: .trailing){
//            Spacer()
//            Image("logo")
////                .padding(.top, 30.0)
//                .resizable()
//                .aspectRatio( contentMode: .fit)
//            Divider()
//            HStack(alignment: .center){
//                VStack {
//                    Text("SOHAIL")
//                        .padding()
//                        .foregroundColor(.white)
//                        .bold()
//                    Text("SSS").padding()
//                }
//
//                Spacer()
//                Text("Ahmed")
//                    .padding()
//                    .foregroundColor(Color.white)
//                    .bold()
//
//
//            }.background(Color.blue)
//            Spacer()
//
//            ColorPicker(/*@START_MENU_TOKEN@*/"Title"/*@END_MENU_TOKEN@*/, selection: /*@START_MENU_TOKEN@*/.constant(.red)/*@END_MENU_TOKEN@*/).brightness(0)
//            Spacer()
//            ZStack{
//                HStack(alignment: .bottom){
//                    Text("SOHAIL")
//                        .font(.title)
//                        .padding()
//                        .foregroundColor(.white)
//                        .bold()
//
//                    Spacer()
//                    Text("Ahmed")
//                        .padding()
//                        .foregroundColor(Color.white)
//                        .bold()
//
//
//                }.background(Color.brown)
//
//                Image("logo")
//                    .resizable()
//                    .aspectRatio( contentMode: .fit)
//
//
//            }
//            Spacer()
//        }
//
//
        
        VStack(){
            MapView()
                .frame(height: 300.0)
            
            CircleImg()
                .padding(.bottom, -130)
                .offset(y: -130)
//            Divider()
            VStack(alignment: .leading){
                
                Text("Tertel Rock")
                    .font(.title)
                HStack {
                    Text("Josa Tree National Park")
                    Spacer()
                    Text("California")
                }.font(.subheadline)
                Divider()
                
                Text("About Tertel Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }.padding()
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
