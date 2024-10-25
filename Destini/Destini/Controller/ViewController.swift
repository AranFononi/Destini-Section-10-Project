
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var choiceOneButton: UIButton!
    @IBOutlet weak var choiceTwoButton: UIButton!
    @IBOutlet weak var storyLabel: UILabel!
    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        updateUI(num: storyBrain.storyNumber)
    }
    var storyBrain = StoryBrain()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = storyBrain.stories[storyBrain.storyNumber].title
        choiceOneButton.setTitle(storyBrain.stories[storyBrain.storyNumber].choice1, for: .normal)
        choiceTwoButton.setTitle(storyBrain.stories[storyBrain.storyNumber].choice2, for: .normal)
    }
    
    func updateUI(num: Int){
        storyLabel.text = storyBrain.stories[num].title
        choiceOneButton.setTitle(storyBrain.stories[num].choice1, for: .normal)
        choiceTwoButton.setTitle(storyBrain.stories[num].choice2, for: .normal)
    }


}

