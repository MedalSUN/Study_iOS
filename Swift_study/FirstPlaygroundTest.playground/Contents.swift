import UIKit

import PlaygroundSupport

class MyViewController : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        
        let label = UILabel()
        label.frame = CGRect(x:30, y:50 , width:100, height:20)
        label.text = "Hello World!"
        label.textColor = .black
        label.textAlignment = .center
        label.backgroundColor = UIColor.red
        
        self.view.addSubview(label)
        
        let animate = CABasicAnimation(keyPath: "opacity")
        animate.fromValue = 0
        animate.toValue = 0.8
        animate.duration = 0.75
        animate.repeatCount = MAXFLOAT
        animate.autoreverses = true
        
        label.layer.add(animate, forKey: "key_opacity")
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
