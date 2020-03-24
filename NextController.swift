//
//  NextController.swift
//  3_sw_gacha
//
//  Created by kohari on 2020/03/24.
//  Copyright © 2020 kohari. All rights reserved.
//

import UIKit

class NextController: UIViewController {
    
    @IBOutlet  var backImgae: UIImageView!
    
    @IBOutlet  var tree0: UIImageView!
    @IBOutlet var tree1: UIImageView!
    @IBOutlet var tree2: UIImageView!
    @IBOutlet var tree3: UIImageView!
    @IBOutlet var tree4: UIImageView!
    @IBOutlet var tree5: UIImageView!
    
    
    
    
    
    
    var characterArray: [UIImage]!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let number = Int.random(in: 0..<3)
        
        characterArray = [UIImage(named: "aris.png")!,
                          UIImage(named: "bel.jpg")!,
                          UIImage(named: "snow.jpg")!]
        
        backImgae.image = characterArray[number]
        
    
        
    }
    
    //表示されるたびに呼び出されるメソッド
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        //アニメーションの中でも変形させるキーパスを設定
        let animation = CABasicAnimation(keyPath: "transform")
        
        //アニメーション開始時の数値
        animation.fromValue = NSNumber(value: 0)
        //アニメーション終了時の数値(piとは180度)
        animation.toValue = NSNumber(value: 2 * Double.pi)
        //Z軸中心のアニメーション
        animation.valueFunction = CAValueFunction(name: CAValueFunctionName.rotateZ)
        //アニメーションの速さ
        animation.duration = 5
        //何回アニメーションを繰り返すか(今回は無限)
        animation.repeatCount = Float.infinity
        
        //どのレイヤーをにアニメーションさせるか
        tree0.layer.add(animation,forKey: nil)
        tree1.layer.add(animation,forKey: nil)
        tree2.layer.add(animation,forKey: nil)
        tree3.layer.add(animation,forKey: nil)
        tree4.layer.add(animation,forKey: nil)
        tree5.layer.add(animation,forKey: nil)
        
    }
        
        
        
    

    

}
