//

//  ViewController.swift

//  Learn Japanese

//

//  Created by Finn Allen on 3/1/19.

//  Copyright © 2019 Finn Allen. All rights reserved.

//


import UIKit


class ViewController: UIViewController {


    private var jpnVocab = ["あ", "い", "う", "え", "お"] // stores japanese letter list

    private var engVocab  = ["a", "i", "u", "e", "o"] // english equivalent paralel array

    

    private var num = Int.random(in: 0 ... 4) // stores random number to get vocab at this index

    let jpnLetter = UILabel(frame: CGRect(x:0, y:0, width:200, height:21))

    

    let check = UILabel(frame: CGRect(x:150, y:400, width:200, height:21))

    

    override func viewDidLoad() {

        super.viewDidLoad()

        

        menu();

        

    }

    

    func menu()

    {

        

        for view in view.subviews{ // gets rid of all the buttons previous when menu is called

            view.removeFromSuperview()

        }

        

        let vowelBtn = UIButton(frame: CGRect(x: 10, y: 100, width: 100, height: 50))

        vowelBtn.backgroundColor = .red

        vowelBtn.setTitle("Vowels", for: .normal)

        vowelBtn.addTarget(self, action: #selector(vowelBtnAction), for: .touchUpInside)

        self.view.addSubview(vowelBtn)

        

        let kBtn = UIButton(frame: CGRect(x: 10, y: 175, width: 100, height: 50))

        kBtn.backgroundColor = .red

        kBtn.setTitle("ka - ko", for: .normal)

        kBtn.addTarget(self, action: #selector(kBtnAction), for: .touchUpInside)

        self.view.addSubview(kBtn)

        

        let gBtn = UIButton(frame: CGRect(x: 10, y: 250, width: 100, height: 50))

        gBtn.backgroundColor = .red

        gBtn.setTitle("ga - go", for: .normal)

        gBtn.addTarget(self, action: #selector(gBtnAction), for: .touchUpInside)

        self.view.addSubview(gBtn)

        

        let rBtn = UIButton(frame: CGRect(x: 10, y: 325, width: 100, height: 50))

        rBtn.backgroundColor = .red

        rBtn.setTitle("ra - ro", for: .normal)

        rBtn.addTarget(self, action: #selector(rBtnAction), for: .touchUpInside)

        self.view.addSubview(rBtn)

        

        let sBtn = UIButton(frame: CGRect(x: 10, y: 400, width: 100, height: 50))

        sBtn.backgroundColor = .red

        sBtn.setTitle("sa - so", for: .normal)

        sBtn.addTarget(self, action: #selector(sBtnAction), for: .touchUpInside)

        self.view.addSubview(sBtn)

        

        let tBtn = UIButton(frame: CGRect(x: 10, y: 475, width: 100, height: 50))

        tBtn.backgroundColor = .red

        tBtn.setTitle("ta - to", for: .normal)

        tBtn.addTarget(self, action: #selector(tBtnAction), for: .touchUpInside)

        self.view.addSubview(tBtn)

        

        let mBtn = UIButton(frame: CGRect(x: 10, y: 550, width: 100, height: 50))

        mBtn.backgroundColor = .red

        mBtn.setTitle("ma - mo", for: .normal)

        mBtn.addTarget(self, action: #selector(mBtnAction), for: .touchUpInside)

        self.view.addSubview(mBtn)

        

        let dBtn = UIButton(frame: CGRect(x: 10, y: 625, width: 100, height: 50))

        dBtn.backgroundColor = .red

        dBtn.setTitle("da - do", for: .normal)

        dBtn.addTarget(self, action: #selector(dBtnAction), for: .touchUpInside)

        self.view.addSubview(dBtn)

        

        let zBtn = UIButton(frame: CGRect(x: 10, y: 700, width: 100, height: 50))

        zBtn.backgroundColor = .red

        zBtn.setTitle("za - zo", for: .normal)

        zBtn.addTarget(self, action: #selector(zBtnAction), for: .touchUpInside)

        self.view.addSubview(zBtn)

        

        let hBtn = UIButton(frame: CGRect(x: 125, y: 100, width: 100, height: 50))

        hBtn.backgroundColor = .red

        hBtn.setTitle("ha - ho", for: .normal)

        hBtn.addTarget(self, action: #selector(hBtnAction), for: .touchUpInside)

        self.view.addSubview(hBtn)

        

        let bBtn = UIButton(frame: CGRect(x: 125, y: 175, width: 100, height: 50))

        bBtn.backgroundColor = .red

        bBtn.setTitle("ba - bo", for: .normal)

        bBtn.addTarget(self, action: #selector(bBtnAction), for: .touchUpInside)

        self.view.addSubview(bBtn)

        

        let pBtn = UIButton(frame: CGRect(x: 125, y: 250, width: 100, height: 50))

        pBtn.backgroundColor = .red

        pBtn.setTitle("pa - po", for: .normal)

        pBtn.addTarget(self, action: #selector(pBtnAction), for: .touchUpInside)

        self.view.addSubview(pBtn)

        

        let wBtn = UIButton(frame: CGRect(x: 125, y: 325, width: 100, height: 50))

        wBtn.backgroundColor = .red

        wBtn.setTitle("wa - n", for: .normal)

        wBtn.addTarget(self, action: #selector(wBtnAction), for: .touchUpInside)

        self.view.addSubview(wBtn)

    }

    

    @objc func vowelBtnAction(sender: UIButton!)

    {

        for view in view.subviews{ // gets rid of all the buttons previous when menu is called

            view.removeFromSuperview()

        }

        

        jpnVocab = ["あ", "い", "う", "え", "お"]

        engVocab  = ["a", "i", "u", "e", "o"]

        

        jpnLetter.center = CGPoint(x:160, y:285)

        jpnLetter.textAlignment = .center

        jpnLetter.font = jpnLetter.font.withSize(200)

        jpnLetter.text = jpnVocab[num]

        self.view.addSubview(jpnLetter)

        Quiz(); // add random as a new parameter so the letter is different

    }

    

    @objc func kBtnAction(sender: UIButton!)

    {

        for view in view.subviews{ // gets rid of all the buttons previous when menu is called

            view.removeFromSuperview()

        }

        

        jpnVocab = ["か", "き", "く", "け", "こ"]

        engVocab  = ["ka", "ki", "ku", "ke", "ko"]

        

        num = Int.random(in: 0 ... 4);

        

        jpnLetter.center = CGPoint(x:160, y:285)

        jpnLetter.textAlignment = .center

        jpnLetter.font = jpnLetter.font.withSize(200)

        jpnLetter.text = jpnVocab[num]

        self.view.addSubview(jpnLetter)

        Quiz(); // add random as a new parameter so the letter is different

    }

    

    @objc func gBtnAction(sender: UIButton!)

    {

        for view in view.subviews{ // gets rid of all the buttons previous when menu is called

            view.removeFromSuperview()

        }

        

        jpnVocab = ["が", "ぎ", "ぐ", "げ", "ご"]

        engVocab  = ["ga", "gi", "gu", "ge", "go"]

        

        num = Int.random(in: 0 ... 4);

        

        jpnLetter.center = CGPoint(x:160, y:285)

        jpnLetter.textAlignment = .center

        jpnLetter.font = jpnLetter.font.withSize(200)

        jpnLetter.text = jpnVocab[num]

        self.view.addSubview(jpnLetter)

        Quiz(); // add random as a new parameter so the letter is different

    }

    

    @objc func rBtnAction(sender: UIButton!)

    {

        for view in view.subviews{ // gets rid of all the buttons previous when menu is called

            view.removeFromSuperview()

        }

        

        jpnVocab = ["ら", "り", "る", "れ", "ろ"]

        engVocab  = ["ra", "ri", "ru", "re", "ro"]

        

        num = Int.random(in: 0 ... 4);

        

        jpnLetter.center = CGPoint(x:160, y:285)

        jpnLetter.textAlignment = .center

        jpnLetter.font = jpnLetter.font.withSize(200)

        jpnLetter.text = jpnVocab[num]

        self.view.addSubview(jpnLetter)

        Quiz(); // add random as a new parameter so the letter is different

    }

    

    @objc func sBtnAction(sender: UIButton!)

    {

        for view in view.subviews{ // gets rid of all the buttons previous when menu is called

            view.removeFromSuperview()

        }

        

        jpnVocab = ["さ", "し", "す", "せ", "そ"]

        engVocab  = ["sa", "shi", "su", "se", "so"]

        

        num = Int.random(in: 0 ... 4);

        

        jpnLetter.center = CGPoint(x:160, y:285)

        jpnLetter.textAlignment = .center

        jpnLetter.font = jpnLetter.font.withSize(200)

        jpnLetter.text = jpnVocab[num]

        self.view.addSubview(jpnLetter)

        Quiz(); // add random as a new parameter so the letter is different

    }

    

    @objc func tBtnAction(sender: UIButton!)

    {

        for view in view.subviews{ // gets rid of all the buttons previous when menu is called

            view.removeFromSuperview()

        }

        

        jpnVocab = ["た", "ち", "つ", "て", "と"]

        engVocab  = ["ta", "chi", "tsu", "te", "to"]

        

        num = Int.random(in: 0 ... 4);

        

        jpnLetter.center = CGPoint(x:160, y:285)

        jpnLetter.textAlignment = .center

        jpnLetter.font = jpnLetter.font.withSize(200)

        jpnLetter.text = jpnVocab[num]

        self.view.addSubview(jpnLetter)

        Quiz(); // add random as a new parameter so the letter is different

    }

    

    @objc func zBtnAction(sender: UIButton!)

    {

        for view in view.subviews{ // gets rid of all the buttons previous when menu is called

            view.removeFromSuperview()

        }

        

        jpnVocab = ["ざ", "じ", "ず", "ぜ", "ぞ"]

        engVocab  = ["za", "ji", "zu", "ze", "zo"]

        

        num = Int.random(in: 0 ... 4);

        

        jpnLetter.center = CGPoint(x:160, y:285)

        jpnLetter.textAlignment = .center

        jpnLetter.font = jpnLetter.font.withSize(200)

        jpnLetter.text = jpnVocab[num]

        self.view.addSubview(jpnLetter)

        Quiz(); // add random as a new parameter so the letter is different

    }

    

    @objc func dBtnAction(sender: UIButton!)

    {

        for view in view.subviews{ // gets rid of all the buttons previous when menu is called

            view.removeFromSuperview()

        }

        

        jpnVocab = ["だ", "さ", "ず", "で", "ど"]

        engVocab  = ["da", "sa", "zu", "de", "do"]

        

        num = Int.random(in: 0 ... 4);

        

        jpnLetter.center = CGPoint(x:160, y:285)

        jpnLetter.textAlignment = .center

        jpnLetter.font = jpnLetter.font.withSize(200)

        jpnLetter.text = jpnVocab[num]

        self.view.addSubview(jpnLetter)

        Quiz(); // add random as a new parameter so the letter is different

    }

    

    @objc func mBtnAction(sender: UIButton!)

    {

        for view in view.subviews{ // gets rid of all the buttons previous when menu is called

            view.removeFromSuperview()

        }

        

        jpnVocab = ["ま", "み", "む", "め", "も"]

        engVocab  = ["ma", "mi", "mu", "me", "mo"]

        

        num = Int.random(in: 0 ... 4);

        

        jpnLetter.center = CGPoint(x:160, y:285)

        jpnLetter.textAlignment = .center

        jpnLetter.font = jpnLetter.font.withSize(200)

        jpnLetter.text = jpnVocab[num]

        self.view.addSubview(jpnLetter)

        Quiz(); // add random as a new parameter so the letter is different

    }

    

    @objc func wBtnAction(sender: UIButton!)

    {

        for view in view.subviews{ // gets rid of all the buttons previous when menu is called

            view.removeFromSuperview()

        }

        

        jpnVocab = ["わ", "く", "る", "ん", "を"]

        engVocab  = ["wa", "ku", "ru", "n", "wo"]

        

        num = Int.random(in: 0 ... 4);

        

        jpnLetter.center = CGPoint(x:160, y:285)

        jpnLetter.textAlignment = .center

        jpnLetter.font = jpnLetter.font.withSize(200)

        jpnLetter.text = jpnVocab[num]

        self.view.addSubview(jpnLetter)

        Quiz(); // add random as a new parameter so the letter is different

    }

    

    @objc func hBtnAction(sender: UIButton!)

    {

        for view in view.subviews{ // gets rid of all the buttons previous when menu is called

            view.removeFromSuperview()

        }

        

        jpnVocab = ["は", "ひ", "ふ", "へ", "ほ"]

        engVocab  = ["ha", "hi", "fu", "he", "ho"]

        

        num = Int.random(in: 0 ... 4);

        

        jpnLetter.center = CGPoint(x:160, y:285)

        jpnLetter.textAlignment = .center

        jpnLetter.font = jpnLetter.font.withSize(200)

        jpnLetter.text = jpnVocab[num]

        self.view.addSubview(jpnLetter)

        Quiz(); // add random as a new parameter so the letter is different

    }

    

    @objc func bBtnAction(sender: UIButton!)

    {

        for view in view.subviews{ // gets rid of all the buttons previous when menu is called

            view.removeFromSuperview()

        }

        

        jpnVocab = ["ば", "び", "ぶ", "べ", "ぼ"]

        engVocab  = ["ba", "bi", "bu", "be", "bo"]

        

        num = Int.random(in: 0 ... 4);

        

        jpnLetter.center = CGPoint(x:160, y:285)

        jpnLetter.textAlignment = .center

        jpnLetter.font = jpnLetter.font.withSize(200)

        jpnLetter.text = jpnVocab[num]

        self.view.addSubview(jpnLetter)

        Quiz(); // add random as a new parameter so the letter is different

    }

    

    @objc func pBtnAction(sender: UIButton!)

    {

        for view in view.subviews{ // gets rid of all the buttons previous when menu is called

            view.removeFromSuperview()

        }

        

        jpnVocab = ["ぱ", "ぴ", "ぷ", "ぺ", "ぽ"]

        engVocab  = ["pa", "pi", "pu", "pe", "po"]

        

        num = Int.random(in: 0 ... 4);

        

        jpnLetter.center = CGPoint(x:160, y:285)

        jpnLetter.textAlignment = .center

        jpnLetter.font = jpnLetter.font.withSize(200)

        jpnLetter.text = jpnVocab[num]

        self.view.addSubview(jpnLetter)

        Quiz(); // add random as a new parameter so the letter is different

    }

    

    func Quiz()

    {

        num = Int.random(in: 0 ... 4);

        jpnLetter.text = jpnVocab[num]

        

        

        let button = UIButton(frame: CGRect(x: 50, y: 600, width: 100, height: 50))

        button.backgroundColor = .red

        button.setTitle(engVocab[0], for: .normal)

        button.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)

        self.view.addSubview(button)

        

        let button2 = UIButton(frame: CGRect(x: 160, y: 600, width: 100, height: 50))

        button2.backgroundColor = .red

        button2.setTitle(engVocab[1], for: .normal)

        button2.addTarget(self, action: #selector(buttonAction1), for: .touchUpInside)

        self.view.addSubview(button2)

        

        let button3 = UIButton(frame: CGRect(x: 270, y: 600, width: 100, height: 50))

        button3.backgroundColor = .red

        button3.setTitle(engVocab[2], for: .normal)

        button3.addTarget(self, action: #selector(buttonAction2), for: .touchUpInside)

        self.view.addSubview(button3)

        

        let button4 = UIButton(frame: CGRect(x: 100, y: 660, width: 100, height: 50))

        button4.backgroundColor = .red

        button4.setTitle(engVocab[3], for: .normal)

        button4.addTarget(self, action: #selector(buttonAction3), for: .touchUpInside)

        self.view.addSubview(button4)

        

        let button5 = UIButton(frame: CGRect(x: 240, y: 660, width: 100, height: 50))

        button5.backgroundColor = .red

        button5.setTitle(engVocab[4], for: .normal)

        button5.addTarget(self, action: #selector(buttonAction4), for: .touchUpInside)

        self.view.addSubview(button5)

        

        let button6 = UIButton(frame: CGRect(x: 170, y: 760, width: 100, height: 50))

        button6.backgroundColor = .red

        button6.setTitle("Menu", for: .normal)

        button6.addTarget(self, action: #selector(buttonAction5), for: .touchUpInside)

        self.view.addSubview(button6)

    }

    

    

    @objc func buttonAction(sender: UIButton!) {

        if num == 0

        {

            print("ok")

            check.removeFromSuperview()

            Quiz();

        } else {

            print("oops")

            check.text = "Oops! Try again!"

            self.view.addSubview(check)

        }

    }

    

    @objc func buttonAction1(sender: UIButton!) {

        if num == 1

        {

            print("ok")

            check.removeFromSuperview()

            Quiz();

        } else {

            print("oops")

            check.text = "Oops! Try again!"

            self.view.addSubview(check)

        }

    }

    

    @objc func buttonAction2(sender: UIButton!) {

        if num == 2

        {

            print("ok")

            check.removeFromSuperview()

            Quiz();

        } else {

            print("oops")

            check.text = "Oops! Try again!"

            self.view.addSubview(check)

        }

    }

    

    @objc func buttonAction3(sender: UIButton!) {

        if num == 3

        {

            print("ok")

            check.removeFromSuperview()

            Quiz();

        } else {

            print("oops")

            check.text = "Oops! Try again!"

            self.view.addSubview(check)

        }

    }

    

    @objc func buttonAction4(sender: UIButton!) {

        if num == 4

        {

            print("ok")

            check.removeFromSuperview()

            Quiz();

        } else {

            print("oops")

            check.text = "Oops! Try again!"

            self.view.addSubview(check)

        }

    }

    

    @objc func buttonAction5(sender: UIButton!) {

        print("returning to menu...")

        menu();

    }



}

