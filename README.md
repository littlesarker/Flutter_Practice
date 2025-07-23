# Flutter_Practice
Flutter Learning

![dart](https://github.com/littlesarker/Flutter_Practice/assets/61264159/e6695b7a-5102-4864-83f6-8ef5dc7129f8)![flutter](https://github.com/littlesarker/Flutter_Practice/assets/61264159/44a17eff-7b7d-495a-a845-dfe7a334edb8)


![b2c119ec3e914b3a8ef6ec741e8d7f9a](https://github.com/user-attachments/assets/b664ba6b-3cf2-4847-83b9-cecc0c9c82c0)

# Flutter App Lifecycle

<img width="850" height="692" alt="image" src="https://github.com/user-attachments/assets/1ff1550c-6ce9-4d47-b83c-9916e9e6f7d5" />

# Resumed:
The app is in the foreground and actively responding to user input. This is the normal state for an app that is being used. 
# Inactive:
The app is in a transitional state, such as when a phone call is received or when the user switches to another app. The app is still running in the background but not accepting user input. 
# Paused:
The app is in the background and not visible to the user. It's still consuming memory but not actively processing user input. 
# Detached:
The app is being terminated and its UI is being removed. This state is often followed by the app's process being killed.



# Flutter widgets Lifecycle

<img width="893" height="346" alt="94idE" src="https://github.com/user-attachments/assets/a8a09cee-4a75-44a0-aec9-6a41d1ed74b8" />

# createState():
Called when a stateful widget is inserted into the tree. It creates and returns a new instance of the associated state object. 
# initState():
Called immediately after createState(). This is where you initialize data, properties, and potentially subscribe to streams. It's only called once per widget. 
# didChangeDependencies():
Called immediately after initState() and whenever the widget's dependencies change (e.g., InheritedWidget changes). It's often used to respond to data changes from parent widgets. 
# build():
Called whenever the widget needs to be re-rendered, either initially or after state changes. It describes the user interface of the widget. 
# didUpdateWidget():
Called when the widget is rebuilt with a new configuration. It provides access to both the old and new widgets. 
# deactivate():
Called when the widget is temporarily removed from the tree, such as during a rebuild. 
# dispose():
Called when the widget is permanently removed from the tree. This is where you should clean up resources like timers or streams to prevent memory leaks




