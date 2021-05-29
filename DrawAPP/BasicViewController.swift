import UIKit

class BasicViewController: UIViewController {
    @IBOutlet weak var heartLabel: UILabel!
    @IBOutlet weak var segmentedOne: UISegmentedControl!
    @IBOutlet weak var segmentedTwo: UISegmentedControl!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    var content = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        set()
    }
    
    //設定
    func set() {
        content = ""
        heartLabel.text = "💜"
        numberLabel.text = "1"
    }
    
    @IBAction func selectSegmentedOne(_ sender: UISegmentedControl) {
        segmentedTwo.selectedSegmentIndex = -1
        changeSlider(slider)
    }
    
    @IBAction func selectSegmentedTwo(_ sender: UISegmentedControl) {
        segmentedOne.selectedSegmentIndex = -1
        set()
        slider.value = 1
    }
    
    @IBAction func changeSlider(_ sender: UISlider) {
        
        var number = Int(sender.value)
        
        //第一排UISegmentedControl
        switch segmentedOne.selectedSegmentIndex {
        
        //10x10
        case 0:
            set()
            for y in 1...number {
                for x in 1...number {
                    content += "💜"
                }
                content += "\n"
            }
            
        //直向偶數不同，重點：判斷x % 2 == 0
        case 1:
            set()
            for y in 1...number {
                for x in 1...number {
                    if x % 2 == 0 {
                        content += "🖤"
                    }else{
                        content += "💜"
                    }
                }
                content += "\n"
            }
            
        //橫向奇數不同，重點：判斷y % 2 != 0
        case 2:
            set()
            for y in 1...number {
                for x in 1...number {
                    if y % 2 != 0 {
                        content += "🖤"
                    }else{
                        content += "💜"
                    }
                }
                content += "\n"
            }
            
        //左對角線，重點：x == y
        case 3:
            set()
            for y in 1...number {
                for x in 1...number {
                    if x == y {
                        content += "🖤"
                    }else{
                        content += "💜"
                    }
                }
                content += "\n"
            }
            
        //右對角線，重點：x == y及將整數反轉.reversed()
        case 4:
            set()
            for y in (1...number).reversed() {
                for x in 1...number {
                    if x == y {
                        content += "🖤"
                    }else{
                        content += "💜"
                    }
                }
                content += "\n"
            }
        default:
            break
        }
        heartLabel.text = content
        numberLabel.text = "\(number)"
        
        
        //第二排UISegmentedControl
        switch segmentedTwo.selectedSegmentIndex {
        
        //畫十，重點：先判斷奇數和偶數時
        case 0:
            set()
            for y in 1...number {
                for x in 1...number {
                    if (number % 2 != 0) {
                        //奇數時
                        if (x == number / 2 + 1) || (y == number / 2 + 1) {
                            content += "🖤"
                        }else{
                            content += "💜"
                        }
                    }else{
                        //偶數時
                        if ((x == number / 2) || (x == number / 2 + 1)) ||
                            ((y == number / 2) || (y == number / 2 + 1)) {
                            content += "🖤"
                        }else{
                            content += "💜"
                        }
                    }
                }
                content += "\n"
            }
            
        //畫X，重點：判斷y == x || (x + y) == (number + 1)
        case 1:
            set()
            for y in 1...number {
                for x in 1...number {
                    if y == x || (x + y) == (number + 1) {
                        content += "🖤"
                    }else{
                        content += "💜"
                    }
                }
                content += "\n"
            }
            
        //畫X，中間不同，重點：先判斷y == x || (x + y) == (number + 1)
        case 2:
            set()
            for y in 1...number {
                for x in 1...number {
                    if y == x || (x + y) == (number + 1) {                        
                        if (number % 2 != 0) {
                            //奇數時
                            if (x == number / 2 + 1) && (x == y) {
                                content += "💙"
                            }else{
                                content += "🖤"
                            }
                        }else{
                            //偶數時
                            if ((x == number / 2) || (x == number / 2 + 1)) {
                                content += "💙"
                            }else{
                                content += "🖤"
                            }
                        }
                    }else{
                        content += "💜"
                    }
                }
                content += "\n"
            }
            
        //外框，重點：只要符合y == 1 || y == number || x == 1 || x == number
        case 3:
            set()
            for y in 1...number {
                for x in 1...number {
                    if y == 1 || y == number || x == 1 || x == number {
                        content += "🖤"
                    }else{
                        content += "💜"
                    }
                }
                content += "\n"
            }
            
        //梅花，重點：判斷是否符合 偶數：(y % 2 == 0 && x % 2 == 0) || 奇數：(y % 2 != 0 && x % 2 != 0)
        case 4:
            set()
            for y in 1...number {
                for x in 1...number {
                    if (y % 2 == 0 && x % 2 == 0) || (y % 2 != 0 && x % 2 != 0) {
                        content += "🖤"
                    }else{
                        content += "💜"
                    }
                }
                content += "\n"
            }
            
        //每排不同，重點：hearts[y - 1]
        case 5:
            set()
            let hearts = ["❤️","🧡","💛","💚","💙","💜","🖤","🤍","🤎","💝"]
            for y in 1...number {
                for x in 1...number {
                    content += hearts[y - 1]
                }
                content += "\n"
            }
        default:
            break
        }
        heartLabel.text = content
        numberLabel.text = "\(number)"
    }
    
}
