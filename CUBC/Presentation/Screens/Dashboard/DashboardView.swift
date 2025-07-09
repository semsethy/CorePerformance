import SwiftUI

struct DashboardView: View {
    @State var showEye: Bool = false
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationStack {
            ZStack {
//                Image("background")
//                    .resizable()
                Color.white
                    .ignoresSafeArea()

                VStack(spacing: 0) {
                    ScrollView {
                        VStack(alignment: .leading, spacing: 16) {
                            NavigationLink {
                                
                            } label: {
                                ZStack(alignment: .topTrailing){
                                    HStack{
                                        VStack(alignment: .leading,spacing: 15){
                                            HStack(spacing: 15){
                                                Image("usa")
                                                     .resizable()
                                                     .frame(width: 25, height: 25)
                                                     .clipShape(Circle())
                                                     .scaledToFit()
                                                     .opacity(0.7)
                                                Text("USD")
                                                    .font(.system(size: 20, weight: .medium))
                                                    .foregroundColor(Color(UIColor(white: 0.3, alpha: 1)))
                                            }
                                            HStack(spacing: 3){
                                                if showEye {
                                                    Text("0.00")
                                                        .font(.system(size: 25, weight: .medium))
                                                        .foregroundColor(Color(UIColor(white: 0.2, alpha: 1)))
                                                } else {
                                                    ForEach(0..<5){_ in
                                                        Image("leaf")
                                                            .resizable()
                                                            .frame(width: 25, height: 25)
                                                            .opacity(0.7)
                                                    }
                                                }
                                            }
                                            .frame(height: 33)
                                            HStack(spacing: 15){
                                                Image("khmer")
                                                     .resizable()
                                                     .frame(width: 25, height: 25)
                                                     .clipShape(Circle())
                                                     .scaledToFit()
                                                     .opacity(0.7)
                                                Text("KHR")
                                                    .font(.system(size: 20, weight: .medium))
                                                    .foregroundColor(Color(UIColor(white: 0.3, alpha: 1)))
                                            }
                                            HStack(spacing: 3){
                                                if showEye {
                                                    Text("0.00")
                                                        .font(.system(size: 25, weight: .medium))
                                                        .foregroundColor(Color(UIColor(white: 0.2, alpha: 1)))
                                                } else {
                                                    ForEach(0..<5){_ in
                                                        Image("leaf")
                                                            .resizable()
                                                            .frame(width: 25, height: 25)
                                                            .opacity(0.7)
                                                    }
                                                }
                                            }
                                            .frame(height: 33)
                                        }
                                        Spacer()
                                        VStack{
                                            Image(systemName: "chevron.right")
                                                .foregroundColor(Color(UIColor(white: 0.4, alpha: 1)))
                                                .bold()
                                                .padding(8)
                                        }
                                    }
                                    .padding()
                                    Button {
                                        showEye.toggle()
                                    } label: {
                                        Image(systemName: showEye ? "eye.fill" : "eye")
                                            .foregroundColor(Color(UIColor(white: 0.4, alpha: 1)))
                                            .font(.system(size: 20))
                                    }
                                    .offset(x: -25, y: 25)

                                }
                                .background(Color(UIColor(white: 0.95, alpha: 1)))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 18)
                                        .stroke(Color(UIColor(white: 0.7, alpha: 1)), lineWidth: 4)
                                )
                                .cornerRadius(18)
                            }
                            .buttonStyle(PlainButtonStyle())
                            
                            HStack(spacing: 10) {
                                HStack(spacing: 16) {
                                    Spacer()
                                    Image(systemName: "repeat.circle")
                                        .resizable()
                                        .font(.system(size: 20))
                                        .foregroundColor(Color(UIColor(white: 0.3, alpha: 1)))
                                        .frame(width: 30, height: 30)
                                    Text("Transfer")
                                        .font(.system(size: 18))
                                        .foregroundColor(Color(UIColor(white: 0.2, alpha: 1)))
                                    Spacer()
                                }
                                .padding(16)
                                .background(Color(UIColor(white: 0.95, alpha: 1)))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 16)
                                        .stroke(Color(UIColor(white: 0.7, alpha: 1)), lineWidth: 4)
                                )
                                .cornerRadius(16)
                                
                                
                                Image("khqr")
                                    .resizable()
                                    .cornerRadius(6)
                                    .frame(width: 30, height: 30)
                                    .padding(15)
                                    .background(Color(UIColor(white: 0.95, alpha: 1)))
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 14)
                                            .stroke(Color(UIColor(white: 0.7, alpha: 1)), lineWidth: 4)
                                    )
                                    .cornerRadius(14)
                            }
                            
                            .frame(maxWidth: .infinity)
                            
                            Text("My Cards")
                                .foregroundColor(Color(UIColor(white: 0.3, alpha: 1)))
                                .padding(.horizontal,8)
                            
                            Image("image1")
                                .resizable()
                                .cornerRadius(6)
                                .aspectRatio(contentMode: .fill)
                                .frame(maxWidth: .infinity, maxHeight: 100)
                                .background(Color(UIColor(white: 0.95, alpha: 1)))
                                .cornerRadius(14)
                            
                            Text("Service")
                                .foregroundColor(Color(UIColor(white: 0.3, alpha: 1)))
                                .padding(.horizontal,8)
                            LazyVGrid(columns: columns, spacing: 12) {
                                VStack(alignment: .leading){
                                    Text("Favorite")
                                        .foregroundColor(Color(UIColor(white: 0.3, alpha: 1)))
                                        .padding(.horizontal,8)
                                        .lineLimit(2)
                                        .font(.system(size: 16))
                                    Spacer()
                                    HStack{
                                        Spacer()
                                        Image(systemName: "repeat.circle")
                                            .font(.system(size: 28))
                                            .foregroundColor(Color(UIColor(white: 0.5, alpha: 1)))
                                    }
                                }
                                .frame(maxWidth: .infinity, minHeight: 80)
                                .padding(8)
                                .background(Color(UIColor(white: 0.95, alpha: 1)))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 14)
                                        .stroke(Color(UIColor(white: 0.7, alpha: 1)), lineWidth: 4)
                                )
                                .cornerRadius(14)
                                
                                VStack(alignment: .leading){
                                    Text("Fixed Deposit")
                                        .foregroundColor(Color(UIColor(white: 0.3, alpha: 1)))
                                        .padding(.horizontal,8)
                                        .lineLimit(2)
                                        .font(.system(size: 16))
                                    Spacer()
                                    HStack{
                                        Spacer()
                                        Image(systemName: "repeat.circle")
                                            .font(.system(size: 28))
                                            .foregroundColor(Color(UIColor(white: 0.5, alpha: 1)))
                                    }
                                }
                                .frame(maxWidth: .infinity, minHeight: 80)
                                .padding(8)
                                .background(Color(UIColor(white: 0.95, alpha: 1)))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 14)
                                        .stroke(Color(UIColor(white: 0.7, alpha: 1)), lineWidth: 4)
                                )
                                .cornerRadius(14)
                                
                                VStack(alignment: .leading){
                                    Text("Top-up History")
                                        .foregroundColor(Color(UIColor(white: 0.3, alpha: 1)))
                                        .padding(.horizontal,8)
                                        .lineLimit(2)
                                        .font(.system(size: 16))
                                    Spacer()
                                    HStack{
                                        Spacer()
                                        Image(systemName: "repeat.circle")
                                            .font(.system(size: 28))
                                            .foregroundColor(Color(UIColor(white: 0.5, alpha: 1)))
                                    }
                                }
                                .frame(maxWidth: .infinity, minHeight: 80)
                                .padding(8)
                                .background(Color(UIColor(white: 0.95, alpha: 1)))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 14)
                                        .stroke(Color(UIColor(white: 0.7, alpha: 1)), lineWidth: 4)
                                )
                                .cornerRadius(14)
                                
                                VStack(alignment: .leading){
                                    Text("Loans")
                                        .foregroundColor(Color(UIColor(white: 0.3, alpha: 1)))
                                        .padding(.horizontal,8)
                                        .lineLimit(2)
                                        .font(.system(size: 16))
                                    Spacer()
                                    HStack{
                                        Spacer()
                                        Image(systemName: "repeat.circle")
                                            .font(.system(size: 28))
                                            .foregroundColor(Color(UIColor(white: 0.5, alpha: 1)))
                                    }
                                }
                                .frame(maxWidth: .infinity, minHeight: 80)
                                .padding(8)
                                .background(Color(UIColor(white: 0.95, alpha: 1)))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 14)
                                        .stroke(Color(UIColor(white: 0.7, alpha: 1)), lineWidth: 4)
                                )
                                .cornerRadius(14)
                                
                                VStack(alignment: .leading){
                                    Text("Future Schedule")
                                        .foregroundColor(Color(UIColor(white: 0.3, alpha: 1)))
                                        .padding(.horizontal,8)
                                        .lineLimit(2)
                                        .font(.system(size: 16))
                                    Spacer()
                                    HStack{
                                        Spacer()
                                        Image(systemName: "repeat.circle")
                                            .font(.system(size: 28))
                                            .foregroundColor(Color(UIColor(white: 0.5, alpha: 1)))
                                    }
                                }
                                .frame(maxWidth: .infinity, minHeight: 80)
                                .padding(8)
                                .background(Color(UIColor(white: 0.95, alpha: 1)))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 14)
                                        .stroke(Color(UIColor(white: 0.7, alpha: 1)), lineWidth: 4)
                                )
                                .cornerRadius(14)
                                
                                VStack(alignment: .leading){
                                    Text("FX Rates")
                                        .foregroundColor(Color(UIColor(white: 0.3, alpha: 1)))
                                        .padding(.horizontal,8)
                                        .lineLimit(2)
                                        .font(.system(size: 16))
                                    Spacer()
                                    HStack{
                                        Spacer()
                                        Image(systemName: "repeat.circle")
                                            .font(.system(size: 28))
                                            .foregroundColor(Color(UIColor(white: 0.5, alpha: 1)))
                                    }
                                }
                                .frame(maxWidth: .infinity, minHeight: 80)
                                .padding(8)
                                .background(Color(UIColor(white: 0.95, alpha: 1)))
                                .overlay(
                                    RoundedRectangle(cornerRadius: 14)
                                        .stroke(Color(UIColor(white: 0.7, alpha: 1)), lineWidth: 4)
                                )
                                .cornerRadius(14)
                                
                            }
                        }
                        .padding()
                        .padding(.bottom, 80)
                        
                    }
                }

                VStack {
                    Spacer()
                    TabBar(action: {})
                }
                .background(.clear)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {}) {
                        Image(systemName: "person.fill")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .padding(5)
                            .background(Color(UIColor(white: 0.95, alpha: 1)))
                            .clipShape(Circle())
                            .foregroundColor(Color(UIColor(white: 0.3, alpha: 1)))
                    }
                }

                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {}) {
                        HStack(spacing: 8) {
                            Image(systemName: "location.fill")
                                .resizable()
                                .frame(width: 18, height: 18)
                            Text("Location")
                                .font(.subheadline)
                        }
                        .padding(.horizontal, 12)
                        .padding(.vertical, 8)
                        .background(Color(UIColor(white: 0.95, alpha: 1)))
                        .overlay(
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(Color(UIColor(white: 0.7, alpha: 1)), lineWidth: 4)
                        )
                        .cornerRadius(20)
                        .foregroundColor(Color(UIColor(white: 0.3, alpha: 1)))
                    }
                }

                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {}) {
                        Image(systemName: "bell.fill")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .padding(5)
                            .clipShape(Circle())
                            .foregroundColor(Color(UIColor(white: 0.4, alpha: 1)))
                    }
                }
            }
        }
    }
}

#Preview {
    DashboardView()
}
