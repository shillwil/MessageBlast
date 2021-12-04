//
//  ContentView.swift
//  MessageBlast
//
//  Created by William Shillingford on 12/2/21.
//

import SwiftUI

struct ContentView: View {
	@Binding var handleText: String
	@Binding var messageText: String
    var body: some View {
		VStack {
			handleTextView
			messageTextEditor

			HStack {
				Button {
					let copiedText = messageText.replacingOccurrences(of: "#handle#", with: handleText)
					let pasteboard = NSPasteboard.general
					pasteboard.clearContents()
					pasteboard.setString(copiedText, forType: .string)

				} label: { Text("Copy") }

				Button {
					handleText = ""
					messageText = ""
				} label: { Text("Clear") }
			}

			Spacer()
		}
		.frame(minWidth: 300, minHeight: 300)
    }

	private var handleTextView: some View {
		TextField("@Handle-Here", text: $handleText, prompt: nil)
	}

	private var messageTextEditor: some View {
		TextEditor(text: $messageText)
	}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
		ContentView(handleText: .constant(""), messageText: .constant("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Et tortor consequat id porta nibh. Feugiat nibh sed pulvinar proin gravida. In nibh mauris cursus mattis molestie a. Leo duis ut diam quam nulla. Non consectetur a erat nam at lectus urna. At augue eget arcu dictum varius duis. Diam maecenas sed enim ut sem viverra aliquet eget. Aliquet risus feugiat in ante metus. Fermentum posuere urna nec tincidunt praesent semper. Viverra ipsum nunc aliquet bibendum enim facilisis gravida neque. Etiam erat velit scelerisque in dictum non consectetur a erat. In mollis nunc sed id semper risus in. Ut venenatis tellus in metus vulputate eu scelerisque. Ullamcorper malesuada proin libero nunc consequat interdum varius sit amet. Semper risus in hendrerit gravida rutrum quisque non tellus orci. Quis auctor elit sed vulputate mi."))
    }
}
