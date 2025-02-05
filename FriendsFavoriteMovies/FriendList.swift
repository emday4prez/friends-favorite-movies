import SwiftUI
import SwiftData

struct FriendList: View {
    @Query(sort: \Friend.name) private var friends: [Friend]
    @Environment(\.modelContext) private var context
    
    var body: some View {
        List{
            ForEach(friends){ friend in
                Text(friend.name)
            }
        }
        .task{
            context.insert(Friend(name: "Elena"))
            context.insert(Friend(name: "Sam"))
        }
    }
}

#Preview {
    FriendList()
        .modelContainer(for: Friend.self, inMemory: true)
}
