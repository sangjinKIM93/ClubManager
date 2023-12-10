//
//  ClubManagerApp.swift
//  ClubManager
//
//  Created by 김상진 on 12/10/23.
//

import SwiftUI
import KakaoSDKCommon
import KakaoSDKAuth

@main
struct ClubManagerApp: App {
    init() {
        KakaoSDK.initSDK(appKey: Constant.kakaoNativeAppKey)
    }
    
    var body: some Scene {
        WindowGroup {
            LoginView().onOpenURL(perform: { url in
                if (AuthApi.isKakaoTalkLoginUrl(url)) {
                    AuthController.handleOpenUrl(url: url)
                }
            })
        }
    }
}
