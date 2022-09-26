//
//  ContentView.swift
//  MainApp
//
//  Created by wanghui on 2022/9/26.
//

import SwiftUI

struct ContentView: View {
    @State private var text: String = ""
    private let fileManager = FileManager.default
    private let groupKey = "group.com.wanghui.group"
    
    var body: some View {
        VStack {
            Text("Main App")
            TextEditor(text: $text)
                .frame(height: 200)
                .border(.black, width: 1)
                .foregroundColor(Color.gray)
                .font(.custom("HelveticaNeue", size: 13))
                .lineSpacing(5)
            
            HStack {
                Button {
                    saveData()
                } label: {
                    Text("Save")
                }
                Spacer()
                Button {
                    readData()
                } label: {
                    Text("Read")
                }
            }.padding(EdgeInsets(top: 0, leading: 100, bottom: 0, trailing: 100))
        }
    }
    
    func saveData() {
        if let fileUrl =  fileManager.containerURL(forSecurityApplicationGroupIdentifier: groupKey) {
            
            let textPath = fileUrl.appendingPathComponent("log.txt")
            
            try? text.write(to: textPath, atomically: true, encoding: .utf8)
        }
    }
    
    func readData() {
        if let fileUrl =  fileManager.containerURL(forSecurityApplicationGroupIdentifier: groupKey) {
            
            print(fileUrl)
            
            let textPath = fileUrl.appendingPathComponent("log.txt")
            
            text = (try? String.init(contentsOf: textPath)) ?? ""
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
