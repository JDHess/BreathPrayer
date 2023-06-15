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
            ExerciseRow().background(Image("Beach").resizable().aspectRatio(contentMode: .fill))
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
struct ExerciseRow: View {
    var body: some View{
        
        ScrollView {
            LazyVStack {
                ForEach(1...1000, id: \.self) { value in
                    Group {
                        Group{
                            Intro()
                            Notes()
                            Report()
                        }
                        Group{
                            Joshua1919()
                            Chronicles2309309()
                            Group{
                                Psalm3333()
                                Psalm3535()
                                Psalm4848()
                                Psalm710710()
                                Psalm1689()
                            }
                            Group {
                                //Isaiah41104110()
                                Jeremiah29112911()
                                Lamentations32223()
                                Zephaniah317317()
                                Group{
                                    Matthew6868()
                                    Matthew11281128()
                                }
                                Group{
                                    Mark924924()
                                    Mark10271027()
                                }
                            }
                            Group{
                                Group {
                                    Romans83839()
                                    Romans15131513()
                                }
                                Group {
                                    Corinthians25757()
                                    Corinthians212910()
                                    
                                }
                                Group{
                                    Philippians47471()
                                    Philippians47472()
                                    Philippians4848()
                                    Philippians413413()
                                }
                            }
                            Group {
                                Thessalonians223333()
                                Timothy221717()
                                Hebrews10231023()
                                Peter5757()
                                John418418()
                            }
                        }
                    }
                }
            }
        }
    }
}

//MARK: Struct Info Section
struct Intro: View {
    var body: some View{
        VStack{
            Text("Breath Prayer").font(.title2).fontWeight(.semibold).padding(.horizontal, 16)
            Text("~ Breathe in Scritptue ~").font(.title2).fontWeight(.semibold).padding(.horizontal, 16)
        Text("Breathe in and out")
                .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("Think of God's Word")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("Start a conversation with God")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("Memorize Scripture")
                .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray).padding(.bottom)
            Text("⬇︎ Scroll Down ⬇︎")
                .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.black).padding(.bottom)

        }.background(Color.white).frame(width: 400, height: 400)
        
    }
}
struct Notes: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View{
        
        VStack{
            Text("App Instructions").font(.title2).fontWeight(.semibold).padding(.horizontal, 16).foregroundColor(.black)
            Image("Silent")
            Text("(Turn on volume)")
                .font(.subheadline).padding(.horizontal, 16).foregroundColor(.gray).padding(.bottom)
            
            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Infointro", type: "wav")
                
            } label: {
                Label("Play", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 150)
        
    }
}


struct Report: View {
    var body: some View{
        
        VStack{
            Text("Inappropriate Ads?").font(.title2).fontWeight(.semibold).padding(.horizontal, 16).foregroundColor(.black)
            Button(action: {
                
                if let yourURL = URL(string: "https://docs.google.com/forms/d/e/1FAIpQLSdwJDIO9H_WYBh3irsJgVFJnja6UEOJuV61HJTgkGtIatp3qg/viewform?usp=sf_link") {
                    UIApplication.shared.open(yourURL, options: [:], completionHandler: nil)
                }
                
            }) {
                Text("Report Them!")
            }.font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
        }.background(Color.white).frame(width: 300, height: 150)
    }
}
//MARK: Struct Sounds and Scripture
struct Joshua1919: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View{
        
        VStack{
            
            
            Text("Joshua 1:9").font(.title2).fontWeight(.semibold).padding(.horizontal, 16).foregroundColor(.black)
//Done
            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Joshua1919", type: "wav")
                
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 150)
        
    }
}

//MARK: 2 Chronicles


struct Chronicles2309309: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View{
        
        VStack{
            Text("2 Chronicles 30:9").font(.title2).fontWeight(.semibold).padding(.horizontal, 16).foregroundColor(.black)
            
        
//Done
            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Chronicles2309309", type: "wav")
                
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 150)
        
    }
}


struct Psalm3333: View {
    var body: some View{
        VStack{
            
            Text("Psalm 3:3").font(.title2).fontWeight(.semibold).padding(.horizontal, 16).foregroundColor(.black)
            
        
//Done
            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Psalm3333", type: "wav")
                
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 150)
        
    }
}
struct Psalm3535: View {
    var body: some View{
        VStack{
            Text("Psalm 3:5").font(.title2).fontWeight(.semibold).padding(.horizontal, 16).foregroundColor(.black)
            
        
//Done
            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Psalm3535", type: "wav")
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 150)
        
    }
}

struct Psalm4848: View {
    var body: some View{
        VStack{
            Text("Psalm 4:8").font(.title2).fontWeight(.semibold).padding(.horizontal, 16).foregroundColor(.black)
            
        //Done
            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Psalm4848", type: "wav")
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 150)
        
    }
}

struct Psalm710710: View {
    var body: some View{
        VStack{
            Text("Psalm 7:10").font(.title2).fontWeight(.semibold).padding(.horizontal, 16).foregroundColor(.black)
            
        
//Done
            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Psalm710710", type: "wav")
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 150)
        
    }
}

struct Psalm1689: View {
    var body: some View{
        VStack{
            Text("Psalm 16:8-9").font(.title2).fontWeight(.semibold).padding(.horizontal, 16).foregroundColor(.black)
            
        
//Done
            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Psalm1689", type: "wav")
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 150)
        
    }
}

//MARK: Isaiah


//MARK: Jeremiah
struct Jeremiah29112911: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View{
        
        VStack{
            Text("Jeremiah 29:11").font(.title2).fontWeight(.semibold).padding(.horizontal, 16).foregroundColor(.black)
            
//Done
            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Jeremiah29112911", type: "wav")
                
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 150)
        
    }
}



//MARK: Lamentations
struct Lamentations32223: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View{
        
        VStack{
            Text("Lamentations 3:22-23").font(.title2).fontWeight(.semibold).padding(.horizontal, 16).foregroundColor(.black)
            
        
//Done
            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Lamentations32223", type: "wav")
                
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 150)
        
    }
}


//MARK: Zephaniah
struct Zephaniah317317: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View{
        
        VStack{
            Text("Zephaniah 3:17").font(.title2).fontWeight(.semibold).padding(.horizontal, 16).foregroundColor(.black)
            
        
//Done
            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Zephaniah317317", type: "wav")
                
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 150)
        
    }
}

//MARK: Matthew
struct Matthew6868: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View{
        
        VStack{
            Text("Matthew 6:8").font(.title2).fontWeight(.semibold).padding(.horizontal, 16).foregroundColor(.black)
            
//Done
            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Matthew6868", type: "wav")
                
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 150)
        
    }
}


struct Matthew11281128: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View{
        
        VStack{
            Text("Matthew 11:28").font(.title2).fontWeight(.semibold).padding(.horizontal, 16).foregroundColor(.black)
            
        
//Done
            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Matthew11281128", type: "wav")
                
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 150)
        
    }
}



//MARK: Mark
struct Mark924924: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View{
        
        VStack{
            Text("Mark 9:24").font(.title2).fontWeight(.semibold).padding(.horizontal, 16).foregroundColor(.black)
            
        
//Done
            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Mark924924", type: "wav")
                
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 150)
        
    }
}


struct Mark10271027: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View{
        
        VStack{
            Text("Mark 10:27").font(.title2).fontWeight(.semibold).padding(.horizontal, 16).foregroundColor(.black)
            
//Done
            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Mark10271027", type: "wav")
                
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 150)
        
    }
}


//MARK: Romans
struct Romans83839: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View{
        
        VStack{
            Text("Romans 8:38-39").font(.title2).fontWeight(.semibold).padding(.horizontal, 16).foregroundColor(.black)
            
        
//Done
            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Romans83839", type: "wav")
                
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 150)
        
    }
}


struct Romans15131513: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View{
        
        VStack{
            Text("Romans 15:13").font(.title2).fontWeight(.semibold).padding(.horizontal, 16).foregroundColor(.black)
            
        
//Done
            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Romans15131513", type: "wav")
                
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 150)
        
    }
}

//MARK: Corinthians
struct Corinthians25757: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View{
        
        VStack{
            
            
            Text("2 Corinthians 5:7").font(.title2).fontWeight(.semibold).padding(.horizontal, 16).foregroundColor(.black)
//Done
            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Corinthians25757", type: "wav")
                
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 150)
        
    }
}

struct Corinthians212910: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View{
        
        VStack{
            
            
            Text("2 Corinthians 12:9-10").font(.title2).fontWeight(.semibold).padding(.horizontal, 16).foregroundColor(.black)
//Done
            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Corinthians212910", type: "wav")
                
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 150)
        
    }
}

//MARK: Philippians
struct Philippians47471: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View{
        
        VStack{
            Text("Philippians  4:7 (Version 1)").font(.title2).fontWeight(.semibold).padding(.horizontal, 16).foregroundColor(.black)
            
        
//Done
            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Philippians47471", type: "wav")
                
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 150)
        
    }
}

struct Philippians47472: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View{
        
        VStack{
            Text("Philippians  4:7 (Version 2)").font(.title2).fontWeight(.semibold).padding(.horizontal, 16).foregroundColor(.black)
            
        
//Done
            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Philippians47472", type: "wav")
                
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 150)
        
    }
}

struct Philippians4848: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View{
        
        VStack{
            Text("Philippians  4:8").font(.title2).fontWeight(.semibold).padding(.horizontal, 16).foregroundColor(.black)
            
        
//Done
            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Philippians4848", type: "wav")
                
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 150)
        
    }
}
struct Philippians413413: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View{
        
        VStack{
            Text("Philippians  4:13").font(.title2).fontWeight(.semibold).padding(.horizontal, 16).foregroundColor(.black)
            
        
//Done
            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Philippians413413", type: "wav")
                
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 150)
        
    }
}

//MARK: 2 Thessalonians
struct Thessalonians223333: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View{
        
        VStack{
            Text("2 Thessalonians  3:3").font(.title2).fontWeight(.semibold).padding(.horizontal, 16).foregroundColor(.black)
            
//Done
            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Thessalonians223333", type: "wav")
                
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
            Text("2 Timothy  1:7").font(.title2).fontWeight(.semibold).padding(.horizontal, 16).foregroundColor(.black)
            
        
//Done
            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Timothy221717", type: "wav")
                
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
            Text("Hebrews  10:23").font(.title2).fontWeight(.semibold).padding(.horizontal, 16).foregroundColor(.black)
            
            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Hebrews10231023", type: "wav")
                
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
            Text("1 Peter  5:7").font(.title2).fontWeight(.semibold).padding(.horizontal, 16).foregroundColor(.black)
            

            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Peter5757", type: "wav")
                
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
            
            Text("1 John  4:18").font(.title2).fontWeight(.semibold).padding(.horizontal, 16).foregroundColor(.black)
            
        

            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "John418418", type: "wav")
                
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 150)
        
    }
}

struct Footer: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View{
        
            Link("©JDHessWebDevelopment", destination: URL(string: "https://jdhesswebdevelopment.com/")!)
        
    }
}
