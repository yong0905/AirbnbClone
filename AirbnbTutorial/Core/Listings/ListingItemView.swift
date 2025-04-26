//
//  ListingItemView.swift
//  AirbnbTutorial
//
//  Created by 강 on 4/19/25.
//

import SwiftUI

struct ListingItemView: View {
    
    var images = [
        "listing-1",
        "listing-2",
        "listing-3",
        "listing-4",
    ]
    
    var body: some View {
        VStack(spacing: 8){
            //images
            ListingImageCarouselView()
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            //listing details
            
            HStack(alignment: .top){
                //details 상세 내용
                VStack(alignment: .leading) {
                    Text("Miami, Florida")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    HStack(spacing: 4){
                        Text("$567")
                            .fontWeight(.semibold)
                        Text("night")
                        
                    }
                    .foregroundStyle(.black)
                }
                
                Spacer()
                //rating 점수
                
                HStack{
                    Image(systemName: "star.fill")
                    
                    Text("4.86")
                        
                }
                .foregroundStyle(.black)
                 
            }
            
            .font(.footnote)
        }
    }
}

#Preview {
    ListingItemView()
}
