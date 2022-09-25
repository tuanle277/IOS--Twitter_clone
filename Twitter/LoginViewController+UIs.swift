import UIKit

extension LoginViewController
{
    func configUI()
    {
        logInButton.layer.cornerRadius = logInButton.frame.height / 2
        logInButton.clipsToBounds = true
    }
}
