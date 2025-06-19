//
//  ContentView.swift
//  Birthdays
//
//  Created by DIVYADEEP MISHRA on 17/06/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Query(sort: \Friend.birthday) private var friends: [Friend]
    @Environment(\.modelContext) private var context
    @State private var newName: String = ""
    @State private var newDate: Date = .now

    @State private var editingFriend: Friend?
    @State private var editingName: String = ""
    @State private var editingDate: Date = .now

    var body: some View {
        NavigationStack {
            List(friends) { friend in
                HStack {
                    if friend.isBirthdayToday {
                        Image(systemName: "birthday.cake")
                    }
                    Text(friend.name)
                        .bold(friend.isBirthdayToday)
                    Spacer()
                    Text(friend.birthday, format: .dateTime.month(.wide).day().year())
                }
                .contentShape(Rectangle()) // Makes the whole row tappable
                .contextMenu {
                    Button(role: .destructive) {
                        context.delete(friend)
                    } label: {
                        Label("Delete", systemImage: "trash")
                    }
                    Button {
                        editingFriend = friend
                        editingName = friend.name
                        editingDate = friend.birthday
                    } label: {
                        Label("Edit", systemImage: "pencil")
                    }
                }
            }
            .navigationBarTitle("Birthdays")
            .sheet(item: $editingFriend) { friend in
                NavigationStack {
                    Form {
                        Section {
                            TextField("Name", text: $editingName)
                            DatePicker("Birthday", selection: $editingDate, in: Date.distantPast...Date.now, displayedComponents: [.date])
                        }
                    }
                    .toolbar {
                        ToolbarItem(placement: .cancellationAction) {
                            Button("Cancel") {
                                editingFriend = nil
                            }
                        }
                        ToolbarItem(placement: .confirmationAction) {
                            Button("Save") {
                                if let index = friends.firstIndex(where: { $0.id == friend.id }) {
                                    let updatedFriend = friends[index]
                                    updatedFriend.name = editingName
                                    updatedFriend.birthday = editingDate
                                }
                                editingFriend = nil
                            }
                        }
                    }
                    .navigationTitle("Edit Friend")
                }
            }
            .safeAreaInset(edge: .bottom) {
                VStack(alignment: .center, spacing: 20) {
                    Text("New Birthday")
                        .font(.headline)
                    DatePicker(selection: $newDate, in: Date.distantPast...Date.now, displayedComponents: [.date]) {
                        TextField("Name", text: $newName)
                            .textFieldStyle(.roundedBorder)
                    }
                    Button("Save") {
                        if !newName.isEmpty {
                            let newFriend = Friend(name: newName, birthday: newDate)
                            context.insert(newFriend)
                            newName = ""
                            newDate = .now
                        }
                    }
                    .bold()
                }
                .padding()
                .background(.bar)
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Friend.self, inMemory: true)
}
