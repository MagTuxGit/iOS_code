    @IBOutlet weak var faceView: FaceView! {
        didSet {
            faceView.addGestureRecognizer(UIPinchGestureRecognizer(
                target: faceView,
                action: #selector(FaceView.changeScale)
            ))
            
            let happierSwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(self.respondToSwipeGesture))
            happierSwipeGestureRecognizer.direction = .up
            faceView.addGestureRecognizer(happierSwipeGestureRecognizer)
            
            let sadderSwipeGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(self.respondToSwipeGesture))
            sadderSwipeGestureRecognizer.direction = .down
            faceView.addGestureRecognizer(sadderSwipeGestureRecognizer)

            let lrSGR = UISwipeGestureRecognizer(target: self, action: #selector(self.respondToSwipeGesture))
            lrSGR.direction = [.left, .right]
            faceView.addGestureRecognizer(lrSGR)
        }
    }
    
    func respondToSwipeGesture(_ gesture: UISwipeGestureRecognizer) {
//        if gesture.direction.contains(.up) {}
//        if gesture.direction.contains(.down) {}

        switch gesture.direction {
        case [.right]:
            print("Swiped right")
        case [.down]:
            expression.mouth = expression.mouth.sadderMouth()
            print("Swiped down")
        case [.left]:
            print("Swiped left")
        case [.up]:
            expression.mouth = expression.mouth.happierMouth()
            print("Swiped up")
        default:
            break
        }
    }
    
    // UITapGestureRecognizer on storyboard
    @IBAction func toggleEyes(_ recognizer: UITapGestureRecognizer) {
        if recognizer.state == .ended {
            switch expression.eyes {
            case .closed:
                expression.eyes = .open
            case .open:
                expression.eyes = .closed
            case .squinting:
                break
            }
        }
    }

// FaceView.swift
func changeScale(recognizer: UIPinchGestureRecognizer) {
    switch recognizer.state {
    case .changed, .ended:
        scale *= recognizer.scale
        recognizer.scale  = 1.0
    default: break
    }
}
