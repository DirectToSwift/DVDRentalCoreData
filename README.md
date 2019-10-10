<h2>CoreData to SwiftUI: DVDRental Example
  <img src="http://zeezide.com/img/d2s/D2SIcon.svg"
       align="right" width="128" height="128" />
</h2>

![Swift5.1](https://img.shields.io/badge/swift-5.1-blue.svg)
![macOS15](https://img.shields.io/badge/os-macOS-green.svg?style=flat)
![iOS13](https://img.shields.io/badge/os-iOS-green.svg?style=flat)
![watchOS6](https://img.shields.io/badge/os-watchOS-green.svg?style=flat)
![Travis](https://api.travis-ci.org/DirectToSwift/DirectToSwiftUI.svg?branch=branches/coredata&style=flat)

_Going fully declarative_: Direct to SwiftUI.

**WORK IN PROGRESS**

**Direct to SwiftUI**
is an adaption of an old 
[WebObjects](https://en.wikipedia.org/wiki/WebObjects) 
technology called 
[Direct to Web](https://developer.apple.com/library/archive/documentation/WebObjects/Developing_With_D2W/WalkThrough/WalkThrough.html#//apple_ref/doc/uid/TP30001015-DontLinkChapterID_5-TPXREF101).
This time for Apple's new framework:
[SwiftUI](https://developer.apple.com/xcode/swiftui/).
Instant 
[CRUD](https://en.wikipedia.org/wiki/Create,_read,_update_and_delete)
apps, configurable using 
[a declarative rule system](http://www.alwaysrightinstitute.com/swiftuirules/),
yet fully integrated with SwiftUI.

There is a blog entry explaining how to use this:
[Introducing Direct to SwiftUI](http://www.alwaysrightinstitute.com/directtoswiftui/).

This repo is a [Direct to SwiftUI](https://github.com/DirectToSwift/CoreDataToSwiftUI) example application
using CoreData.
It contains a copy of the
[Sakila example database](https://github.com/jOOQ/jOOQ/tree/master/jOOQ-examples/Sakila),
aka "DVDRental".

The sample contains targets to build iOS, watchOS and macOS applications.

There is a version of this using 
[ZeeQL](http://zeeql.io) to connect to SQL databases,
instead of
[CoreData](https://developer.apple.com/documentation/coredata):
[DVDRental](https://github.com/DirectToSwift/DVDRental).


## What it looks like

### Watch

<p float="left" valign="top">
<img width="200" src="http://www.alwaysrightinstitute.com/images/d2s/watchos-screenshots/01-homepage.png?v=2">
<img width="200" src="http://www.alwaysrightinstitute.com/images/d2s/watchos-screenshots/02-customers.png?v=2">
<img width="200" src="http://www.alwaysrightinstitute.com/images/d2s/watchos-screenshots/03-customer.png?v=2">
<img width="200" src="http://www.alwaysrightinstitute.com/images/d2s/watchos-screenshots/04-movies.png?v=2">
</p>

### Phone

<p float="left" valign="top">
<img width="320" src="http://www.alwaysrightinstitute.com/images/d2s/limited-entities.png">
<img width="320" src="http://www.alwaysrightinstitute.com/images/d2s/list-customer-default.png">
</p>

### macOS

Still too ugly to show, but works in a very restricted way ;-) 


## ER Diagram

<img src="https://www.jooq.org/img/sakila.png">


## Who

Brought to you by
[The Always Right Institute](http://www.alwaysrightinstitute.com)
and
[ZeeZide](http://zeezide.de).
We like
[feedback](https://twitter.com/ar_institute),
GitHub stars,
cool [contract work](http://zeezide.com/en/services/services.html),
presumably any form of praise you can think of.
