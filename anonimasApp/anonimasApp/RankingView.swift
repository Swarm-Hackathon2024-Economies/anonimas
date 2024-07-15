import SwiftUI

struct RankingView: View {
    @State private var searchText = ""
    @State private var isPresented = false
    let teamScores = TeamScoreList().teamScores
    let gradient = LinearGradient(
        stops: [
            Gradient.Stop(color: Color(red: 0.21, green: 0.38, blue: 0.79), location: 0.00),
            Gradient.Stop(color: Color(red: 0.06, green: 0.16, blue: 0.4), location: 1.00),
        ],
        startPoint: UnitPoint(x: 0, y: 0),
        endPoint: UnitPoint(x: 1, y: 1)
    )

    var body: some View {
        ZStack(alignment: .top) {
            Image("Screen-Back")
                .resizable()
                .frame(height: 880)
            VStack(spacing: 0) {
                HStack(alignment: .top) {
                    Spacer()
                    VStack {
                        Text("Season 1")
                            .font(.title)
                            .bold()
                        Text("June 1 - July 31")
                    }
                    .foregroundColor(.white)
                    .padding(.leading,38)
                    Spacer()
                    Image(systemName: "questionmark.circle.fill")
                        .frame(width: 22, height: 22)
                        .foregroundColor(.white)
                        .padding(EdgeInsets(
                            top: 11,
                            leading: 0,
                            bottom: 11,
                            trailing: 16
                        ))
                }
                .padding(EdgeInsets(
                    top: 54,
                    leading: 0,
                    bottom: 19,
                    trailing: 0
                ))
                HStack(spacing: 15) {
                    ZStack {
                        Rectangle()
                            .frame(width: 100, height: 160)
                            .cornerRadius(16)
                            .foregroundColor(.white)
                            .shadow(radius: 2)
                        VStack(spacing:0) {
                            ZStack {
                                Circle()
                                    .frame(width: 32, height: 32)
                                    .foregroundColor(Color(red: 0.7, green: 0.7, blue: 0.7))
                                Text("2")
                                    .font(.title3)
                                    .foregroundColor(Color(red: 0.38, green: 0.38, blue: 0.38))
                            }
                            .offset(y:-16)
                            Image("TeamIcon-2")
                                .resizable()
                                .frame(width: 65, height: 60)
                                .padding(.bottom, 6)
                            Text(teamScores[1].name)
                                .font(.headline)
                                .bold()
                                .padding(.bottom, 6)
                            Text(teamScores[1].score)
                                .font(Font.custom("SF Pro", size: 16))
                                .padding(.bottom, 19)
                            Spacer(minLength: 0)
                        }
                        .frame(width: 100, height: 160)
                        .font(Font.custom("SF Pro", size: 16))
                    }
                    .offset(y:29)
                    ZStack {
                        Rectangle()
                            .frame(width: 100, height: 160)
                            .cornerRadius(16)
                            .foregroundColor(.white)
                            .shadow(radius: 2)
                        VStack(spacing:0) {
                            ZStack {
                                Circle()
                                    .frame(width: 32, height: 32)
                                    .foregroundColor(Color(red: 1, green: 0.86, blue: 0.1))
                                Text("1")
                                    .font(.title3)
                                    .foregroundColor(Color(red: 0.74, green: 0.49, blue: 0))
                            }
                            .offset(y:-16)
                            Image("TeamIcon-1")
                                .resizable()
                                .frame(width: 65, height: 60)
                                .padding(.bottom, 6)
                            Text(teamScores[0].name)
                                .font(.headline)
                                .bold()
                                .padding(.bottom, 6)
                            Text(teamScores[0].score)
                                .font(Font.custom("SF Pro", size: 16))
                                .padding(.bottom, 19)
                            Spacer(minLength: 0)
                        }
                        .frame(width: 100, height: 160)
                        .font(Font.custom("SF Pro", size: 16))
                    }
                    ZStack {
                        Rectangle()
                            .frame(width: 100, height: 160)
                            .cornerRadius(16)
                            .foregroundColor(.white)
                            .shadow(radius: 2)
                        VStack(spacing:0) {
                            ZStack {
                                Circle()
                                    .frame(width: 32, height: 32)
                                    .foregroundColor(Color(red: 0.71, green: 0.55, blue: 0.25))
                                Text("3")
                                    .font(.title3)
                                    .foregroundColor(Color(red: 0.48, green: 0.28, blue: 0.06))
                            }
                            .offset(y:-16)
                            Image("TeamIcon-3")
                                .resizable()
                                .frame(width: 85, height: 38)
                                .padding(.bottom, 16)
                                .padding(.top, 12)
                            Text(teamScores[2].name)
                                .font(.headline)
                                .bold()
                                .padding(.bottom, 6)
                            Text(teamScores[2].score)
                                .font(Font.custom("SF Pro", size: 16))
                                .padding(.bottom, 19)
                            Spacer(minLength: 0)
                        }
                        .frame(width: 100, height: 160)
                        .font(Font.custom("SF Pro", size: 16))
                    }
                    .offset(y:29)
                }
                .offset(y:19)
                Text("Jun 16 17:00")
                    .padding(.top, 50)
                    .foregroundColor(.black)
                ZStack {
                    ZStack {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 334, height: 36)
                            .background(
                                LinearGradient(
                                    stops: [
                                        Gradient.Stop(color: Color(red: 0.15, green: 0.37, blue: 0.62), location: 0.00),
                                        Gradient.Stop(color: Color(red: 0.17, green: 0.2, blue: 0.54), location: 1.00),
                                    ],
                                    startPoint: UnitPoint(x: 0, y: 0.5),
                                    endPoint: UnitPoint(x: 1, y: 0.5)
                                )
                            )
                            .cornerRadius(8)
                    }
                    HStack(spacing: 0) {
                        Text("Rank")
                            .padding(.leading, 12)
                        Text("Team")
                            .padding(.leading, 31)
                        Spacer()
                        Text("Points")
                            .padding(.trailing, 35)
                    }
                    .font(Font.custom("SF Pro", size: 14))
                    .foregroundColor(.white)
                }
                .padding(.top, 45)
                .frame(width: 334, height: 36)
                ZStack {
                    Rectangle()
                        .frame(width: 331, height: 270)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                        .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 4)
                    VStack(alignment: .leading, spacing: 0) {
                        ForEach(Array(teamScores.dropFirst(3)), id:\.self.id) { teamScore in
                            HStack {
                                Text(teamScore.id.description)
                                    .padding(.leading, 17)
                                    .bold()
                                    .foregroundColor(.blue)
                                Spacer()
                                Image("TeamIcon-\(teamScore.id)")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(height: 25)
                                Spacer()
                                Text(teamScore.name)
                                    .font(
                                        Font.custom("SF Pro", size: 17)
                                            .weight(.semibold)
                                    )
                                    .foregroundColor(Color(red: 0.25, green: 0.25, blue: 0.25))
                                Spacer()
                                Text(teamScore.score.description)
                                    .padding(.trailing, 17)
                                    .font(
                                        Font.custom("SF Pro", size: 17)
                                            .weight(.semibold)
                                    )
                                    .foregroundColor(Color(red: 0.25, green: 0.25, blue: 0.25))
                            }
                            .frame(width: 331, height: 45)
                        }
                    }
                }
                .padding(.top, 32)
                ZStack {
                    Rectangle()
                        .frame(width: 329, height: 50, alignment: .center)
                        .cornerRadius(25)
                        .foregroundStyle(
                            LinearGradient(
                                stops: [
                                    Gradient.Stop(color: Color(red: 0.2, green: 0.78, blue: 0.35), location: 0.00),
                                    Gradient.Stop(color: Color(red: 0.17, green: 0.64, blue: 0.29), location: 1.00),
                                ],
                                startPoint: UnitPoint(x: 0.47, y: 0),
                                endPoint: UnitPoint(x: 0.47, y: 0.95)
                            )
                        )
                    Text("Select a team")
                        .font(
                            Font.custom("SF Pro", size: 24)
                        )
                        .foregroundColor(.white)
                }
                .padding(.top, 12)
            }
        }
        .offset(y:25)
    }
}

struct TeamScore: Identifiable {
    var id: Int
    var name: String
    var score: String
}

class TeamScoreList: ObservableObject {
    @Published var teamScores: [TeamScore] = [
        TeamScore(id: 1, name: "CowBoys", score: "1,614,123"),
        TeamScore(id: 2, name: "Cardinals", score: "1,314,423"),
        TeamScore(id: 3, name: "Giants", score: "1,14,329"),
        TeamScore(id: 4, name: "Jaguars", score: "921,242"),
        TeamScore(id: 5, name: "Eagles", score: "903,226"),
        TeamScore(id: 6, name: "Colts", score: "881,324"),
        TeamScore(id: 7, name: "Titans", score: "878,329"),
        TeamScore(id: 8, name: "Vikings", score: "813,322"),
        TeamScore(id: 9, name: "Bears", score: "800,132")
    ]
}


#Preview {
    RankingView()
}
