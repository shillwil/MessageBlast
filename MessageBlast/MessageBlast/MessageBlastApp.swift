//
//  MessageBlastApp.swift
//  MessageBlast
//
//  Created by William Shillingford on 12/2/21.
//

import SwiftUI

@main
struct MessageBlastApp: App {
	@State var handleText: String = ""
	@State var messageText: String = ""

    var body: some Scene {
        WindowGroup {
			ContentView(handleText: $handleText, messageText: $messageText)
        }
    }
}
