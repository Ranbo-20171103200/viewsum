//
//  ViewController.swift
//  viewsum
//
//  Created by s20171103200 on 2018/10/13.
//  Copyright © 2018年 s20171103200. All rights reserved.
//

import UIKit
class calculate
{
    public var a = 0
    public var c = "a"
    public var i = -1
    public var num:Array = [Int]()
    func Push(){
        num.append(self.a)
    }
    func Pop() -> Int {
        return self.num.remove(at: self.i)
    }
    func add() {
        self.i = self.i + 1
    }
    func d() {
        self.i = self.i - 1
    }
    init() {
    }
    deinit {
    }
}
class ViewController: UIViewController {
    @IBOutlet weak var x: UITextField!
    var a = 0
    var b = 0
    var c = "a"
    var i = 0
    var flag = 0
    var cal = calculate()
    @IBAction func sum(_ sender: Any) {
        if(cal.c=="-"||cal.c=="*"||cal.c=="/")
        {
            cal.c = "+"
        }
        if(x.text != "")
        {
            if(x.text != "-")
            {
                cal.a = Int(x.text!)!
                cal.Push()
                cal.add()
                cal.c = "+"
                x.text = ""
            }
            else
            {
                x.text = ""
            }
        }
        if(cal.c=="+")
        {
            if(cal.i >= 0)
            {
                if(cal.i >= 1)
                {
                    a=cal.Pop()
                    cal.d()
                    b=cal.Pop()
                    cal.d()
                    cal.a=a+b
                    cal.Push()
                    cal.add()
                }
            }
        }
        if(cal.c=="-")
        {
            if(cal.i >= 0)
            {
                if(cal.i >= 1)
                {
                    a=cal.Pop()
                    cal.d()
                    b=cal.Pop()
                    cal.d()
                    cal.a=a-b
                    cal.Push()
                    cal.add()
                }
            }
        }
        if(cal.c=="*")
        {
            if(cal.i >= 0)
            {
                if(cal.i >= 1)
                {
                    a=cal.Pop()
                    cal.d()
                    b=cal.Pop()
                    cal.d()
                    cal.a=a*b
                    cal.Push()
                    cal.add()
                }
            }
        }
        if(cal.c=="/")
        {
            if(cal.i >= 0)
            {
                if(cal.i >= 1)
                {
                    a=cal.Pop()
                    cal.d()
                    b=cal.Pop()
                    cal.d()
                    cal.a=b/a
                    cal.Push()
                    cal.add()
                }
            }
        }
    }
    @IBAction func num1(_ sender: Any) {
        x.text = x.text! + "1"
    }
    @IBAction func num2(_ sender: Any) {
        x.text = x.text! + "2"
    }
    @IBAction func num3(_ sender: Any) {
        x.text = x.text! + "3"
    }
    @IBAction func num4(_ sender: Any) {
        x.text = x.text! + "4"
    }
    @IBAction func num5(_ sender: Any) {
        x.text = x.text! + "5"
    }
    @IBAction func num6(_ sender: Any) {
        x.text = x.text! + "6"
    }
    @IBAction func num7(_ sender: Any) {
        x.text = x.text! + "7"
    }
    @IBAction func num8(_ sender: Any) {
        x.text = x.text! + "8"
    }
    @IBAction func num9(_ sender: Any) {
        x.text = x.text! + "9"
    }
    @IBAction func num0(_ sender: Any) {
        x.text = x.text! + "0"
    }
    @IBAction func dec(_ sender: Any) {
        if(cal.c=="+"||cal.c=="*"||cal.c=="/")
        {
            cal.c="-"
        }
        if(cal.a==0&&flag==0&&x.text=="")
        {
            x.text = x.text! + "-"
            flag = 1
        }
        else
        {
            if(x.text != "")
            {
                if(x.text != "-")
                {
                    cal.a = Int(x.text!)!
                    cal.Push()
                    cal.add()
                    cal.c = "-"
                    x.text = ""
                }
                else
                {
                    x.text = ""
                }
            }
            if(cal.c=="+")
            {
                if(cal.i >= 0)
                {
                    if(cal.i >= 1)
                    {
                        a=cal.Pop()
                        cal.d()
                        b=cal.Pop()
                        cal.d()
                        cal.a=a+b
                        cal.Push()
                        cal.add()
                    }
                }
            }
            if(cal.c=="-")
            {
                if(cal.i >= 0)
                {
                    if(cal.i >= 1)
                    {
                        a=cal.Pop()
                        cal.d()
                        b=cal.Pop()
                        cal.d()
                        cal.a=b-a
                        cal.Push()
                        cal.add()
                    }
                }
            }
            if(cal.c=="*")
            {
                if(cal.i >= 0)
                {
                    if(cal.i >= 1)
                    {
                        a=cal.Pop()
                        cal.d()
                        b=cal.Pop()
                        cal.d()
                        cal.a=a*b
                        cal.Push()
                        cal.add()
                    }
                }
            }
            if(cal.c=="/")
            {
                if(cal.i >= 0)
                {
                    if(cal.i >= 1)
                    {
                        a=cal.Pop()
                        cal.d()
                        b=cal.Pop()
                        cal.d()
                        cal.a=b/a
                        cal.Push()
                        cal.add()
                    }
                }
            }
        }
    }
    @IBAction func mul(_ sender: Any) {
        if(cal.c=="-"||cal.c=="+"||cal.c=="/")
        {
            cal.c="*"
        }
        if(x.text != "")
        {
            if(x.text != "-")
            {
                cal.a = Int(x.text!)!
                cal.Push()
                cal.add()
                cal.c = "*"
                x.text = ""
            }
            else
            {
                x.text = ""
            }
        }
        if(cal.c=="+")
        {
            if(cal.i >= 0)
            {
                if(cal.i >= 1)
                {
                    a=cal.Pop()
                    cal.d()
                    b=cal.Pop()
                    cal.d()
                    cal.a=a+b
                    cal.Push()
                    cal.add()
                }
            }
        }
        if(cal.c=="-")
        {
            if(cal.i >= 0)
            {
                if(cal.i >= 1)
                {
                    a=cal.Pop()
                    cal.d()
                    b=cal.Pop()
                    cal.d()
                    cal.a=a-b
                    cal.Push()
                    cal.add()
                }
            }
        }
        if(cal.c=="*")
        {
            if(cal.i >= 0)
            {
                if(cal.i >= 1)
                {
                    a=cal.Pop()
                    cal.d()
                    b=cal.Pop()
                    cal.d()
                    cal.a=a*b
                    cal.Push()
                    cal.add()
                }
            }
        }
        if(cal.c=="/")
        {
            if(cal.i >= 0)
            {
                if(cal.i >= 1)
                {
                    a=cal.Pop()
                    cal.d()
                    b=cal.Pop()
                    cal.d()
                    cal.a=b/a
                    cal.Push()
                    cal.add()
                }
            }
        }
    }
    @IBAction func dismul(_ sender: Any) {
        if(cal.c=="+"||cal.c=="*"||cal.c=="-")
        {
            cal.c="/"
        }
        if(x.text != "")
        {
            if(x.text != "-")
            {
                cal.a = Int(x.text!)!
                cal.Push()
                cal.add()
                cal.c = "/"
                x.text = ""
            }
            else
            {
                x.text = ""
            }
        }
        if(cal.c=="+")
        {
            if(cal.i >= 0)
            {
                if(cal.i >= 1)
                {
                    a=cal.Pop()
                    cal.d()
                    b=cal.Pop()
                    cal.d()
                    cal.a=a+b
                    cal.Push()
                    cal.add()
                }
            }
        }
        if(cal.c=="-")
        {
            if(cal.i >= 0)
            {
                if(cal.i >= 1)
                {
                    a=cal.Pop()
                    cal.d()
                    b=cal.Pop()
                    cal.d()
                    cal.a=a-b
                    cal.Push()
                    cal.add()
                }
            }
        }
        if(cal.c=="*")
        {
            if(cal.i >= 0)
            {
                if(cal.i >= 1)
                {
                    a=cal.Pop()
                    cal.d()
                    b=cal.Pop()
                    cal.d()
                    cal.a=a*b
                    cal.Push()
                    cal.add()
                }
            }
        }
        if(cal.c=="/")
        {
            if(cal.i >= 0)
            {
                if(cal.i >= 1)
                {
                    a=cal.Pop()
                    cal.d()
                    b=cal.Pop()
                    cal.d()
                    cal.a=b/a
                    cal.Push()
                    cal.add()
                }
            }
        }
    }
    @IBAction func result(_ sender: Any) {
        if(cal.c=="-")
        {
            if(x.text != "")
            {
                b = Int(x.text!)!
                x.text=""
                x.text = "\(cal.Pop()-b)"
                cal.d()
                cal.a = Int(x.text!)!
                cal.Push()
                cal.add()
            }
            else
            {
                x.text = "\(cal.a)"
            }
        }
        if(cal.c=="+")
        {
            if(x.text != "")
            {
                b = Int(x.text!)!
                x.text=""
                x.text = "\(cal.Pop()+b)"
                cal.d()
                cal.a = Int(x.text!)!
             //   cal.Push()
              //  cal.add()
            }
            else
            {
                x.text = "\(cal.a)"
            }
        }
        if(cal.c=="*")
        {
            if(x.text != "")
            {
                b = Int(x.text!)!
                x.text=""
                x.text = "\(cal.Pop()*b)"
                cal.d()
                cal.a = Int(x.text!)!
                cal.Push()
                cal.add()
            }
            else
            {
                x.text = "\(cal.a)"
            }
        }
        if(cal.c=="/")
        {
            if(x.text != "")
            {
                b = Int(x.text!)!
                x.text=""
            }
            else
            {
                x.text = "\(cal.Pop())"
            }
            if(b != 0)
            {
                x.text = "\(cal.Pop()/b)"
                cal.d()
                cal.a = Int(x.text!)!
                cal.Push()
                cal.add()
            }
        }
        cal.a=0
        a=0
        b=0
        cal.c="a"
    }
    @IBAction func empty(_ sender: Any) {
        x.text = ""
        cal.a = 0
        b = 0
        a = 0
        cal.c = "a"
        cal.i = -1
        flag = 0
    }
    @IBAction func dot(_ sender: Any) {
        x.text = x.text! + "."
    }
    @IBAction func delet(_ sender: Any) {
        if(x.text != "")
        {
            x.text!.remove(at: x.text!.index(before: x.text!.endIndex))
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }


}

