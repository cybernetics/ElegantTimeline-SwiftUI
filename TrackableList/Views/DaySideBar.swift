// Kevin Li - 1:38 PM - 6/1/20

import SwiftUI

struct DaySideBar: View {

    let date: Date
    var color: Color? = nil

    var body: some View {
        VStack {
            abbreviatedDayOfWeek
            dayOfMonth
        }
        .frame(width: VisitPreviewConstants.sideBarWidth)
    }

}

private extension DaySideBar {

    var abbreviatedDayOfWeek: some View {
        Text(date.abbreviatedDayOfWeek.uppercased())
            .font(.caption)
            .foregroundColor(color ?? .gray)
    }

    var dayOfMonth: some View {
        Text(date.dayOfMonth)
            .fontWeight(.bold)
            .foregroundColor(color ?? .white)
    }
    
}

struct DaySideBar_Previews: PreviewProvider {

    static var previews: some View {
        DarkThemePreview {
            DaySideBar(date: Date())
        }
    }

}
