//
//  ContentView.swift
//  MecabSample
//
//  Created by 藤治仁 on 2023/05/16.
//

import SwiftUI

struct ContentView: View {
    @State private var text = "本日は晴天なり"
    @State private var analyzeText = ""
    private let tokenizer = Tokenizer()
    
    var body: some View {
        VStack {
            TextEditor(text: $text)
                .border(Color.gray, width: 1)
            Button {
                let parsedArray = tokenizer.parse(text)
                analyzeText = "\(parsedArray)"
            } label: {
                Text("解析")
            }

            TextEditor(text: $analyzeText)
                .border(Color.gray, width: 1)
                .disabled(true)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
