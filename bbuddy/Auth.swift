//
// Created by Jackson Zhang on 2021/8/25.
// Copyright (c) 2021 odd-e. All rights reserved.
//

import Foundation
import UIKit

class Auth {
    static let auth = Auth()
    internal var window: UIWindow!
    static func setup(_ _window: UIWindow) {
        let auth = Auth.auth
        auth.window = _window
        auth.addObserver(#selector(authStatusChanged), authStatus: AuthStatus.loggedOut)
        auth.addObserver(#selector(authStatusChanged), authStatus: AuthStatus.loggedIn)
        auth.notify(authState: AuthorizedToken.valid() ? AuthStatus.loggedIn : AuthStatus.loggedOut)
    }

    static func login() {
        Auth.auth.notify(authState: .loggedIn)
    }

    static func logout() {
        AuthorizedToken.clear()
        Auth.auth.notify(authState: .loggedOut)
    }

    private func addObserver(_ selector: Selector, authStatus: AuthStatus) {
        NotificationCenter.default.addObserver(self, selector: selector, name: NSNotification.Name(authStatus.rawValue), object: nil)
    }

    private func notify(authState: AuthStatus) {
        NotificationCenter.default.post(name: Notification.Name(rawValue: authState.rawValue), object: authState)
    }

    private func showLoginPage() {
        transitTo(storyBoardName: "Login", transform: CGAffineTransform(translationX: -600.0, y: 0.0))
    }

    private func transitTo(storyBoardName: String, transform: CGAffineTransform) {
        if let snapshot = window!.snapshotView(afterScreenUpdates: true) {
            let controller = UIStoryboard(name: storyBoardName, bundle: Bundle.main).instantiateInitialViewController()
            controller?.view.addSubview(snapshot)
            let previousViewController = window!.rootViewController
            window!.rootViewController = controller

            if let previousViewController = previousViewController {
                previousViewController.dismiss(animated: false)
            }


            UIView.animate(withDuration: 0.5, animations: {
                snapshot.transform = transform
            }, completion: { (_: Bool) in
                snapshot.removeFromSuperview()
            })
        }
    }

    private func showHomePage() {
        transitTo(storyBoardName: "Main", transform: CGAffineTransform(translationX: 600.0, y: 0.0))
    }

    @objc private func authStatusChanged(notification: NSNotification){
        if let status = notification.object as? AuthStatus {
            if status == .loggedOut {
                showLoginPage()
            } else {
                showHomePage()
            }
        }
    }
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}

