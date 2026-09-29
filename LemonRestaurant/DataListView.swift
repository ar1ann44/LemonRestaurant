//
//  DataListView.swift
//  LemonRestaurant
//
//  Created by Ariana Osuna  on 26/09/26.
//

import SwiftUI

struct DataListView: View {
    
    var studentList:[String] = ["Ariana", "Eric", "Leo"]
    var showList:[String] = ["The Walking Dead", "Better Call Saul", "The Office", "Black Mirror", "Severance"]
    
    var body: some View {
        List {
            Section(header: Text("Students")) {
                ForEach(studentList,id:\.self) { student in
                    Text(student)
                }
            }
            
            Section(header: Text("Favorites TV shows - new section")) {
                ForEach(showList,id:\.self) { show in
                    Text(show)
                }
            }
        }
        
        
    }
}

#Preview {
    DataListView()
}
