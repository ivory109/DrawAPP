//
//  CopyViewController.swift
//  DrawAPP
//
//  Created by User on 2021/5/24.
//

import UIKit

class CopyViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //第一排UISegmentedControl
//        @IBAction func changeSegmentedOne(_ sender: UISegmentedControl) {
//            switch sender.selectedSegmentIndex {
//            //10x10
//            case 0:
//                clear()
//                for y in 1...10 {
//                    for x in 1...10 {
//                        content += "💜"
//                    }
//                    content += "\n"
//                }
//
//            //直向第三排不同，重點：判斷x
//            case 1:
//                clear()
//                for y in 1...10 {
//                    for x in 1...10 {
//                        if x == 3 {
//                            content += "🖤"
//                        }else{
//                            content += "💜"
//                        }
//                    }
//                    content += "\n"
//                }
//
//            //橫向第七排不同，重點：判斷y
//            case 2:
//                clear()
//                for y in 1...10 {
//                    for x in 1...10 {
//                        if y == 7 {
//                            content += "🖤"
//                        }else{
//                            content += "💜"
//                        }
//                    }
//                    content += "\n"
//                }
//
//            //左對角線，重點：x == y
//            case 3:
//                clear()
//                for y in 1...10 {
//                    for x in 1...10 {
//                        if x == y {
//                            content += "🖤"
//                        }else{
//                            content += "💜"
//                        }
//                    }
//                    content += "\n"
//                }
//
//            //右對角線，重點：將整數反轉.reversed()
//            case 4:
//                clear()
//                for y in (1...10).reversed() {
//                    for x in 1...10 {
//                        if x == y {
//                            content += "🖤"
//                        }else{
//                            content += "💜"
//                        }
//                    }
//                    content += "\n"
//                }
//            default:
//                break
//            }
//            heartLabel.text = content
//        }
//
//        //第二排UISegmentedControl
//        @IBAction func changeSegmentedTwo(_ sender: UISegmentedControl) {
//            switch sender.selectedSegmentIndex {
//            //畫十，重點：判斷y和x是否有==5或6
//            case 0:
//                clear()
//                for y in 1...10 {
//                    for x in 1...10 {
//                        if x == 5 || x == 6 || y == 5 || y == 6 {
//                            content += "🖤"
//                        }else{
//                            content += "💜"
//                        }
//                    }
//                    content += "\n"
//                }
//
//            //畫X，重點：判斷y == x || (y + x) == 11
//            case 1:
//                clear()
//                for y in 1...10 {
//                    for x in 1...10 {
//                        if y == x || (y + x) == 11 {
//                            content += "🖤"
//                        }else{
//                            content += "💜"
//                        }
//                    }
//                    content += "\n"
//                }
//
//            //畫X，中間不同，重點：先判斷(x == 5 || x == 6) && (y == 5 || y == 6)
//            case 2:
//                clear()
//                for y in 1...10 {
//                    for x in 1...10 {
//                        if (x == 5 || x == 6) && (y == 5 || y == 6) {
//                            content += "🤍"
//                        }else if y == x || (y + x) == 11 {
//                            content += "🖤"
//                        }else{
//                            content += "💜"
//                        }
//                    }
//                    content += "\n"
//                }
//
//            //外框，重點：只要符合y == 1 || y == 10 || x == 1 || x == 10
//            case 3:
//                clear()
//                for y in 1...10 {
//                    for x in 1...10 {
//                        if y == 1 || y == 10 || x == 1 || x == 10 {
//                            content += "🖤"
//                        }else{
//                            content += "💜"
//                        }
//                    }
//                    content += "\n"
//                }
//
//            //梅花，重點：判斷是否符合 偶數：(y % 2 == 0 && x % 2 == 0) || 奇數：(y % 2 != 0 && x % 2 != 0)
//            case 4:
//                clear()
//                for y in 1...10 {
//                    for x in 1...10 {
//                        if (y % 2 == 0 && x % 2 == 0) || (y % 2 != 0 && x % 2 != 0) {
//                            content += "🖤"
//                        }else{
//                            content += "💜"
//                        }
//                    }
//                    content += "\n"
//                }
//
//            //每排不同，重點：hearts[y - 1]
//            case 5:
//                clear()
//                let hearts = ["❤️","🧡","💛","💚","💙","💜","🖤","🤍","🤎","💝"]
//                for y in 1...10 {
//                    for x in 1...10 {
//                        content += hearts[y - 1]
//                    }
//                    content += "\n"
//                }
//            default:
//                break
//            }
//            heartLabel.text = content
//        }    }
    


}
}
