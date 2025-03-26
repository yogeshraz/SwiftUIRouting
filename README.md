1. Create a Route enum that conforms to the Routable protocol.

enum AppRoute: Routable {
    
    case destination
    case destination1
    case destination2
    case destination3
    
    var body: some View {
        switch self {
        case .destination:
            DestinationView()
        case .destination1:
            DestinationView1()
        case .destination2:
            DestinationView2()
        case .destination3:
            DestinationView3()
        }
    }

2. Create a Router object and wrap your RootView with a RoutingView.

struct ContentView: View {
    @EnvironmentObject var router: Router<AppRoute>
    var body: some View {
        RoutingView(stack: $router.stack) {
            DestinationView()
        }
    }
}


3. Handle navigation using the Router functions

/// Navigate to a specific destination by appending it to the stack.
	func push(destination: Destination)

/// Navigate to multiple destinations by appending them to the stack.
    func push(destination: [Destination])
    
/// Navigate back in the stack.
    func pop()

/// Navigate back in the stack by a specified count.
    func pop(atIndex: Int)

/// Navigate to the root of the stack by emptying it.
    func popToRoot()
