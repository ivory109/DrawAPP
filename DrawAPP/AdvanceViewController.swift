import UIKit

class AdvanceViewController: UIViewController {
    @IBOutlet weak var shapeSegmented: UISegmentedControl!
    @IBOutlet weak var valueLabel: UILabel!
    @IBOutlet weak var heartLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    var content = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        set()
    }
    
    func set() {
        content = ""
        heartLabel.text = "💜"
        valueLabel.text = "1"
    }
    @IBAction func selectSegmented(_ sender: UISegmentedControl) {
        set()
        changeSlider(slider)
    }
    
    @IBAction func changeSlider(_ sender: UISlider) {
        
        var number = Int(sender.value)
        
        switch shapeSegmented.selectedSegmentIndex {
        
        //正方形
        case 0:
            set()
            for y in 1...number {
                for x in 1...number {
                    content += "💜"
                }
                content += "\n"
            }
            
        //三角形，重點：x <= y
        case 1:
            set()
            for y in 1...number {
                for x in 1...number {
                    if x <= y {
                        content += "💜"
                    }
                }
                content += "\n"
            }
            
        //金字塔
        case 2:
            set()
            for y in 1...number {
                for x in 1...number {
                    if y >= (number / 2 + 1) {
                        let center = (number / 2 + 1)
                        let count = y - center
                        
                        if (x >= center - count) && (x <= center + count) {
                            content += "💜"
                        }else{
                            content += "🖤"
                        }
                    }else{
                        content += "🖤"
                    }
                }
                content += "\n"
            }
            
        //菱形
        case 3:
            set()
            for y in 1...number {
                for x in 1...number {
                    if (number % 2 != 0) {
                        //奇數時
                        let center = (number / 2 + 1)
                        
                        if x == center || y == center {
                            content += "💜"
                        }else{
                            let count = center - (number - y - center) - 2
                            let count2 = (number - y)
                            
                            if (((x >= center - count) && (x <= center + count)) && y < center) ||
                                (((x >= center - count2) && (x <= center + count2)) && y > center)
                            {
                                content += "💜"
                            }else{
                                content += "🖤"
                            }
                        }
                        
                    }else{
                        //偶數時
                        if (x == number || y == number) {
                            content += "🖤"
                        }else{
                            let max = number - 1
                            let center = (number / 2)
                            
                            if x == center || y == center {
                                content += "💜"
                            }else{
                                let count = center - (max - y - center) - 2
                                let count2 = (max - y)
                                
                                if (((x >= center - count) && (x <= center + count)) && y < center) ||
                                    (((x >= center - count2) && (x <= center + count2)) && y > center)
                                {
                                    content += "💜"
                                }else{
                                    content += "🖤"
                                }
                            }
                        }
                    }
                }
                content += "\n"
            }
            
        //長方形，重點：y in 1..<number
        case 4:
            set()
            for y in 1..<number {
                for x in 1...number {
                    content += "💜"
                }
                content += "\n"
            }
        default:
            break
        }
        heartLabel.text = content
        valueLabel.text = "\(number)"
    }
}


