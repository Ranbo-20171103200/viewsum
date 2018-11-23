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
    public var num:Array = [Int]()
    init() {
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
        if(x.text != "")
        {
            if(x.text != "-")
            {
                cal.a = Int(x.text!)!
                cal.c = "+"
                x.text = ""
            }
            else
            {
                x.text = ""
            }
        }
        if(c=="-"||c=="*"||c=="/")
        {
            c = "+"
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
        if(a==0&&flag==0)
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
                    a = Int(x.text!)!
                    c = "-"
                    x.text = ""
                }
                else
                {
                    x.text = ""
                }
            }
            if(c=="+"||c=="*"||c=="/")
            {
                c="-"
            }
        }
    }
    @IBAction func mul(_ sender: Any) {
        if(x.text != "")
        {
            if(x.text != "-")
            {
                a = Int(x.text!)!
                c = "*"
                x.text = ""
            }
            else
            {
                x.text = ""
            }
        }
        if(c=="-"||c=="+"||c=="/")
        {
            c="*"
        }
    }
    @IBAction func dismul(_ sender: Any) {
        if(x.text != "")
        {
            if(x.text != "-")
            {
                a = Int(x.text!)!
                c = "/"
                x.text = ""
            }
            else
            {
                x.text = ""
            }
        }
        if(c=="+"||c=="*"||c=="-")
        {
            c="/"
        }
    }
    @IBAction func result(_ sender: Any) {
        if(c=="-")
        {
            if(x.text != "")
            {
                b = -Int(x.text!)!
                x.text = "\(a+b)"
            }
            else
            {
                x.text = "\(a)"
            }
        }
        if(cal.c=="+")
        {
            if(x.text != "")
            {
                b = Int(x.text!)!
                x.text = "\(cal.a+b)"
            }
            else
            {
                x.text = "\(a)"
            }
        }
        if(c=="*")
        {
            if(x.text != "")
            {
                b = Int(x.text!)!
                x.text = "\(a*b)"
            }
            else
            {
                x.text = "\(a)"
            }
        }
        if(c=="/")
        {
            if(x.text != "")
            {
                b = Int(x.text!)!
            }
            else
            {
                x.text = "\(a)"
            }
            if(b != 0)
            {
                x.text = "\(a/b)"
            }
        }
        c="a"
    }
    @IBAction func empty(_ sender: Any) {
        x.text = ""
        a = 0
        b = 0
        c = "a"
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

