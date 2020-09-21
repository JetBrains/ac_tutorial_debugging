//
//  ContentView.swift
//  iOSConferences
//
//  Created by jetbrains on 27.02.20.
//  Copyright © 2020 JetBrains. All rights reserved.
//

import SwiftUI

struct ConferenceList: View {
    var body: some View {
        NavigationView {
            List(conferencesData) { conference in
                NavigationLink(destination: ConferenceDetails(conference: conference)) {
                    VStack(alignment: .leading) {
                        Text(conference.name).font(.headline)
                        Text(conference.location).font(.subheadline)
                    }
                }
            }.navigationBarTitle("Conferences")
        }
    }
}

class ConferenceList_Previews: PreviewProvider {
    static var previews: some View {
        ConferenceList()
    }

}
