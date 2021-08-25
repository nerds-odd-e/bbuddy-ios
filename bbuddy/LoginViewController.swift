//
//  LoginViewController.swift
//  bbuddy
//
//  Created by Jackson Zhang on 2021/8/25.
//  Copyright © 2021 odd-e. All rights reserved.
//

import Foundation
import SwiftUI

class LoginViewController: UIHostingController<LoginView> {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder, rootView: LoginView())
    }
}
