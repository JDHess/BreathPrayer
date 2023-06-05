//
//  ContentView.swift
//  BreathPrayer
//
//  Created by Julie Hess on 6/2/23.
//

import SwiftUI
import AVKit
import GoogleMobileAds

//Create Main contnet
struct ContentView: View {
    var body: some View {
        VStack(spacing: 0){
            Header()
            AdView().frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 50)
            
            FeaturedExerciseRow().background(.teal)
            Spacer()
            Footer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct AdView : UIViewRepresentable {
    @State private var banner: GADBannerView = GADBannerView(adSize: GADAdSizeBanner)
    
    func makeUIView(context: UIViewRepresentableContext<AdView>) -> GADBannerView {
        banner.adUnitID = "ca-app-pub-5274632683914951/6447155861"

        let rootViewController = UIApplication
            .shared
            .connectedScenes
            .flatMap { ($0 as? UIWindowScene)?.windows ?? [] }
            .first { $0.isKeyWindow }
        
        banner.rootViewController = rootViewController?.rootViewController
        
        let frame = { () -> CGRect in
            return banner.rootViewController!.view.frame.inset(by: banner.rootViewController!.view.safeAreaInsets)
        }()
        let viewWidth = frame.size.width

        banner.adSize = GADCurrentOrientationAnchoredAdaptiveBannerAdSizeWithWidth(viewWidth)

        banner.load(GADRequest())
        return banner
    }
    
    func updateUIView(_ uiView: GADBannerView, context: UIViewRepresentableContext<AdView>) {
    }
}

struct Header: View {
    var body: some View{
        HStack{
            VStack{
                Text("BreathPrayer").font(.title3).fontWeight(.semibold).foregroundColor(.white)
            }
            Spacer()
            Image(systemName: "bird").resizable().frame(width: 50, height: 50, alignment: .center).cornerRadius(100).foregroundColor(.white)
            
        }.padding(.horizontal, 30)
            .background(Color(.gray).edgesIgnoringSafeArea(.all))
    }
}

//MARK: Struct Scroll Section
struct FeaturedExerciseRow: View {
    var body: some View {
        ScrollView (.vertical, showsIndicators: false){
            VStack(spacing: 2){
                
                Intro()
                
                ScrollView (.horizontal, showsIndicators: false){
                    HStack(spacing: 24){
                        Notes()
                        Brought()
                    }
                }
                
                ScrollView (.horizontal, showsIndicators: false){
                    HStack(spacing: 24){
                        Joshua1919()
                    }
                }
                ScrollView (.horizontal, showsIndicators: false){
                    HStack(spacing: 24){
                        Psalm3333()
                        Psalm3535()
                        Psalm4848()
                        Psalm710710()
                        Psalm1689()
                    }
                
                }
                ScrollView (.horizontal, showsIndicators: false){
                    HStack(spacing: 24){
                        Isaiah41104110()
                    }
                
                }
                //MARK: Jeremiah
                
                //MARK: Lamentations
                
                //MARK: Zephania
                
                //MARK: Matthew
                
                //MARK: Mark
                
                //MARK: Romans
                
                //MARK: 2 Chronicles
                
                //MARK: Philipians
                
                //MARK: Thessalonians
                

                ScrollView (.horizontal, showsIndicators: false){
                    HStack(spacing: 24){
                        Timothy221717()
                    }
                
                }
                
                ScrollView (.horizontal, showsIndicators: false){
                    HStack(spacing: 24){
                        Hebrews10231023()
                    }
                
                }
                ScrollView (.horizontal, showsIndicators: false){
                    HStack(spacing: 24){
                        Peter5757()
                    }
                
                }
                ScrollView (.horizontal, showsIndicators: false){
                    HStack(spacing: 24){
                        John418418()
                        
                    }
                
                }
                Divider()
                
                    
               
            }
        }
    }
}
//MARK: Struct Info Section
struct Intro: View {
    var body: some View{
        VStack{
            Image("MindfulBrushStrokes").resizable().aspectRatio(contentMode: .fit)
            Text("Breath Prayer").font(.title2).fontWeight(.semibold).padding(.horizontal, 16)
            Text("~ Breathe in Scritptue ~").font(.title2).fontWeight(.semibold).padding(.horizontal, 16)
        Text("Breath in and out")
                .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("Think of God's Word")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("Start a conversation with God")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("Memorize Scripture")
                .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray).padding(.bottom)

        }.background(Color.white).frame(width: 400, height: 400)
        
    }
}
struct Notes: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View{
        
        VStack{
            Text("App Instructions").font(.title2).fontWeight(.semibold).padding(.horizontal, 16)
            
        Text("Time: 23s")
                .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)

            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Infointro", type: "m4a")
                
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 150)
        
    }
}

struct Brought: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View{
        
        VStack{
            Text("Brought to you by:").font(.title2).fontWeight(.semibold).padding(.horizontal, 16)
            
        

            Link("JDHessWebDevelopment.com     ", destination: URL(string: "https://jdhesswebdevelopment.com/")!).font(.subheadline).padding(.top, 4).padding(.horizontal, 16)
            Text("MindfulBrushStrokes")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            
        }.background(Color.white).frame(width: 300, height: 150)
        
    }
}
//MARK: Struct Sounds and Scripture
struct Joshua1919: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View{
        
        VStack{
            Text("Joshua 1:9").font(.title2).fontWeight(.semibold).padding(.horizontal, 16)
            
        Text("Time: 2m 8s")
                .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)

            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Joshua1919", type: "m4a")
                
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 150)
        
    }
}
struct Psalm3333: View {
    var body: some View{
        VStack{
            Text("Psalm 3:3").font(.title2).fontWeight(.semibold).padding(.horizontal, 16)
            
        Text("Time: 2m 8s")
                .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)

            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Psalm3333", type: "m4a")
                
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 150)
        
    }
}
struct Psalm3535: View {
    var body: some View{
        VStack{
            Text("Psalm 3:5").font(.title2).fontWeight(.semibold).padding(.horizontal, 16)
            
        Text("Time: 2m 8s")
                .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)

            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Psalm3535", type: "m4a")
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 150)
        
    }
}

struct Psalm4848: View {
    var body: some View{
        VStack{
            Text("Psalm 4:8").font(.title2).fontWeight(.semibold).padding(.horizontal, 16)
            
        Text("Time: 2m 8s")
                .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)

            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Psalm4848", type: "m4a")
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 150)
        
    }
}

struct Psalm710710: View {
    var body: some View{
        VStack{
            Text("Psalm 7:10").font(.title2).fontWeight(.semibold).padding(.horizontal, 16)
            
        Text("Time: 2m 8s")
                .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)

            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Psalm710710", type: "m4a")
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 150)
        
    }
}

struct Psalm1689: View {
    var body: some View{
        VStack{
            Text("Psalm 16:8-9").font(.title2).fontWeight(.semibold).padding(.horizontal, 16)
            
        Text("Time: 2m 8s")
                .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)

            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Psalm1689", type: "m4a")
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 150)
        
    }
}

struct Isaiah41104110: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View{
        
        VStack{
            Text("Isaiah 41:10").font(.title2).fontWeight(.semibold).padding(.horizontal, 16)
            
        Text("Time: 2m 8s")
                .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)

            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Isaiah41104110", type: "m4a")
                
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 150)
        
    }
}

//MARK: 2 Timothy
struct Timothy221717: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View{
        
        VStack{
            Text("2 Timothy  1:7").font(.title2).fontWeight(.semibold).padding(.horizontal, 16)
            
        Text("Time")
                .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)

            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Joshua1919", type: "m4a")
                
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 150)
        
    }
}


//MARK: Hebrews
struct Hebrews10231023: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View{
        
        VStack{
            Text("Hebrews  10:23").font(.title2).fontWeight(.semibold).padding(.horizontal, 16)
            
        Text("Time")
                .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)

            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Joshua1919", type: "m4a")
                
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 150)
        
    }
}
//MARK: 1 Peter
struct Peter5757: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View{
        
        VStack{
            Text("1 Peter  5:7").font(.title2).fontWeight(.semibold).padding(.horizontal, 16)
            
        Text("Time")
                .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)

            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Joshua1919", type: "m4a")
                
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 150)
        
    }
}


//MARK: 1 John
struct John418418: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View{
        
        VStack{
            Text("1 John  4:18").font(.title2).fontWeight(.semibold).padding(.horizontal, 16)
            
        Text("Time")
                .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)

            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Joshua1919", type: "m4a")
                
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 150)
        
    }
}

struct Footer: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View{
        
        VStack{
            Link("©JDHessWebDevelopment", destination: URL(string: "https://jdhesswebdevelopment.com/")!)
        }
        
    }
}
