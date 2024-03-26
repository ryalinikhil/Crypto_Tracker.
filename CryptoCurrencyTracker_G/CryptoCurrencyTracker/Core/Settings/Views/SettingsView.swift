//
//  SettingsView.swift
//  CryptoCurrencyTracker
//
//

import SwiftUI

struct SettingsView: View {
    
    
   let defaultURL = URL(string: "https://www.google.com")!
   let coingeckoURL = URL(string: "https://www.coingecko.com")!
   let personalURL = URL(string: "https://sagarranipa.com")!
   let githubURL = URL(string: "https://github.com/SagarRanipa")!
    
   @Binding var showSettingsView: Bool
    
    var body: some View {

        NavigationView {
            List {
                cryptoSection
                coinGeckoSection
                developerSection
            }
            .font(.headline)
            .accentColor(.blue)
            .listStyle(GroupedListStyle())
            .navigationTitle("Settings")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        self.showSettingsView.toggle()
                    }, label: {
                        Image(systemName: "xmark")
                            .font(.headline)
                    })
                }
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView(showSettingsView: .constant(false))
    }
}

extension SettingsView {
    private var cryptoSection: some View {
        Section(header: Text("Crypto Currency Tracker")) {
            VStack(alignment: .leading){
                Image("logo")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This App was made to Track Live Prices of Crypto Coins and to allow user to create mock portfolio!")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
        }
    }
    
    private var coinGeckoSection: some View {
        Section(header: Text("CoinGecko")) {
            VStack(alignment: .leading){
                Image("coingecko")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 100)
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                Text("This App uses data from free API from CoinGecko! prices may be slightly delayed.")
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)
            Link("Get API Key", destination: coingeckoURL)
        }
    }
    
    private var developerSection: some View {
        Section(header: Text("Team")) {
            VStack(alignment: .leading){

                Text("Gaurav")
                Text("Yash")
                Text("Kabir")
                Text("Lakshya")
                
                    .font(.callout)
                    .fontWeight(.medium)
                    .foregroundColor(Color.theme.accent)
            }
            .padding(.vertical)

        }
    }


}
