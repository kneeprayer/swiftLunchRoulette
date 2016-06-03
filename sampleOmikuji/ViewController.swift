//
//  ViewController.swift
//  sampleOmikuji
//
//  Created by Eriko Ichinohe on 2016/06/03.
//  Copyright © 2016年 Eriko Ichinohe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var btnUranai: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnTap(sender: UIButton) {
        
        //占いの結果を配列で用意する
        var omikuji = ["大吉","吉","中吉","小吉","末吉","凶","大凶"]
        
        //占いのどれか一つをランダムに選ぶ
        var r = Int(arc4random()) % omikuji.count
        
        //アラートをつくる
        var alertController = UIAlertController(title: "今日の運勢", message: omikuji[r], preferredStyle: .Alert)
        
        //OKボタン追加
        //handler に自作関数を設置
        //設置した自作関数の中で、画像の切り替え表示処理を行う
        alertController.addAction(UIAlertAction(title: "OK", style: .Default, handler:{action in self.kekka()}))
        
        //アラートを表示
        presentViewController(alertController, animated: true, completion: nil)
        
    }
    
    //引数を活用することで処理が可能！
    func kekka(){
        //ここに画像の表示処理を記述
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

