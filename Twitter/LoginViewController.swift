import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var logInImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configUI()
    }
    
    @IBAction func logInAction(_ sender: UIButton)
    {
        let myUrl = "https://api.twitter.com/oauth/request_token"
        TwitterAPICaller.client?.login(url: myUrl, success:
        {
            self.performSegue(withIdentifier: "toNews", sender: nil)
        },failure: {(Error) in print("Login failed") })
    }
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
