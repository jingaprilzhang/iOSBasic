//: Playground - noun: a place where people can play

import UIKit
import XCPlayground

var str = "Hello, playground"

let myURL: NSURL = NSURL(string: "http://www.teachyourselfios.com/index.html")!

myURL.host!


let myView: UIView = UIView(frame: CGRectMake(0, 0, 100, 100))

myView.backgroundColor = UIColor.redColor()


var appleView: UIWebView = UIWebView(frame: CGRect(x: 0, y: 0, width: 400, height: 400))

var appleURL: NSURL

appleURL = NSURL(string: "http://www.apple.com")!

appleView.loadRequest(NSURLRequest(URL:appleURL))


XCPShowView("Sample View", view: appleView)


var phURL: NSURL

phURL = NSURL(string: "http://www.producthunt.com")!

let alertController = UIAlertController(title: "Do some things", message: "Please choose an action", preferredStyle: UIAlertControllerStyle.ActionSheet)

let defaultAction = UIAlertAction(title: "Send demo", style: UIAlertActionStyle.Default, handler: { (
    alertAction: UIAlertAction!) in })

let destructiveAction = UIAlertAction(title: "Erace my device", style: UIAlertActionStyle.Destructive) { (alertAction: UIAlertAction!) -> Void in
}

let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.Cancel, handler: nil)


alertController.addAction(defaultAction)
alertController.addAction(destructiveAction)
alertController.addAction(cancelAction)

XCPShowView("Alert", view: alertController.view)

