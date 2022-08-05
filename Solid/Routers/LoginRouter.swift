//
//  LoginRouter.swift
//  Solid
//
//  Created by user217123 on 8/4/22.
//

import UIKit
class LoginRouter {
    
    static func CrearModulo(style: loginStyle) -> LoginController {
        let vc = LoginController()
        vc.db = DatabaseService()
        vc.presenter = LoginPresenter ()
        vc.showErrors = ShowMensajes()
        
        switch style {
            case .normal:
                vc.loginServices = LoginNormal()
            case .facebook:
                vc.loginServices = LoginFacebook()
            case .google:
                vc.loginServices = LoginGoogle()
        }
        
        return vc
    }
}
