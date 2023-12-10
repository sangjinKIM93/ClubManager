//
//  KakaoSigninButton.swift
//  ClubManager
//
//  Created by 김상진 on 12/10/23.
//

import SwiftUI
import KakaoSDKAuth
import KakaoSDKUser

struct KakaoSignInButton: View {
    var body: some View {
        Button(action: {
            loginWithKakao()
        }, label: {
            Text("카카오 로그인")
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .background(Color.yellow)
        })
        .cornerRadius(6)
        .padding(.horizontal, 20)
    }
    
    func loginWithKakao() {
        if (UserApi.isKakaoTalkLoginAvailable()) {
            UserApi.shared.loginWithKakaoTalk {(oauthToken, error) in
                if let error = error {
                    print(error)
                }
                else {
                    print("loginWithKakaoTalk() success.")

                   //let idToken = oAuthToken.idToken ?? ""
                   //let accessToken = oAuthToken.accessToken
                }
            }
        }
    }
}

#Preview {
    KakaoSignInButton()
}
