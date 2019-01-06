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
    public var a = 0.0
    public var c = "a"
    public var i = -1
    public var j = -1
    public var num:Array = [Double]()
    public var calcu:Array = [String]()
    func Push(){
        num.append(self.a)
    }
    func Pop() -> Double {
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
    @IBAction func TAN(_ sender: Any) {
        var temp = x.text!.remove(at: x.text!.index(before: x.text!.endIndex))
        if(temp=="π")
        {
            if(x.text != "")
            {
                x.text = "\(tan(Double(x.text!)!*Double.pi))"
            }
            else
            {
                x.text = "\(tan(Double.pi))"
            }
        }
        else
        {
            if(x.text != "")
            {
                x.text = "\(tan(Double(x.text!)!*(Double(String(temp)))!))"
            }
            else
            {
                x.text = "\(tan(Double(String(temp))!))"
            }
        }
    }
    @IBAction func COS(_ sender: Any) {
        var temp = x.text!.remove(at: x.text!.index(before: x.text!.endIndex))
        if(temp=="π")
        {
            if(x.text != "")
            {
                x.text = "\(cos(Double(x.text!)!*Double.pi))"
            }
            else
            {
                x.text = "\(cos(Double.pi))"
            }
        }
        else
        {
            if(x.text != "")
            {
                x.text = "\(cos(Double(x.text!)!*(Double(String(temp)))!))"
            }
            else
            {
                x.text = "\(cos(Double(String(temp))!))"
            }
        }
    }
    @IBAction func PI(_ sender: Any) {
        x.text = x.text! + "π"
    }
    @IBAction func SIN(_ sender: Any) {
        var temp = x.text!.remove(at: x.text!.index(before: x.text!.endIndex))
        if(temp=="π")
        {
            if(x.text != "")
            {
            x.text = "\(sin(Double(x.text!)!*Double.pi))"
            }
            else
            {
                x.text = "\(sin(Double.pi))"
            }
        }
        else
        {
            if(x.text != "")
            {
                x.text = "\(sin(Double(x.text!)!*(Double(String(temp)))!))"
            }
            else
            {
                x.text = "\(sin(Double(String(temp))!))"
            }
        }
    }
    @IBAction func sq(_ sender: Any) {
        if Double(x.text!)!>=0 {
            x.text = "\(sqrt(Double(x.text!)!))"
        }
        else
        {
            x.text=""
        }
    }
    @IBOutlet weak var x: UITextField!
    var a = 0.0
    var b = 0.0
    var c = "a"
    var d = 0.0
    var e = "a"
    var flag = 0
    var flag1 = 0
    var cal = calculate()
    var ca = calculate()
    @IBAction func sum(_ sender: Any) {
        if(x.text != "")
        {
            if(x.text != "-")
            {
                cal.a = Double(x.text!)!
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
        else if(cal.calcu[cal.j] != "+")
        {
            cal.calcu[cal.j] = "+"
        }
        flag=0
    }
    
    @IBAction func point(_ sender: Any) {
        if(x.text != ""&&x.text != "-"&&flag1==0)
        {
            x.text = x.text! + "."
            flag1=1
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
        if(x.text != "")
        {
            if(x.text != "-")
            {
                cal.a = Double(x.text!)!
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
        else if(cal.calcu[cal.j] != "-")
        {
            cal.calcu[cal.j] = "-"
        }
        flag=0
    }
    @IBAction func mul(_ sender: Any) {
        if(x.text != "")
        {
            if(x.text != "-")
            {
                cal.a = Double(x.text!)!
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
        else if(cal.calcu[cal.j] != "*")
        {
            cal.calcu[cal.j] = "*"
        }
        flag=0
    }
    @IBAction func dismul(_ sender: Any) {
        if(x.text != "")
        {
            if(x.text != "-")
            {
                cal.a = Double(x.text!)!
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
        else if(cal.calcu[cal.j] != "/")
        {
            cal.calcu[cal.j] = "/"
        }
        flag=0
    }
    @IBAction func result(_ sender: Any) {
        if (x.text != ""&&flag==0&&x.text != "-")
        {
        if(x.text != "-")
        {
            cal.a = Double(x.text!)!
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
                if(b != 0)
                {
                ca.a=a/b
                ca.Push()
                ca.add()
                }
                else
                {
                    ca.a=0
                    ca.Push()
                    ca.add()
                }
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
                if(ca.i >= 0)
                {
                    e=ca.Pops()
                    ca.ds()
                    if(e=="*")
                    {
                        d=ca.Pop()
                        ca.d()
                        ca.a=a+b*d
                        ca.Push()
                        ca.add()
                        
                    }
                    else if(e=="/")
                    {
                        d=ca.Pop()
                        ca.d()
                        ca.a=a+b/d
                        ca.Push()
                        ca.add()
                        
                    }
                    else
                    {
                        ca.c=e
                        ca.Pushs()
                        ca.adds()
                        ca.a=a+b
                        ca.Push()
                        ca.add()
                        ca.c="+"
                    }
                }
                else
                {
                    ca.a=a+b
                    ca.Push()
                    ca.add()
                }
            }
            if(ca.c=="-")
            {
                b=ca.Pop()
                ca.d()
                if(ca.i >= 0)
                {
                    e=ca.Pops()
                    ca.ds()
                    if(e=="*")
                    {
                        d=ca.Pop()
                        ca.d()
                        ca.a=a-b*d
                        ca.Push()
                        ca.add()
                        
                    }
                    else if(e=="/")
                    {
                        d=ca.Pop()
                        ca.d()
                        ca.a=a-b/d
                        ca.Push()
                        ca.add()
                        
                    }
                    else
                    {
                        ca.c=e
                        ca.Pushs()
                        ca.adds()
                        ca.a=a-b
                        ca.Push()
                        ca.add()
                        ca.c="-"
                    }
                }
                else
                {
                    ca.a=a-b
                    ca.Push()
                    ca.add()
                }
            }
        }
        x.text="\(ca.Pop())"
        ca.d()
        flag=1
        }
        if(x.text=="")
        {
            if(cal.i == 0)
            {
                x.text="\(cal.Pop())"
                cal.d()
            }
        }
        if(x.text == "-")
        {
            x.text=""
        }
    }
    @IBAction func empty(_ sender: Any) {
        x.text = ""
        b = 0
        a = 0
        d = 0
        e = "a"
        c = "a"
        cal.a = 0
        cal.c = "a"
        cal.j = -1
        cal.i = -1
        ca.a = 0
        ca.c = "a"
        ca.j = -1
        ca.i = -1
        flag = 0
        flag1 = 0
    }
    @IBAction func dot(_ sender: Any) {
        if(x.text != "")
        {
            x.text = "\(-Double(x.text!)!)"
        }
        else
        {
            x.text = "-"
        }
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


