## MVVM and the Swift Type System

Conceptual overview of the architectural paradigm underlying the development of applications for iOS using SwiftUI: MVVM.  
In addition, a key underpinning of the Swift Programming Language, its type system, is explained.  
The Memorize demonstration continues, in corporating MVVM.

* [Watch Video ↗️](https://www.youtube.com/watch?v=4GjXq2Sr55Q)
* [Reading 1 ↗️](https://cs193p.sites.stanford.edu/sites/g/files/sbiybj16636/files/media/file/r1.pdf)
* [Assignment 1 ↗️](https://cs193p.sites.stanford.edu/sites/g/files/sbiybj16636/files/media/file/a1.pdf)

## MVVM Design Paradigm

### Model-View-ViewModel

A "code organizing" architectual design pattern. Works in concert with the concept of "reactive" user-interfaces.
Must be adhered to for SwiftUI to work.
It is different from MVC (Model View Controller) that UIKit (old-style iOS) uses.

<img width="1350" alt="Screenshot 2023-08-20 at 14 54 35" src="https://github.com/AlexKovzhut/Stanford.CS193p/assets/17033916/6db0b2be-7275-4b1f-a5c6-53b4afb6ae10">

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

## Varieties of Types

Stored vars - stored in memory
Computed vars - those whose value is the result of evaluating some code.
Constant lets - vars whose values never change.

Initializers - special functions that called when creating a struct or class.

#### Difference between struct and class
<img width="1328" alt="Screenshot 2023-08-20 at 15 05 10" src="https://github.com/AlexKovzhut/Stanford.CS193p/assets/17033916/1622c8e5-bf47-4ee4-b700-d3d52d53d575">

#### Generics
<img width="1272" alt="Screenshot 2023-08-20 at 15 07 07" src="https://github.com/AlexKovzhut/Stanford.CS193p/assets/17033916/35cffe8a-bfbd-44b0-ac96-5499142a92d9">
<img width="1188" alt="Screenshot 2023-08-20 at 15 09 27" src="https://github.com/AlexKovzhut/Stanford.CS193p/assets/17033916/e28bd3c0-78ae-4d39-9166-7c5c1df40d7e">
<img width="1191" alt="Screenshot 2023-08-20 at 15 09 36" src="https://github.com/AlexKovzhut/Stanford.CS193p/assets/17033916/6f7c2eb3-eee3-4f55-ab4a-bfb413df25ec">

#### Functions as Types
<img width="1221" alt="Screenshot 2023-08-20 at 15 13 51" src="https://github.com/AlexKovzhut/Stanford.CS193p/assets/17033916/ebdb9ef2-bca5-4c68-88e9-b1eb4bdc23d8">
<img width="1182" alt="Screenshot 2023-08-20 at 15 15 09" src="https://github.com/AlexKovzhut/Stanford.CS193p/assets/17033916/064af05f-246b-47f0-bf83-f443964934e9">













