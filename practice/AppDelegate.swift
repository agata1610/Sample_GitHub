//
//  AppDelegate.swift
//  practice
//
//  Created by k15001kk on 2017/06/28.
//  Copyright © 2017年 AIT. All rights reserved.
//

import UIKit
import NCMB

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    //********** APIキーの設定 **********
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    
    NCMB.setApplicationKey("e038ad5fc0ace4be2cd36862d6948ab66cbd4eab1cb3f94e0f17078b0ef29146",
        clientKey:"2265a2d7d7155c1e4409bafb3332b73c549a79913744bdb5e79b10fc65768548")
    
    
        // Override point for customization after application launch.
        //********** SDKの初期化 **********
        
        //********** データストアにデータを保存 **********
    
        let object = NCMBObject(className: "study")
        object?.setObject("Agata", forKey: "name")
        object?.saveInBackground({ (error: Error?) in
            if (error != nil){
                }else{
            
                }
        }
            )
    
        return true
    }
}
