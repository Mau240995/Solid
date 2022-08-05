//
//  ShowMensajes.swift
//  Solid
//
//  Created by user217123 on 8/4/22.
//

import  UIKit

class ShowMensajes {
    
    func showError(vc: UIViewController) {
        let alertController = UIAlertController(title: "Error", message: "Error", preferredStyle: .alert)
        vc.present(alertController, animated: true)
    }
}
