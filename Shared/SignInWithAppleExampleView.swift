//
//  SignInWithAppleExampleView.swift
//  SwiftUI-NewFeatures
//
//  Created by Rob Sturgeon on 27/06/2020.
//

import SwiftUI
import AuthenticationServices

struct SignInWithAppleExampleView: View {
  @State var output = ""
  
  func output(_ result: Result<ASAuthorization, Error>) {
    switch result {
    case .success (let authResults):
      self.output = """
      Authorization successful

      \(authResults)
      \(authResults.provider)
      \(authResults.credential)
      """
      
    case .failure (let error):
      self.output = "Authorization failed: \(error.localizedDescription)"
    }
    print(self.output)
  }
  
  
  var body: some View {
    VStack {
      Text("Tap the button to authenticate.\nYou must be signed into an Apple ID on this device.")
        .foregroundColor(.black)
        .lineLimit(nil)
      SignInWithAppleButton(
        .signIn,
        onRequest: { request in
          request.requestedScopes = [.fullName, .email]
        },
        onCompletion: { result in
          output(result)
        })
        .frame(maxWidth: 375)
        .aspectRatio(7, contentMode: .fit)
      Text(output)
        .foregroundColor(.black)
        
    }
    .padding()
    .frame(maxWidth: .infinity, maxHeight: .infinity)
    .background(Color.white)
  }
}

struct SignInWithAppleView_Previews: PreviewProvider {
  static var previews: some View {
    SignInWithAppleExampleView()
  }
}
