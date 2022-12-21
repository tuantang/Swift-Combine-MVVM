//
//  Swift_Combine_MVVM_iPadOSUITestsLaunchTests.swift
//  Swift-Combine-MVVM-iPadOSUITests
//
//  Created by Tuan Tang on 21/12/2022.
//

import XCTest

final class Swift_Combine_MVVM_iPadOSUITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
