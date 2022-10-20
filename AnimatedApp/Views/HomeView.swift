//
//  HomeView.swift
//  AnimatedApp
//
//  Created by 彭智鑫 on 2022/10/19.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color("Background")
                .ignoresSafeArea()
            
            ScrollView {
                content
            }
        }
    }
    
    var content: some View {
        VStack(alignment: .leading, spacing: 0.0) {
            Text("Courses")
                .customFont(.largeTitle)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal, 20)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20.0) {
                    ForEach(courses) { course in
                        VCard(course: course)
                    }
                }
                .padding(20)
                .padding(.bottom, 10)
            }
            
            Text("Recents")
                .customFont(.title3)
                .padding(.horizontal, 20)
            
            VStack(spacing: 20.0) {
                ForEach(courseSections) { section in
                    HCard(section: section)
                }
            }
            .padding(20)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
