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
    public var j = -1
    public var num:Array = [Int]()
    public var calcu:Array = [String]()
    func Push(){
        num.append(self.a)
    }
    func Pop() -> Int {
        return self.num.remove(at: self.i)
    }
    func Pushs(){
        calcu.append(self.c)
    }
    func Pops() -> String {
        return self.calcu.remove(at: self.j)
    }
    func add() {
        self.i = self.i + 1
    }
    func adds(){
        self.j = self.j + 1
    }
    func d() {
        self.i = self.i - 1
    }
    func ds(){
        self.j = self.j - 1
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
    var temp = 0
    var temp1 = 0
    var cal = calculate()
    var ca = calculate()
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
                cal.c = "+"
                cal.Push()
                cal.Pushs()
                cal.add()
                cal.adds()
                x.text = ""
            }
            else
            {
                x.text = ""
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
        if(x.text != "")
        {
            cal.a = Int(x.text!)!
            cal.c = "-"
            cal.Push()
            cal.Pushs()
            cal.add()
            cal.adds()
            x.text = ""
        }
        else
        {
            x.text = ""
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
                cal.c = "*"
                cal.Push()
                cal.Pushs()
                cal.add()
                cal.adds()
                x.text = ""
            }
            else
            {
                x.text = ""
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
                cal.c = "/"
                cal.Push()
                cal.Pushs()
                cal.add()
                cal.adds()
                x.text = ""
            }
            else
            {
                x.text = ""
            }
        }
    }
    @IBAction func result(_ sender: Any) {
        if(x.text != "")
        {
            cal.a = Int(x.text!)!
            cal.Push()
            cal.add()
        }
        while cal.i != -1{
            ca.a=cal.Pop()
            cal.d()
            ca.Push()
            ca.add()
        }
        while cal.j != -1 {
            ca.c=cal.Pops()
            cal.ds()
            ca.Pushs()
            ca.adds()
        }
        while ca.i != 0 {
            ca.c=ca.Pops()
            ca.ds()
            a=ca.Pop()
            ca.d()
            if(ca.c=="/")
            {
                b=ca.Pop()
                ca.d()
                ca.a=a/b
                ca.Push()
                ca.add()
            }
            if(ca.c=="*")
            {
                b=ca.Pop()
                ca.d()
                ca.a=a*b
                ca.Push()
                ca.add()
            }
            if(ca.c=="+")
            {
                b=ca.Pop()
                ca.d()
                ca.a=a+b
                ca.Push()
                ca.add()
            }
            if(ca.c=="-")
            {
                b=ca.Pop()
                ca.d()
                ca.a=a-b
                ca.Push()
                ca.add()
            }
        }
        x.text="\(ca.Pop())"
    }
    @IBAction func empty(_ sender: Any) {
        x.text = ""
        b = 0
        a = 0
        cal.a = 0
        cal.c = "a"
        cal.j = -1
        cal.i = -1
        ca.a = 0
        ca.c = "a"
        ca.j = -1
        ca.i = -1
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

