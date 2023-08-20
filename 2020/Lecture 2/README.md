## MVVM and the Swift Type System

Conceptual overview of the architectural paradigm underlying the development of applications for iOS using SwiftUI: MVVM.  
In addition, a key underpinning of the Swift Programming Language, its type system, is explained.  
The Memorize demonstration continues, in corporating MVVM.

* [Watch Video ↗️](https://www.youtube.com/watch?v=4GjXq2Sr55Q)
* [Reading 1 ↗️](https://cs193p.sites.stanford.edu/sites/g/files/sbiybj16636/files/media/file/r1.pdf)
* [Assignment 1 ↗️](https://cs193p.sites.stanford.edu/sites/g/files/sbiybj16636/files/media/file/a1.pdf)

## MVVM Architectural Pattern

### Model-View-ViewModel

A "code organizing" architectual design pattern. Works in concert with the concept of "reactive" user-interfaces.
Must be adhered to for SwiftUI to work.
It is different from MVC (Model View Controller) that UIKit (old-style iOS) uses.

#### Model
* Model is trying to encapsulate the data and the logic about what application does.
* UI independent. 
* Model doesn't import SwiftUI or UIKit. 

#### View
* Always reflecting what's in the Model.
* View is pretty much stateless because all the state about logic is in the Model.
* View essentially just takes whatever the current state of the Model is and displays it.
* View is simple and writing in a declarative way.
* Automatically observes publications, pulls data and rebuilds.

#### ViewModel
* ViewModel bind the View to the Model. So the one change has happened in the Model, the View get reflected.
* ViewModel does have role a little bit as an interpreter of Model data.
* ViewModel is always trying to notice changes in the Model and it can do that any way that it wants.
* When data changes, ViewModel interpret that data, it might convert it to some other format, but when it does ist it publishes.
* ViewModel never has a pointer to its View.
* ViewModel processes User intent from View.

<img width="1350" alt="Screenshot 2023-08-20 at 14 54 35" src="https://github.com/AlexKovzhut/Stanford.CS193p/assets/17033916/6db0b2be-7275-4b1f-a5c6-53b4afb6ae10">
