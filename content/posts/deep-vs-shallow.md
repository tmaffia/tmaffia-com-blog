+++
title = 'Deep vs Shallow Knowledge in an AI world'
url = '/posts/deep-vs-shallow-knowledge'
date = 2025-08-26T22:25:53-05:00
draft = true
+++

I came across [this video](https://www.youtube.com/watch?v=Z0SJNkzOiq4&ab_channel=gamedevcuts) a few weeks ago from Jonathan Blow, the lord almighty of hot takes. Though I was initially dismissive, some of his points hit home. He argues that modern developers are drowning in Shallow Knowledge: the study of arbitrary APIs, specific frameworks, and temporary tooling choices. We spend years mastering complexity that was invented by another human, rather than mastering Deep Knowledge—fundamental truths about computation, data structures, and architecture that remain true regardless of the tech stack. Shallow knowledge is knowing how to use a tool; Deep knowledge is knowing why the tool exists and how it functions under the hood. Shallow knowledge is instance-specific. Deep knowledge remains true even when the implementation changes.


But I'd argue that regardless of whether you studied CS at Stanford, or did a 3-month coding boot camp, the industry forces a cycle of shallow learning on us all.

## The Half-Life of a Tech Stack
Over the last decade, the landscape has shifted enormously. Back in 2014, I was deep in Java EE and Spring, managing shared application servers like Tomcat and cycling through templating engines like Freemarker and Velocity. Looking back, I spent years mastering specific configurations for technologies that are now completely obsolete.

It wasn't all wasted time. Writing heavy backend Java forced me to learn encapsulated service architectures and the dangers of over-abstraction. That is the "Deep" knowledge that survived the death of the specific stack.

But if I'm honest, the majority of my career wasn't spent on those principles. It was spent on the "Shallow" stuff: build tools, CI pipelines, and opinionated frameworks. I spent years learning the arbitrary decisions of other developers—syntax and workflows that changed the moment a new "best practice" blog post came out. And don't get me started on the frontend; everything we knew in 2014 is archaeological history now.

## Velocity vs. Mastery
In consulting, I live in a constant loop of Just-in-Time learning: absorbing just enough syntax to ship a feature, then immediately moving on. When I do get rare downtime to "up-skill," what do I focus on? Lately, it's AWS and other platform specific certificates. They’re great for the company’s partner status, but the technical depth is limited. It’s essentially memorizing a proprietary API and a specific vendor's implementation details. I'm gaining specialized knowledge of a single cloud provider rather than a first-principles understanding of distributed systems.

This contrasts sharply with civil or aerospace engineering, where "training" on new workflows can span months. In software, we often view that lead time as waste. The market demands velocity over mastery, forcing us into the shallow end because the business cannot justify a quarter of limited output. We’ve traded deep engineering rigor for market-driven agility.

For all of the hype and nonsense surrounding LLMs, one thing is clear: they have commoditized shallow knowledge, returning us to the deep end.

## From Implementation to Intent
We need to fundamentally change how we value knowledge in software development. For decades, "Seniority" was often proxied by Shallow Knowledge: how well you had memorized the API surface of a specific library, or how extensive your experience with a specific framework. AI has effectively commoditized this knowledge. It has reduced the value of syntax memorization. This shift became real for me when I realized just how effortlessly my core skills translated to languages and frameworks I had never touched before.

Working with an Agentic IDE is like pair programming with an infinite team of bright, eager, but inexperienced junior developers. They possess unlimited Shallow Knowledge—they know the syntax of every language and the documentation of every library—but they lack the wisdom of experience. They do not know why a specific pattern might be the wrong choice for you; they only know that the pattern is statistically probable based on their training data. This shifts the role of the Senior Developer. You are no longer valuable because you know how to write the code; you are valuable because you know what code should be written. Your primary role shifts from contributor to architect, guided by the ability to constrain and direct.

## High Velocity Requires Higher Discipline
Because the AI handles the syntax, there is a dangerous misconception that we can ignore the "How" and focus only on the product. This is false. In fact, understanding the "Deep How"—the underlying architecture and design principles—is more critical now than ever before.

LLMs allow us to generate code at a velocity we have never seen. This shifts the cognitive load from creation to verification. If we don't treat AI assisted code changes as "proposals" rather than done, we will simply build technical debt at 100x speed. You must possess the architectural maturity to look at a block of technically correct code and recognize that it is structurally disastrous.

This shift doesn't just apply to the code we write; it applies to the platforms and products we choose to run.

## The Shallow Trap of Proprietary Platforms
For the last decade, cloud providers have pitched a specific trade-off: use their proprietary tools in exchange for development velocity, and operational offloading. We utilized proprietary "Serverless" logic, niche database services, and closed-source workflow tools, in return for rapid feature delivery, and security. This was shallow knowledge on a massive scale: we learned how to use specific vendor APIs rather than understanding the underlying distributed systems principles. 

Agentic AI development tools invert this equation.

## The Build vs. Buy Calculation has Changed
I can now scaffold a complete authentication system with Passport.js, implement JWT refresh logic, and wire up PostgreSQL session storage in the time it used to take me to read the Okta documentation. The delta between "build it yourself with open source" and "use the proprietary service" has collapsed. This isn't about AI being better at open source versus proprietary APIs—it's about AI making building fast enough that the proprietary shortcut isn't worth the cost anymore. Obviously speed is not the only factor; compliance, security, and operational overhead all play a role. So for your use case, using off the shelf tools might still make sense. But the calculus has certainly changed.

**Here's the deeper shift:** When you choose to build with open source tools instead of buying a proprietary service, you're choosing Deep Knowledge over Shallow Knowledge. Implementing authentication with Passport.js teaches you OAuth flows, token lifecycles, and session management—principles that apply everywhere. Configuring Okta teaches you Okta's API. Building a message queue with Redis teaches you pub/sub patterns and backpressure handling. Using SQS teaches you SQS's pricing tiers.

## The New Senior Skill Is Judgment

When code generation is cheap, the scarce resource is no longer implementation. It’s judgment: knowing which abstractions to introduce, which trade-offs are acceptable, and which “working” solution will quietly rot your system from the inside. The senior developer of the AI era is not faster at typing—they are faster at saying no, faster at recognizing structural mistakes, and faster at steering a system away from unnecessary complexity.

This changes how we should invest in ourselves. Optimizing for the current stack, the current cloud vendor, or the current framework is a losing game. Those details will churn. The underlying principles will not. If your knowledge doesn’t transfer when the toolchain changes, it’s already depreciating.

AI has commoditized shallow knowledge. That genie isn’t going back in the bottle. The only durable advantage left is deep understanding—of systems, of constraints, and of consequences. And that is exactly why deep knowledge matters again.