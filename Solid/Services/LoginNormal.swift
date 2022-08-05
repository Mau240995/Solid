//
//  LoginNormal.swift
//  Solid
//
//  Created by user217123 on 8/4/22.
//
import UIKit

class LoginNormal: LoginServices {
    func login(completion: @escaping(Bool)-> Void) {
        URLSession.shared.dataTask(with: URL(string: "www.google.com")!){ data,response, error in
            if let _ = error {
                completion(false)
            }else {
                completion(true)
            }
        }
    }
}
