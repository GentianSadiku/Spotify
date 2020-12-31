//
//  MusicPlayer.swift
//  Spotify
//
//  Created by gentian sadiku on 31.12.20.
//

import SwiftUI

struct MusicPlayer: View {
    
    @Binding var isHidden: Bool
    @Binding var isPlaying: Bool
    
    @State private var playerOffSet: CGSize = .zero
    
    var body: some View {
        ZStack(alignment: .top) {
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.09240948409, green: 0.1576190889, blue: 0.2253419161, alpha: 1)) , Color(#colorLiteral(red: 0.265961051, green: 0.3859980702, blue: 0.5002948642, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing).edgesIgnoringSafeArea(.all)
            VStack {
                PlayerNavigationView(isHidden: $isHidden)
                PlayingSongView()
                PlayerControlView(isPlaying: $isPlaying)
            }
            .foregroundColor(.white)
            .padding(.horizontal, 2)
        }
        .offset(y: isHidden ? UIScreen.main.bounds.height : playerOffSet.height)
        .animation(.linear(duration: 0.3))
        .gesture(
            DragGesture()
                .onChanged { value in
                    guard value.translation.height >= 0 else { return }
                    playerOffSet = value.translation
                }
                .onEnded { value in
                    isHidden = value.translation.height > 200 ? true : false
                    playerOffSet = .zero
                }
        )
    }
}

struct MusicPlayer_Previews: PreviewProvider {
    static var previews: some View {
        MusicPlayer(isHidden: .constant(false), isPlaying: .constant(true))
    }
}

struct PlayerControlView: View {
    
    @Binding var isPlaying: Bool
    @State private var playingTime: CGFloat = 3.2
    
    var body: some View {
        VStack {
            VStack {
                Slider(value: $playingTime, in: 0 ... 10)
                    .foregroundColor(.white)
                    .accentColor(.white)
                HStack {
                    Text("0.48")
                    Spacer()
                    Text("-4.48")
                }
            }
            
            HStack {
                Image(systemName: "shuffle")
                    .resizable()
                    .frame(width:20, height:20)
                
                Spacer()
                
                Image(systemName: "backward.end.fill")
                    .resizable()
                    .frame(width:26,height:26)
                
                Spacer()
                
                Button(action: { isPlaying.toggle() }) {
                    Image(systemName: isPlaying ? "pause.circle.fill" : "play.circle.fill")
                        .resizable()
                        .frame(width:70,height:70)
                }
                
                Spacer()
                
                Image(systemName: "forward.end.fill")
                    .resizable()
                    .frame(width:26,height:26)
                
                Spacer()
                
                Image(systemName: "repeat")
                    .resizable()
                    .frame(width:20, height:20)
            }
        }
        .padding()
    }
}

struct PlayerNavigationView: View {
    
    @Binding var isHidden: Bool
    
    var body: some View {
        ZStack {
            Text("Man On The Moon III")
                .font(.headline)
                .fontWeight(.semibold)
            HStack {
                Button(action:{isHidden = true}) {
                    Image(systemName: "chevron.down")
                }
                Spacer()
                Button(action:{}) {
                    Text("•••")
                }
            }
        }
        .foregroundColor(.white)
        .padding()
    }
}

struct PlayingSongView: View {
    var body: some View {
        VStack {
            Image("kidCudi")
                .resizable()
                .aspectRatio(1, contentMode: .fit)
            HStack {
                VStack(alignment: .leading, spacing: 6) {
                    Text("Another Day")
                        .font(.largeTitle)
                        .bold()
                    Text("Kid Cudi")
                        .font(.title3)
                        .fontWeight(.regular)
                        .foregroundColor(Color.white.opacity(0.3))
                }
                Spacer()
                Button(action: {}) {
                    Image(systemName: "heart")
                        .font(.title)
                }
            }.padding(.top, 30)
        }.padding(.horizontal)
    }
}
