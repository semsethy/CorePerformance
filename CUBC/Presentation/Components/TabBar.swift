//
//  TabBar.swift
//  Weather
//
//  Created by Dara To on 2022-06-13.
//

import SwiftUI

struct TabBar: View {
    var action: () -> Void
    
    var body: some View {
        ZStack {
            // MARK: Arc Shape
            Arc()
                .fill(Color(UIColor(white: 1, alpha: 1)))
                .frame(height: 78)
                .overlay {
                    HStack {
                        // MARK: Expand Button
                        Button {
                            action()
                        } label: {
                            VStack(spacing: 5) {
                                Image(systemName: "house")
                                    .frame(width: 30, height: 30)
                                Text("Home")
                                    .font(.system(size: 13))
                            }
                        }
                        
                        Spacer()
                        
                        // MARK: Navigation Button
                        NavigationLink {

                        } label: {
                            VStack(spacing: 5) {
                                Image(systemName: "list.star")
                                    .frame(width: 30, height: 30)
                                Text("Payment")
                                    .font(.system(size: 13))
                            }
                        }
                    }
                    .font(.title2)
                    .foregroundColor(Color(UIColor(white: 0.5, alpha: 1)))
                    .padding(EdgeInsets(top: 20, leading: 70, bottom: 55, trailing: 70))
                }
                .shadow(radius: 10)
            
            Button {
                
            } label: {
                Image(systemName: "qrcode.viewfinder")
                    .font(.system(size: 30))
                    .foregroundColor(.white)
                    .frame(width: 74, height: 74)
                    .background(Color.green)
                    .clipShape(Circle())
                    .shadow(radius: 4)
                    .overlay {
                        Circle().stroke(Color.white, lineWidth: 4)
                    }
            }
            .offset(y: -55)
        }
        .frame(maxHeight: .infinity, alignment: .bottom)
        .ignoresSafeArea()
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar(action: {})
            .preferredColorScheme(.dark)
    }
}


