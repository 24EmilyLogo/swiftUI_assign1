//
//  ContentView.swift
//  swiftUI_assign1
//
//  Created by StudentAM on 2/26/24.
//

import SwiftUI
struct ContentView: View {
    @State private var count: Int = 0
    let incAmount = ["1", "2", "5", "10", "20"]
    @State private var selectedInc: Int = 0
    var body: some View {
        //Makes a Vertical Stack, similar to Column with flex
        VStack {
            //This is a text component telling the user how the app works
            Text("Click below to change the counter")
            //Text component for count of clicks
            Text("\(count)")
            
            //adds padding around the count text
                .padding()
            //Makes a Horizontal Stack, similar to Row with flex
            HStack{
                //Button component that calls the countUp function when clicked with the label "Increment"
                Button("Increment", action:{countUp()})
                //adds padding around button
                    .padding()
                //makes button have a blue background
                    .background(Color.blue)
                //makes the button text color white
                    .foregroundColor(.white)
                //makes the button corners rounded
                    .cornerRadius(10)
                
                //Button that calls countDown func when clicked witht the label "Decrement"
                Button("Decrement", action:{countDown()})
                    //padding around button
                    .padding()
                //background color blue
                    .background(Color.blue)
                //text color white
                    .foregroundColor(.white)
                //rounded corners
                    .cornerRadius(10)
                }
            
            //Text
            Text("Increment Amount")
            //padding
                .padding()
            //picker component
            Picker("", selection:$selectedInc){
                //ForEach loop checking the array incAmount
                ForEach(incAmount.indices, id:\.self) { index in Text(incAmount[index])}
            }
            //picker style
            .pickerStyle(.segmented)
        }
        .padding()
    }
    func countUp(){
        var incVal = Int(incAmount[selectedInc])
        count += 1 * incVal!
        if (count >= 50){
            count = 50
        }
    }
    func countDown(){
        var decVal = Int(incAmount[selectedInc])
        count -= 1 * decVal!
        if (count <= 0){
            count = 0
        }
    }
}

#Preview {
    ContentView()
}
