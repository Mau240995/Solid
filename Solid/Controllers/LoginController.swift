//
//  LoginController.swift
//  Solid
//
//  Created by user217123 on 8/4/22.
//

import UIKit

class LoginController: UIViewController {
    
    var loginServices: LoginServices?
    var showErrors: ShowMensajes?
    var db: DatabaseService?
    var presenter: LoginPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        self.loginServices?.login { [weak self] result in
            if result {
                let user = Usuario(nombre: "Mauricio", apellido: "Malvaez")
                self?.db?.saveUser(user: user)
                self?.presenter?.goNextView()
            } else {
                self?.showErrors?.showError(vc: self!)
            }
        }
    }
    
}
