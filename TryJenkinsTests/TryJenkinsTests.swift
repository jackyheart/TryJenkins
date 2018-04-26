//
//  TryJenkinsTests.swift
//  TryJenkinsTests
//
//  Created by PIXERF_SG_WS_12 on 25/4/18.
//  Copyright © 2018 PIXERF_SG_WS_12. All rights reserved.
//

import Quick
import Nimble
@testable import TryJenkins

class TryJenkinsTests: QuickSpec {
    
    override func spec() {
        
        var viewController:ViewController!
        
        beforeEach {
            let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
            viewController = storyboard.instantiateInitialViewController() as! ViewController
            _ = viewController.view
        }
        
        describe("onViewLoaded") {
            context("whenViewAppear") {
                
                it("shouldContainsHelloJenkins") {
                    expect(viewController.lblHello.text).to(equal("Hello, Jenkins"))
                }
                
                it("shouldContainsButtonTryJenkins") {
                    expect(viewController.btnAction.titleLabel?.text).to(equal("Try Jenkins"))
                }
            }
        }
    }
}
