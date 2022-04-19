//
//  ContentView.swift
//  Scientists
//
//  Created by Slava Orlov on 18.04.2022.
//

import SwiftUI

struct ContentView: View {
    
    var tutors: [Tutor] = []
    
    var body: some View {
        NavigationView {
            List(tutors) { tutor in
                TutorCell(tutor: tutor)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(tutors: testData)
    }
}


struct TutorCell: View {
    let tutor: Tutor
    var body: some View {
        NavigationLink(destination: TutorDetail(name: tutor.name, headline: tutor.headline, bio: tutor.bio)) {
            VStack() {
                HStack {
                    Image(tutor.imageName).cornerRadius(40)
                    VStack(alignment: .leading) {
                        Text(tutor.name)
                            .multilineTextAlignment(.leading)
                            .padding(.leading)
                        Text(tutor.headline)
                            .font(.subheadline)
                            .foregroundColor(Color.gray)
                            .multilineTextAlignment(.leading)
                            .padding(.leading)
                    }
                }
            }
        }
        .navigationBarTitle(Text("Tutors"))
    }
}
