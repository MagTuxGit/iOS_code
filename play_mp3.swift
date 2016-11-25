import UIKit
import AVFoundation

class ViewController: UIViewController {

    let player = AVPlayer(url: Bundle.main.url(forResource: "trumpet", withExtension: "mp3")!)

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func honk(_ sender: UIButton) {
        player.play()
    }
}

