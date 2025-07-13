import SwiftUI

struct DashboardView: View {
    @StateObject private var viewModel = DashboardViewModel()
    let columns = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]

    var body: some View {
        NavigationStack {
            ZStack {
                Color.white.ignoresSafeArea()

                VStack(spacing: 0) {
                    ScrollView {
                        VStack(spacing: 16) {
                            BalanceCardView(showEye: $viewModel.showEye)

                            ActionButtonsView()

                            Text("My Cards")
                                .sectionTitleStyle()
 
                            Image("image1")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(height: 110)
                                .cornerRadius(14)

                            Text("Service")
                                .sectionTitleStyle()

                            LazyVGrid(columns: columns, spacing: 12) {
                                ForEach(viewModel.serviceItems) { item in
                                    ServiceItemView(service: item)
                                }
                            }
                        }
                        .padding(.bottom, 80)
                        .padding(.top, 10)
                    }
                    .padding(.horizontal, 18)
                }
            }
            .toolbar {
                DashboardToolbar()
            }
        }
    }
}


#Preview {
    DashboardView()
}

