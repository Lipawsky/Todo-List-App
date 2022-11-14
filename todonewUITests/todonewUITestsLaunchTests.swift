//
//  todonewUITestsLaunchTests.swift
//  todonewUITests
//


//Filename: todo
//Authors' name: Pengfei Du, Yingda Zhang, Abdul Ahad Khan
//StudentID: 301276081, 301275707, 301313321
//Date: 13 Nov 2022
//Date last modified : 13 Nov 2022
//App description:  a easy Todo List APP

import XCTest

final class todonewUITestsLaunchTests: XCTestCase {

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
