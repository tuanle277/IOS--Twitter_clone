import UIKit

class NewsViewController: UIViewController {

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        let myURL = "https://api.twitter.com/1.1/statuses/home_timeline.json"
        let myParams = ["count": 10]
        
        
        TwitterAPICaller.client?.getDictionariesRequest(url: myURL, parameters: myParams, success: {(tweets: [NSDictionary]) in
            for tweet in tweets
            {
                print(tweet)
            }
        }, failure: {(Error) in print("can't get request")})
        

        

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
