//
//  ListingDetailView.swift
//  AirbnbTutorial
//
//  Created by Qjshs Swaadffr on 4/20/25.
//

import SwiftUI
import MapKit

struct ListingDetailView: View {

    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ScrollView{
            ZStack(alignment: .topLeading) {
                ListingImageCarouselView()
                    .frame(height: 320)
                
                Button{
                    dismiss()
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.black)
                        .background{
                            Circle()
                                .fill(.white)
                                .frame(width: 32, height: 32)
                                
                        }
                        .padding(32)
                }
                
            }
            
            VStack(alignment: .leading, spacing: 8){
                Text("Miami Villa")
                    .font(.title)
                    .fontWeight(.semibold)
                
                VStack(alignment: .leading){
                    HStack(spacing: 2){
                        Image(systemName: "star.fill")
                        
                        Text("4.86")
                        
                        Text(" - ")
                        
                        Text("28 reviews")
                            .underline()
                            .fontWeight(.semibold)
                    }
                    
                    .foregroundStyle(.black )
                    
                    Text("Miami, florida")
                }
                .font(.caption)
            }
            .padding(.leading)
            .frame(maxWidth: .infinity,alignment: .leading)
            
            Divider()
            
            HStack{
                VStack(alignment: .leading, spacing: 4){
                    Text("Entire villa hosted by Elon Musk")
                        .font(.headline)
                        .frame(width: 250, alignment: .leading)
                    
                    
                    HStack(spacing: 2){
                        Text("4 guests -")
                        Text("4 bedrooms -")
                        Text("4 beds -")
                        Text("3 baths")
                    }
                    .font(.caption)
                }
                .frame(width: 300, alignment: .leading)
                
                Spacer()
                
                Image("male-profile-photo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
            }
            .padding()
            
            Divider()
            
            //listing feature
            VStack(alignment: .leading, spacing: 16) {
                ForEach(0 ..< 2){ feature in
                    HStack(spacing: 12){
                        Image(systemName: "medal")
                        
                        VStack(alignment: .leading){
                            Text("Superhost")
                                .font(.footnote)
                                .fontWeight(.semibold)
                            
                            Text("Superhosts are experience, highly rated hosts who are commied to providing great stars for guests")
                                .font(.caption)
                                .foregroundStyle(.gray)
                        }
                        Spacer()
                    }
                }
            }

            .padding()
            
            Divider()
            //bedroomsview
            VStack(alignment: .leading, spacing: 16){
                Text("Where you'll sleep")
                    .font(.headline)
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 16){
                        ForEach(1 ..< 5){ bedroom in
                            VStack{
                                Image(systemName: "bed.double")
                                
                                Text("bedroom \(bedroom)")
                            }
                            .frame(width: 132,height: 100)
                            .overlay{
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(lineWidth: 1)
                                    .foregroundStyle(.gray)
                            }
                        }
                    }
                }
                .scrollTargetBehavior(.paging)
            }
            .padding()
            
            Divider()
            //listing amanities
            VStack(alignment: .leading, spacing: 16){
                Text("what this place offers")
                    .font(.headline)
                
                ForEach(0 ..< 5) { feature in
                    HStack{
                        Image(systemName: "wifi")
                            .frame(width: 32)
                        
                        Text("wifi")
                            .font(.footnote)
                        Spacer()
                        
                        
                    }
                }
            }
            .padding()
            
            Divider()
            
            VStack(alignment: .leading, spacing: 16){
                Text("Where you'll be")
                    .font(.headline)
                
                Map()
                    .frame(height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
            }
            .padding()
        }
        .toolbar(.hidden, for: .tabBar)
        
        .ignoresSafeArea()
        .padding(.bottom, 72)
        .overlay(alignment: .bottom){
            VStack {
                Divider()
                    .padding(.bottom)
                
                HStack{
                    VStack(alignment: .leading){
                        Text("$500")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        
                        Text("Total before Texas ")
                        
                        Text("Oct 15 ~ 20")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .underline()
                    }
                    
                    Spacer()
                    
                    Button{
                        
                    } label:{
                        Text("Reserve")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 140, height: 40)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    }
                        
                }
                .padding(.horizontal,  32)
            }
            .background(.white)
        }
    }
}

#Preview {
    ListingDetailView()
}
