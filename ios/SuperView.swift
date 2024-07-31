import SwiftUI

@objc class SuperViewWrapper: NSObject {
    @objc static func getView() -> UIView {
        let hostingController = UIHostingController(rootView: SuperView())
        let view = hostingController.view
        view?.translatesAutoresizingMaskIntoConstraints = false
        return view!
    }
}

struct SuperView: View {
    var body: some View {
       VStack {
            Text("Hello, SwiftUI!")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding()
            Spacer()
        }
    }
}
