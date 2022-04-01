import Spring

class AnimationViewController: UIViewController {
    
    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var mainLabel: UILabel!
    
    var animation = Animation.getRandomAnimation()
    
    @IBAction func springAnimationButtonPressed(_ sender: SpringButton) {
            
        mainLabel.text = animation.description
        
        springAnimationView.animation = animation.name
        springAnimationView.curve = animation.curve
        springAnimationView.delay = CGFloat(animation.delay)
        springAnimationView.duration = CGFloat(animation.duration)
        springAnimationView.force = CGFloat(animation.force)
        springAnimationView.animate()
        
        animation = Animation.getRandomAnimation()
        sender.setTitle("Start \(animation.name)", for: .normal)
    
    }
}
