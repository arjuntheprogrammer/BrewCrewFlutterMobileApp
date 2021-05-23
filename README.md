# Brew Crew Flutter Mobile App

A new Flutter Firebase project to store Brew Preference of your team members.

---

## TERMINOLOGIES

### Stream

1. A source of asynchronous data events.
2. You listen on a stream to make it start generating events,
   and to set up listeners that receive the events.
3. You can process a stream using either await for or listen() from the Stream API.
4. There are two kinds of streams: single subscription or broadcast.

### Stream Builder

1. StreamBuilder is a Widget that can convert a stream of user defined objects, to widgets.
2. This takes two arguments:
   1. A stream
   2. A builder, that can convert the elements of the stream to widgets
3. Widget that builds itself based on the latest snapshot of interaction with a Stream.

### Provider

1. You can use it to provide a value (usually a data model object) to anywhere in the widget tree.
2. However, it won't help you update the widget tree when that value changes.

### GlobalKey

1. A key that is unique across the entire app.
2. Global keys uniquely identify elements. Global keys provide access to other objects that are associated with those elements, such as BuildContext. For StatefulWidgets, global keys also provide access to State.
3. GlobalKeys have two uses: they allow widgets to change parents anywhere in your app without losing state, or they can be used to access information about another widget in a completely different part of the widget tree.

---

## Features

1. Login and Signup using Email Id and Password through Firebase Auth.
2. List Brew Preferences of all users on home page using Firebase Firestore.
3. Update Brew Preferences and User name through settings icon in the App bar.
4. Logout User.

---

## Screenshots

---

<img src="https://user-images.githubusercontent.com/15984084/119261693-27434100-bbf6-11eb-9fdb-fcc18941d62a.png" width="300" height="630"/>
<img src="https://user-images.githubusercontent.com/15984084/119261695-29a59b00-bbf6-11eb-9814-aac7dc5d07a3.png" width="300" height="630"/>

<img src="https://user-images.githubusercontent.com/15984084/119261732-4c37b400-bbf6-11eb-9eea-7103c339d466.png" width="300" height="630"/>
<img src="https://user-images.githubusercontent.com/15984084/119261736-522d9500-bbf6-11eb-889a-d7669267b355.png" width="300" height="630"/>

<img src="https://user-images.githubusercontent.com/15984084/119261706-37f3b700-bbf6-11eb-962a-81ad647428bf.png" width="900" height="300"/>
<img src="https://user-images.githubusercontent.com/15984084/119261710-3aeea780-bbf6-11eb-9cea-4ae62dd5fcc8.png" width="900" height="325"/>

---
