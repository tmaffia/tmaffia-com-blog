+++
title = 'Go Is Great, but Nothing Is Perfect'
url = '/posts/go-is-great-nothing-is-perfect'
date = 2024-10-20T22:01:49-05:00
draft = false
+++

It goes without saying that even the best programming languages suck a little bit. Despite being powerful tools written by thousands of smart people, developers will never agree on what perfect is. At some point, the language you love the most will make design choices that you don't like. Go is the language I love the most right now, and it's no exception. There are things that I think could be better. 

Go might be the only language to emerge during my career that truly prioritized simplicity and readability over everything else, even flexibility. In the pre-1.0 days of Go, the language developers were conservative in adding features. Their philosophy has been largely successful, and it's translated well into long-term development practices within the community. Even though Go is no longer designed exclusively by Googlers this priority still persists.

### Error Handling Is Great, but It Also Sucks

Go's error handling is opinionated, and different to other languages. It encourages developers to address error states proactively. It's simple, and verbose, but it also makes it very easy to write safe and robust code. Like any design choice, this isn't without trade-offs. Right now, the typical Go programmer handles errors like this:

``` go
result, err := someFunction()
if err != nil {
    return nil, err
}
```

One problem with this approach is that often the code that creates the error will pass that error to another part of your application. Often, this happens through returning the error through a chain of functions. So in each function, you will see something like this duplication:

``` go
if err != nil {
    return nil, err
}
```

There have been a few proposals to improve upon Go's straightforward and verbose error handling. The [most discussed](https://github.com/golang/go/issues/32437) proposal adds the "try" built-in function. At first glance, it looks like exception handling in C++ or JavaScript, but it's really a much lighter touch. With the now-discarded proposal, we are given a shorthand for this, which looks like:

``` go
result := try(someFunction())
```

Even though, the community would seem to prefer to leave error handling [exactly the same](https://github.com/golang/go/issues/32825), I would have liked to see this proposal accepted. There are a few good arguments against this change (as seen in the GitHub thread), but fundamentally this isn't a paradigm shift in error handling; it just helps us with vertical length and code duplication.

This is the trade off of a small, conservative, easy to read language spec. Things that would be really nice to have for most people, might not be added. 

### Package Management and Circular Dependencies

Go's package system aims for simplicity, but in my view makes separating code frustrating. Many developers in 2024 would be familiar with an import system like Java or JavaScript (or many others for that matter), which allow fine-grained imports of specific code units. Code separation in Go was designed quite differently, and unfortunately this can lead to a difficult trade-off: either create sprawling packages or a complex web of dependencies.

Consider an example that handles user management, we create users, we have many different functions that modify them in different ways, we delete them etc ... Let's say part of the package retrieves user data from a database and I write some code using the [repository pattern](https://www.codingexplorations.com/blog/mastering-the-repository-pattern-in-go-a-comprehensive-guide). I have services that pull data from both sql and nosql databases. How do you separate those three components?

* Repository interface, sql implementation, nosql implementation in a single package
* Three separate packages, one for each
* Two packages, interface in one, implementations in the other 

Someone elses code may use your package, in which case, they would be using the interface. So at very least, they import the interface package and at least one implementation. If you leave everything in one package, then your package could end up with types like:

* UserServiceMySQL
* UserServicePostgres
* UserServiceMongo
* etc ...

Having everything in one package is a mess, and eventually your names are going to start to look like Java. The alternative is using separate packages for the components, but that isn't great either. Since you are eventually returning a "User" type, you might create a struct for it. But where does the "User" struct go? You can't put it in either the interface package, or in the implementation packages, because both of them need the struct. You cant import each other without introducing a circular dependency. So now you consider yet another package, just for the "User" type and related helper functions, or you simply duplicate the code in each package.

For most, its not the end of the world, there are definitely ways of making it work. That being said, having this problem in the back of your head is a huge constraint in my view. You might have to structure your codebase to satisfy this annoying technical limitation, rather than logically like you might in other languages. It's something you have to plan out, and when your code ends up looking differently than you planned, you might have to refactor pretty heavily. 

### Is it still worth it? 

At the end of the day, it's for everyone to decide for themselves if the quirks and frustrations are worth it. Does Go still offer the best overall experience in my life as a developer? Does it still offer the right combination of things that our projects need? In my view, it does. The dependency problem is annoying, but it doesn't come close to how annoying packaging is in the JS ecosystem. Dealing with ESM vs CommonJS is, in my view, a much bigger hurdle. This doesn't even consider Babel, Rollup, Webpack, ESBuild, or god knows what other packaging tools your project might be using.

Having to write annoying boilerplate error handling is an annoying problem, but it's nothing compared to the boilerplate needed to write Java code. If you don't use a package like Lombok, there's an outrageous amount of code you will end up writing that describes objects, and does absolutely nothing.

Go remains a good choice for many developers. Its performance, robust tooling, and thriving community make it a strong contender for a wide range of projects. But maybe even more important than that, I enjoy writing it the most.