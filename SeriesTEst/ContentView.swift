//
//  ContentView.swift
//  Series
//
//  Created by IIT PHYS 440 on 1/30/23.
//

import SwiftUI

struct ContentView: View {
    @State private var N = String(Int())
    @State private var n = 1
// hewl
    
    var body: some View {
        VStack {
            Text("N = \(N)")
            TextField("Enter N:", text: $N)
            Text("Sum: \(calculateSum(n: n, N: Int(N)!))")
        }
    }

    func calculateSum(n: Int, N: Int) -> Double {
        // The function you want to sum
        func s1(n: Double) -> Double {
            return pow(-1, Double(n)) * Double((n/(n + 1)))
        }

        var sum = 0.0
        for i in 0...2*N {
            sum += s1(n: Double(i))
        }

        return sum
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
