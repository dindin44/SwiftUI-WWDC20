//
//  SignInWithAppleExampleView.swift
//  SwiftUI-NewFeatures
//
//  Created by Rob Sturgeon on 27/06/2020.
//

import SwiftUI

struct SignInWithAppleExampleView: View {
  @State var output = ""
  var body: some View {
    VStack {
      Text("Tap the button to authenticate. You must be signed into an Apple ID on this device.")
        .foregroundColor(.black)
        .background(Color(UIColor.systemBackground))
        .padding()
    SignInWithAppleButton(
      .signIn,
      onRequest: { request in
        request.requestedScopes = [.fullName, .email]
      },
      onCompletion: { result in
        switch result {
        case .success (let authResults):
          self.output = """
            Authorization successful

            \(authResults)
            \(authResults.provider)
            \(authResults.credential)
            """
          print(self.output)
        case .failure (let error):
          self.output = "Authorization failed: " + error.localizedDescription
          print(self.output)
        }
      })
      .frame(maxWidth: 375)
      .aspectRatio(7, contentMode: .fit)
      .padding()
      Text(output)
        .padding()
    }
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(Color(UIColor.systemGray))
  }
}


struct SignInWithAppleView_Previews: PreviewProvider {
    static var previews: some View {
        SignInWithAppleExampleView()
    }
}
