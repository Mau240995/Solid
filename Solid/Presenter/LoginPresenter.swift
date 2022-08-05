//
//  LoginPresenter.swift
//  Solid
//
//  Created by user217123 on 8/4/22.
//

import UIKit
class LoginPresenter {
    
    weak var loginScreen: LoginController?
    
    func goNextView() {
        let vc = UIViewController()
        self.loginScreen?.present(vc, animated: true, completion: nil)
    }
    
}
