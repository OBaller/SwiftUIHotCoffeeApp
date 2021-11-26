//
//  AddOrderViews.swift
//  Coffee+CoreData
//
//  Created by naseem on 25/11/2021.
//

import SwiftUI

struct AddOrderViews: View {
    
     @State var addOrderVM = AddOrderViewModel()
    
    var body: some View {
        NavigationView {
            Group {
                VStack {
                    TextField("Enter Text", text: self.$addOrderVM.name)
                    
                    Picker(selection: self.$addOrderVM.type, label: Text("")) {
                        Text("Cappuccino").tag(1)
                        Text("Regular").tag(2)
                        Text("Expresso").tag(3)
                    }.pickerStyle(SegmentedPickerStyle())
 
                    Button("Place Order") {
                        self.addOrderVM.saveOrder()
                    }
                    .padding(8)
                        .foregroundColor(Color.white)
                        .background(Color.green)
                        .cornerRadius(10)
                }
            }
            .padding()
            
            .navigationBarTitle("Add Order")
        }
    }
}

struct AddOrderViews_Previews: PreviewProvider {
    static var previews: some View {
        AddOrderViews()
    }
}
