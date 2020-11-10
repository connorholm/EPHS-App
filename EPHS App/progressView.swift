import SwiftUI

struct ProgressBar: View {
    @Binding var value: Float
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle().frame(width: geometry.size.width , height: geometry.size.height)
                    .opacity(0.3)
                    .foregroundColor(Color(UIColor.systemTeal))
                
                Rectangle().frame(width: min(CGFloat(self.value)*geometry.size.width, geometry.size.width), height: geometry.size.height)
                    .foregroundColor(Color(UIColor.systemBlue))
                    .animation(.linear)
            }.cornerRadius(45.0)
        }
    }
}
struct progressView: View {
    @State var progressValue: Float = 0.0
    var currentHour = getTime(timeType: "hour")
    var currentMinute = getTime(timeType: "minute")
    var currentSecond = getTime(timeType: "second")
    @State var currentTime = getTime(timeType: "current")
    var body: some View {
        VStack {
            ProgressBar(value: $progressValue).frame(height: 20)
            Text(String(currentTime))
            Button(action: {
                self.startProgressBar()
            }) {
                Text("Start Progress")
            }.padding()
            
            Button(action: {
                self.resetProgressBar()
            }) {
                Text("Reset")
            }
            
            Spacer()
        }.padding()
    }
    
    func startProgressBar() {
            self.progressValue = Float(currentTime)/Float(24*3600)
        self.currentTime = getTime(timeType: "current")
    }
    
    func resetProgressBar() {
        self.progressValue = 0.0
    }
}

struct ProgressView_Previews: PreviewProvider {
    static var previews: some View {
    ProgressView()
    }
}
