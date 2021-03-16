//
//  ContentView.swift
//  Shared
//
//  Created by Deep Sathwara on 2020-08-06.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var store: SandwichStore
   
    var body: some View {
        NavigationView{
            List {
                ForEach(store.sandwich) { sandwich  in
                    SandwichCell(sandwich: sandwich)
                }
                .onMove(perform: moveSandwiches)
                .onDelete(perform: deleteSandwiches)
                
                HStack {
                    Spacer()
                    Text("\(store.sandwich.count) Sandwiches").foregroundColor(.secondary)
                    Spacer()
                }
            }.navigationTitle("Sandwiches")
            .toolbar{
                #if os(iOS)
                EditButton()
                #endif
                Button("Add",action:makeSandwich)
            }
            //.foregroundColor(.blue)
            
            Text("Select a sandwich").font(.largeTitle)
        }
    }

    func makeSandwich(){
        withAnimation{
            store.sandwich.append(Sandwich(name: "Patty melt", ingredientCount: 3, isSpicy: true))
        }
    }
    
    func moveSandwiches(from: IndexSet, to: Int){
        withAnimation{
            store.sandwich.move(fromOffsets: from, toOffset: to)
        }
    }
    
    func deleteSandwiches(offsets:IndexSet){
        store.sandwich.remove(atOffsets: offsets)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(store: testStore )
            ContentView(store: testStore )
                .preferredColorScheme(.dark)
        }
    }
}

struct SandwichCell: View {
    var sandwich: Sandwich
    var body: some View {
        NavigationLink(destination: SandwichDetail(sandwich: sandwich)){
            Image(sandwich.thumbnailName).resizable()
                .frame(width: 40.0, height: 50.0)
                .cornerRadius(8)
            VStack(alignment: .leading) {
                Text(sandwich.name)
                Text("\(sandwich.ingredientCount) ingredients")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
        }
    }
}
