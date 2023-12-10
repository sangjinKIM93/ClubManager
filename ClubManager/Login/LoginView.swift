//
//  LoginView.swift
//  ClubManager
//
//  Created by 김상진 on 12/10/23.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack {
            KakaoSignInButton()
            AppleSignInButton()
        }
    }
}

#Preview {
    LoginView()
}
