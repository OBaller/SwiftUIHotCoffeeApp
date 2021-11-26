//
//  ContentView.swift
//  Coffee+CoreData
//
//  Created by naseem on 25/11/2021.
//

import SwiftUI

struct ContentView: View {
   @ObservedObject var orderListVM: OrderListViewModel
    init() {
        self.orderListVM = OrderListViewModel()
    }
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
