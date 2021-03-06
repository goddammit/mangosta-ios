//
//  AppDelegate.swift
//  Mangosta
//
//  Created by Tom Ryan on 3/11/16.
//  Copyright © 2016 Inaka. All rights reserved.
//

import UIKit
import XMPPFramework

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

	var window: UIWindow?
	var xmppController: XMPPController!
	#if MangostaREST
	var mongooseRESTController: MongooseAPI!
	#endif
	
	func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
		// Override point for customization after application launch.
		let dirPaths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)
		print("App Path: \(dirPaths)")

		return true
	}

	func applicationWillResignActive(application: UIApplication) {
		self.xmppController?.setXEP0352(false)
	}

	func applicationDidEnterBackground(application: UIApplication) {
		
	}

	func applicationWillEnterForeground(application: UIApplication) {
		// Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
	}

	func applicationDidBecomeActive(application: UIApplication) {
		self.xmppController?.setXEP0352(true)
	}

	func applicationWillTerminate(application: UIApplication) {
		self.xmppController?.setXEP0352(false)
	}


}
