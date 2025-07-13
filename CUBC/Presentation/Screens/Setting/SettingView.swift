//
//  SettingView.swift
//  CUBC
//
//  Created by JoshipTy on 9/7/25.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 0) {
                ScrollView{
                    VStack {
                        VStack{
                            HStack(spacing: 20) {
                                Image(systemName: "person.fill")
                                    .font(.system(size: 30))
                                    .foregroundColor(.secondary)
                                    .padding(10)
                                    .background(Color(UIColor(white: 1, alpha: 1)))
                                    .clipShape(Circle())
                                
                                Text("SEM SETHY")
                                    .font(.system(size: 20))
                                    .foregroundColor(.black)
                                Spacer()
                            }
                            .padding(16)
                            .padding(.horizontal,8)
                            
                            HStack(spacing: 15) {
                                Image("khmer")
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                VStack(alignment: .leading, spacing: 5) {
                                    Text("Referral Code")
                                        .foregroundColor(Color(UIColor(white: 0.1, alpha: 1)))
                                        .font(.system(size: 18))
                                    Text("3QZYAO")
                                        .font(.system(size: 16,weight: .semibold))
                                }
                                Spacer()
                                Image(systemName: "person")
                                    .font(.system(size: 20))
                                    .padding(10)
                                    .background(Color(UIColor(white: 0.95, alpha: 1)))
                                    .clipShape(Circle())
                                Image(systemName: "person")
                                    .font(.system(size: 20))
                                    .padding(10)
                                    .background(Color(UIColor(white: 0.95, alpha: 1)))
                                    .clipShape(Circle())
                            }
                            .padding(18)
                            .background(Color(UIColor(white: 1, alpha: 1)))
                            .cornerRadius(20)
                            .padding(.horizontal)
                        }
                        .padding([.bottom],20)
                        .background(
                            Color.green.opacity(0.45)
                                .mask(
                                    LinearGradient(gradient: Gradient(colors: [Color(UIColor(white: 0.9, alpha: 1)).opacity(0.05), Color.green.opacity(0.5)]), startPoint: .top, endPoint: .bottom)
                                )
                        )
                        .cornerRadius(20)
                        
                        VStack(spacing: 40){
                            HStack(spacing: 15) {
                                Image(systemName: "person")
                                    .font(.system(size: 25))
                                    .padding(10)
                                    .background(Color(UIColor(white: 0.9, alpha: 1)))
                                    .clipShape(Circle())
                                VStack(alignment: .leading, spacing: 5) {
                                    Text("Biometrics")
                                        .foregroundColor(Color(UIColor(white: 0.1, alpha: 1)))
                                        .font(.system(size: 18))
                                    Text("ON")
                                        .font(.system(size: 16))
                                        .foregroundColor(.gray)
                                }
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .foregroundColor(Color(UIColor(white: 0.4, alpha: 1)))
                                    .bold()
                                    .padding(8)
                            }
                            
                            HStack(spacing: 15) {
                                Image(systemName: "person")
                                    .font(.system(size: 25))
                                    .padding(10)
                                    .background(Color(UIColor(white: 0.9, alpha: 1)))
                                    .clipShape(Circle())
                                VStack(alignment: .leading, spacing: 5) {
                                    Text("PIN")
                                        .foregroundColor(Color(UIColor(white: 0.1, alpha: 1)))
                                        .font(.system(size: 18))
                                }
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .foregroundColor(Color(UIColor(white: 0.4, alpha: 1)))
                                    .bold()
                                    .padding(8)
                            }
                            
                            HStack(spacing: 15) {
                                Image(systemName: "person")
                                    .font(.system(size: 25))
                                    .padding(10)
                                    .background(Color(UIColor(white: 0.9, alpha: 1)))
                                    .clipShape(Circle())
                                VStack(alignment: .leading, spacing: 5) {
                                    Text("Change Password")
                                        .foregroundColor(Color(UIColor(white: 0.1, alpha: 1)))
                                        .font(.system(size: 18))
                                }
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .foregroundColor(Color(UIColor(white: 0.4, alpha: 1)))
                                    .bold()
                                    .padding(8)
                            }
                            
                            HStack(spacing: 15) {
                                Image(systemName: "person")
                                    .font(.system(size: 25))
                                    .padding(10)
                                    .background(Color(UIColor(white: 0.9, alpha: 1)))
                                    .clipShape(Circle())
                                VStack(alignment: .leading, spacing: 5) {
                                    Text("Link Account with Phone")
                                        .foregroundColor(Color(UIColor(white: 0.1, alpha: 1)))
                                        .font(.system(size: 18))
                                }
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .foregroundColor(Color(UIColor(white: 0.4, alpha: 1)))
                                    .bold()
                                    .padding(8)
                            }
                            
                            HStack(spacing: 15) {
                                Image(systemName: "person")
                                    .font(.system(size: 25))
                                    .padding(10)
                                    .background(Color(UIColor(white: 0.9, alpha: 1)))
                                    .clipShape(Circle())
                                VStack(alignment: .leading, spacing: 5) {
                                    Text("Language")
                                        .foregroundColor(Color(UIColor(white: 0.1, alpha: 1)))
                                        .font(.system(size: 18))
                                    Text("English")
                                        .font(.system(size: 16))
                                        .foregroundColor(.gray)
                                    
                                    
                                }
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .foregroundColor(Color(UIColor(white: 0.4, alpha: 1)))
                                    .bold()
                                    .padding(8)
                            }
                            
                            HStack(spacing: 15) {
                                Image(systemName: "person")
                                    .font(.system(size: 25))
                                    .padding(10)
                                    .background(Color(UIColor(white: 0.9, alpha: 1)))
                                    .clipShape(Circle())
                                VStack(alignment: .leading, spacing: 5) {
                                    Text("Account")
                                        .foregroundColor(Color(UIColor(white: 0.1, alpha: 1)))
                                        .font(.system(size: 18))
                                }
                                Spacer()
                                Image(systemName: "chevron.right")
                                    .foregroundColor(Color(UIColor(white: 0.4, alpha: 1)))
                                    .bold()
                                    .padding(8)
                            }
                        }
                        .padding(.horizontal,20)
                        .padding(.top,10)
                        HStack(spacing: 20) {
                            Spacer()
                            Spacer()
                            Text("Version8.8.0")
                                .foregroundStyle(.gray)
                                .font(.system(size: 16))
                            
                            Spacer()
                            Divider()
                            Spacer()
                            
                            Text("Privacy Policy")
                                .foregroundStyle(.green)
                                .font(.system(size: 16))
                            Spacer()
                            Spacer()
                        }
                        .padding(.top,40)
                    }
                    
                    
                }
            }
            .navigationTitle("My Setting")
        }
    }
}

#Preview {
    SettingView()
}
