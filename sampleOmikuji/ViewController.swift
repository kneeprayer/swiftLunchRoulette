//
//  ViewController.swift
//  sampleOmikuji
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var btnUranai: UIButton!
    
    @IBOutlet weak var myLunchImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnTap(sender: UIButton) {
        
        //ランチの種類を配列で用意する
        var omikuji = ["レチョン","スパゲティ","ラーメン","ハンバーグ","焼肉","ステーキー","寿司","カレー","そば","うどん"]
        
        //占いのどれか一つをランダムに選ぶ
        let r = Int(arc4random()) % omikuji.count
        
        //アラートをつくる
        let alertController = UIAlertController(title: "今日のランチ", message: omikuji[r], preferredStyle: .Alert)
        
        //OKボタン追加
        alertController.addAction(UIAlertAction(title: "OK", style: .Default, handler:{action in self.kekka(r)}))
        
        //アラートを表示
        presentViewController(alertController, animated: true, completion: nil)
        
    }
    
    //引数を活用することで処理が可能！
    func kekka(lunchMenuNum: Int){
        //ここに画像の表示処理を記述
        myLunchImage.image = UIImage(named: "\(lunchMenuNum).jpeg")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

