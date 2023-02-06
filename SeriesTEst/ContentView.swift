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
            HStack {
                Text("N = \(N)")
                TextField("Enter N:", text: $N) }
            Text("Sum: \(calculateSum1(n: n, N: Int(N)!))")
            Text("Sum: \(calculateSum2(n: n, N: Int(N)!))")
            Text("Sum: \(calculateSum3(n: n, N: Int(N)!))")
        }
    }

    func calculateSum1(n: Int, N: Int) -> Double {
        // The function you want to sum
        func s1(n: Double) -> Double {
            return pow(-1, Double(n)) * Double((n/(n + 1)))
        }

        var sum = 0.0
        for i in 1...(2*N + 1) {
            sum += s1(n: Double(i))
        }

        return (sum - s1(n: Double(2*N + 1)))
    }
    
    func calculateSum2(n: Int, N: Int) -> Double {
        // The function you want to sum
        func s2a(n: Double) -> Double {
            return Double(2*n - 1)/Double(2*n)
        }
        func s2b(n: Double) -> Double {
            return Double(2*n)/Double(2*n + 1)
        }

        var sum = 0.0
        for i in 1...(N + 1) {
            sum += (s2b(n: Double(i)) - s2a(n: Double(i)))
        }

        return (sum - (s2b(n: Double(N + 1))) - s2a(n: Double(N + 1)) + 1)
    }
    
    func calculateSum3(n: Int, N: Int) -> Double {
        // The function you want to sum
        func s3(n: Double) -> Double {
            return 1/Double((2*n)*(2*n + 1))
        }

        var sum = 0.0
        for i in 1...(N + 1) {
            sum += s3(n: Double(i))
        }

        return (sum - s3(n: Double(N + 1)))
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
