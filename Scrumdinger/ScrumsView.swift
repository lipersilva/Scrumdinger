//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Filipe Rodrigues da Silva on 25/08/24.
//

import SwiftUI

struct ScrumsView: View {
	let scrums: [DailyScrum]
	
    var body: some View {
		List(scrums) { scrum in
			CardView(scrum: scrum)
				.listRowBackground(scrum.theme.mainColor)
		}
    }
}

struct ScrumsView_Previews: PreviewProvider {
	static var previews: some View {
		ScrumsView(scrums: DailyScrum.sampleData)
	}
}
