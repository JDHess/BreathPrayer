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
            Image("Silent").resizable().frame(width: 300).scaledToFit()
            Text("(Turn on volume)")
                .font(.subheadline).padding(.horizontal, 16).foregroundColor(.gray).padding(.bottom)
            
            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Infointro", type: "wav")
                
            } label: {
                Label("Play", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 300)
        
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
            
            
            

            Text("I will be courageous")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("And not discouraged")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("You are with me")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("Wherever I go")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("Joshua 1:9").font(.title2).fontWeight(.semibold).padding(.horizontal, 16).foregroundColor(.black).padding(.vertical, 4)
//Done
            
            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Joshua1919", type: "wav")
                
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 300)
        
    }
}

//MARK: 2 Chronicles


struct Chronicles2309309: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View{
        
        VStack{
            Text("You are gracious")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("And Merciful")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("You won't turn away")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("When I turn to You")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            
            Text("2 Chronicles 30:9").font(.title2).fontWeight(.semibold).padding(.horizontal, 16).foregroundColor(.black).padding(.vertical, 4)
            
        
//Done
            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Chronicles2309309", type: "wav")
                
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 300)
        
    }
}


struct Psalm3333: View {
    var body: some View{
        VStack{
            
            Text("You, oh Lord")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("Are a shield")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("And the lifter")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("Of my head")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("Psalm 3:3").font(.title2).fontWeight(.semibold).padding(.horizontal, 16).foregroundColor(.black).padding(.vertical, 4)
            
        
//Done
            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Psalm3333", type: "wav")
                
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 300)
        
    }
}
struct Psalm3535: View {
    var body: some View{
        VStack{
            Text("I lay down")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("And sleep")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("I wake again")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("Because You sustain me")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            
            Text("Psalm 3:5").font(.title2).fontWeight(.semibold).padding(.horizontal, 16).foregroundColor(.black).padding(.vertical, 4)
            
        
//Done
            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Psalm3535", type: "wav")
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 300)
        
    }
}

struct Psalm4848: View {
    var body: some View{
        VStack{
            Text("I lie down")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("And sleep")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("For You alone")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("Will keep me safe Lord")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            
            Text("Psalm 4:8").font(.title2).fontWeight(.semibold).padding(.horizontal, 16).foregroundColor(.black).padding(.vertical, 4)
            
        //Done
            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Psalm4848", type: "wav")
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 300)
        
    }
}

struct Psalm710710: View {
    var body: some View{
        VStack{
            Text("My shield")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("Is with You")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("Who saves")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("The upright heart")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("Psalm 7:10").font(.title2).fontWeight(.semibold).padding(.horizontal, 16).foregroundColor(.black).padding(.vertical, 4)
            
        
//Done
            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Psalm710710", type: "wav")
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 300)
        
    }
}

struct Psalm1689: View {
    var body: some View{
        VStack{
            Text("You are always")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("With me Lord")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("I will not be shaken")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("When you are beside me")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("I rejoice")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("And rest in saftey")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            
            Text("Psalm 16:8-9").font(.title2).fontWeight(.semibold).padding(.horizontal, 16).foregroundColor(.black).padding(.vertical, 4)
            
        
//Done
            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Psalm1689", type: "wav")
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 400)
        
    }
}

//MARK: Isaiah


//MARK: Jeremiah
struct Jeremiah29112911: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View{
        
        VStack{
            Text("I trust the plans")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("You, have for me")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("You give me hope")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("And a future")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            
            Text("Jeremiah 29:11").font(.title2).fontWeight(.semibold).padding(.horizontal, 16).foregroundColor(.black).padding(.vertical, 4)
            
//Done
            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Jeremiah29112911", type: "wav")
                
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 300)
        
    }
}



//MARK: Lamentations
struct Lamentations32223: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View{
        
        VStack{
            Text("Your steadfast love")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("Never stops")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("Your mercies")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("Never end")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("They are new")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("Every morning")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("Great is")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("Your faithfulness")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            
            Text("Lamentations 3:22-23").font(.title2).fontWeight(.semibold).padding(.horizontal, 16).foregroundColor(.black).padding(.vertical, 4)
            
        
//Done
            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Lamentations32223", type: "wav")
                
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 500)
        
    }
}


//MARK: Zephaniah
struct Zephaniah317317: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View{
        
        VStack{
            Text("With Your love")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("You calm my fears")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("You rejoice over me")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("With joyful songs")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            
            Text("Zephaniah 3:17").font(.title2).fontWeight(.semibold).padding(.horizontal, 16).foregroundColor(.black).padding(.vertical, 4)
            
        
//Done
            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Zephaniah317317", type: "wav")
                
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 300)
        
    }
}

//MARK: Matthew
struct Matthew6868: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View{
        
        VStack{
            Text("You know everything I need")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("Before I ask")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            
            Text("Matthew 6:8").font(.title2).fontWeight(.semibold).padding(.horizontal, 16).foregroundColor(.black).padding(.vertical, 4)
            
//Done
            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Matthew6868", type: "wav")
                
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 200)
        
    }
}


struct Matthew11281128: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View{
        
        VStack{
            Text("I give you")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("My burdens")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("And you give me")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("Rest")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            
            Text("Matthew 11:28").font(.title2).fontWeight(.semibold).padding(.horizontal, 16).foregroundColor(.black).padding(.vertical, 4)
            
        
//Done
            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Matthew11281128", type: "wav")
                
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 300)
        
    }
}



//MARK: Mark
struct Mark924924: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View{
        
        VStack{
            Text("Lord I believe")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("Help my unbelief")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("Mark 9:24").font(.title2).fontWeight(.semibold).padding(.horizontal, 16).foregroundColor(.black).padding(.vertical, 4)
            
        
//Done
            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Mark924924", type: "wav")
                
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 200)
        
    }
}


struct Mark10271027: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View{
        
        VStack{
            Text("With You")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("All things are possible")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            
            Text("Mark 10:27").font(.title2).fontWeight(.semibold).padding(.horizontal, 16).foregroundColor(.black).padding(.vertical, 4)
            
//Done
            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Mark10271027", type: "wav")
                
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 200)
        
    }
}


//MARK: Romans
struct Romans83839: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View{
        
        VStack{
            Text("Nothing")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("Can separate")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("Me")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("From Your love")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("Romans 8:38-39").font(.title2).fontWeight(.semibold).padding(.horizontal, 16).foregroundColor(.black).padding(.vertical, 4)
            
        
//Done
            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Romans83839", type: "wav")
                
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 300)
        
    }
}


struct Romans15131513: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View{
        
        VStack{
            Text("God of hope")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("I trust you")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("Fill me with joy")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("And peace")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("Romans 15:13").font(.title2).fontWeight(.semibold).padding(.horizontal, 16).foregroundColor(.black).padding(.vertical, 4)
            
        
//Done
            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Romans15131513", type: "wav")
                
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 300)
        
    }
}

//MARK: Corinthians
struct Corinthians25757: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View{
        
        VStack{
            Text("Help me live")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("By faith")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("And not")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("By sight")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            
            Text("2 Corinthians 5:7").font(.title2).fontWeight(.semibold).padding(.horizontal, 16).foregroundColor(.black).padding(.vertical, 4)
//Done
            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Corinthians25757", type: "wav")
                
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 300)
        
    }
}

struct Corinthians212910: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View{
        
        VStack{
            Text("Your grace is all")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("That I need")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("Your power works")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("Best in my weakness")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("When I am weak")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("You make me strong")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            
            Text("2 Corinthians 12:9-10").font(.title2).fontWeight(.semibold).padding(.horizontal, 16).foregroundColor(.black).padding(.vertical, 4)
//Done
            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Corinthians212910", type: "wav")
                
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 500)
        
    }
}

//MARK: Philippians
struct Philippians47471: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View{
        
        VStack{
            Text("Your peace")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("Will guard")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("My heart")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("And mind")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            
            Text("Philippians  4:7 (Version 1)").font(.title2).fontWeight(.semibold).padding(.horizontal, 16).foregroundColor(.black).padding(.vertical, 4)
            
        
//Done
            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Philippians47471", type: "wav")
                
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 300)
        
    }
}

struct Philippians47472: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View{
        
        VStack{
            Text("Guard my heart")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("And mind")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("With Your")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("Indescribable peace")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            
            Text("Philippians  4:7 (Version 2)").font(.title2).fontWeight(.semibold).padding(.horizontal, 16).foregroundColor(.black).padding(.vertical, 4)
            
        
//Done
            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Philippians47472", type: "wav")
                
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 300)
        
    }
}

struct Philippians4848: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View{
        
        VStack{
            Text("Turn my thoughts")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("To what is right")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("And true")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("Nobel and lovely")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("And pure")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("Admirable")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("And worthy")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("Of praise")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            
            Text("Philippians  4:8").font(.title2).fontWeight(.semibold).padding(.horizontal, 16).foregroundColor(.black).padding(.vertical, 4)
            
        
//Done
            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Philippians4848", type: "wav")
                
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 450)
        
    }
}
struct Philippians413413: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View{
        
        VStack{
            Text("I can do all things")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("Through Christ")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("Who gives")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("Me strength")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            
            Text("Philippians  4:13").font(.title2).fontWeight(.semibold).padding(.horizontal, 16).foregroundColor(.black).padding(.vertical, 4)
            
        
//Done
            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Philippians413413", type: "wav")
                
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 300)
        
    }
}

//MARK: 2 Thessalonians
struct Thessalonians223333: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View{
        
        VStack{
            Text("You are faithful")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("You will give me")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("Strength")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("And protect me")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            
            Text("2 Thessalonians  3:3").font(.title2).fontWeight(.semibold).padding(.horizontal, 16).foregroundColor(.black).padding(.vertical, 4)
            
//Done
            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Thessalonians223333", type: "wav")
                
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 300)
        
    }
}

//MARK: 2 Timothy
struct Timothy221717: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View{
        
        VStack{
            Text("You do not give me")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("A spirit of fear")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("But of power")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("Love and self control")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            
            
            Text("2 Timothy  1:7").font(.title2).fontWeight(.semibold).padding(.horizontal, 16).foregroundColor(.black).padding(.vertical, 4)
            
        
//Done
            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Timothy221717", type: "wav")
                
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 300)
        
    }
}


//MARK: Hebrews
struct Hebrews10231023: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View{
        
        VStack{
            Text("I hold on tight")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("To my hope in Your")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("You can be trusted")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("To keep your promise")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            
            
            Text("Hebrews  10:23").font(.title2).fontWeight(.semibold).padding(.horizontal, 16).foregroundColor(.black).padding(.vertical, 4)
            
            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Hebrews10231023", type: "wav")
                
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 300)
        
    }
}
//MARK: 1 Peter
struct Peter5757: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View{
        
        VStack{
            Text("I give You my worries")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("And cares")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("For You care")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("About me")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            
            Text("1 Peter  5:7").font(.title2).fontWeight(.semibold).padding(.horizontal, 16).foregroundColor(.black).padding(.vertical, 4)
            

            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "Peter5757", type: "wav")
                
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 300)
        
    }
}


//MARK: 1 John
struct John418418: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View{
        
        VStack{
            Text("There is no fear")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            Text("In Your love")
                    .font(.subheadline).padding(.top, 4).padding(.horizontal, 16).foregroundColor(.gray)
            
            
            Text("1 John  4:18").font(.title2).fontWeight(.semibold).padding(.horizontal, 16).foregroundColor(.black).padding(.vertical, 4)
            
        

            Button {
                //MARK: Add the meditation player screen
                playSound(sound: "John418418", type: "wav")
                
            } label: {
                Label("Pray", systemImage: "play.circle").font(.headline).foregroundColor(.white).padding(.vertical, 10).frame(maxWidth: .infinity).background(.black)
            }
        }.background(Color.white).frame(width: 300, height: 300)
        
    }
}

struct Footer: View {
    @State var audioPlayer: AVAudioPlayer!
    var body: some View{
        
            Link("©JDHessWebDevelopment", destination: URL(string: "https://jdhesswebdevelopment.com/")!)
        
    }
}
