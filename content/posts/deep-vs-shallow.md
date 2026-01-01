+++
title = 'Deep vs Shallow Knowledge in an AI World'
url = '/posts/deep-vs-shallow-knowledge'
date = 2025-08-26T22:25:53-05:00
draft = true

[cover]
  image = '/img/posts/deep-vs-shallow/ai-world.png'
  alt = 'AI and human collaboration: A futuristic scene showing a developer working alongside AI assistants to build software with deep knowledge rather than shallow framework memorization'
+++

I came across [this video](https://www.youtube.com/watch?v=Z0SJNkzOiq4&ab_channel=gamedevcuts) a few weeks ago from Jonathan Blow, the lord almighty of hot takes. Though I was initially dismissive, some of his points hit home. He argues that modern developers are drowning in shallow knowledge: the study of arbitrary APIs, specific frameworks, and temporary tooling choices. We spend years mastering complexity that was invented by another human, rather than mastering deep knowledge: fundamental truths about computation, data structures, and architecture that remain true regardless of the tech stack. Shallow knowledge is instance-specific—knowing how to use a tool. Deep knowledge is universal—knowing why that tool exists and how it functions under the hood.

But I'd argue that regardless of whether you studied CS at Stanford or did a 3-month coding boot camp, the industry forces a cycle of shallow learning on us all.

## The Half-Life of a Tech Stack
Over the last decade, the landscape has shifted enormously. Back in 2014, I was deep in Java EE and Spring, managing shared application servers like Tomcat and cycling through templating engines like Freemarker and Velocity. Looking back, I spent years mastering specific configurations for technologies that are now completely obsolete.

![The half-life of tech knowledge: defunct frameworks crumble while enduring principles stand strong](/img/posts/deep-vs-shallow/framework-hamster.png)

It wasn't all wasted time. Writing heavy backend Java forced me to learn encapsulated service architectures and the dangers of over-abstraction. That is the *deep knowledge* that survived the death of the specific stack.

But if I'm honest, the majority of my career wasn't spent on those principles. It was spent on the *shallow* stuff: build tools, CI pipelines, and opinionated frameworks. I spent years learning the arbitrary decisions of other developers—syntax and workflows that changed the moment a new "best practice" blog post came out. And don't get me started on the frontend; everything we knew in 2014 is ancient history now.

## Velocity vs. Mastery
In consulting, I live in a constant loop of Just-in-Time learning: absorbing just enough syntax to ship a feature, then immediately moving on. When I do get rare downtime to *up-skill*, what do I focus on? Often, it's AWS and other platform-specific certificates.

These certifications are necessary vocabulary; they prove I know the specific dialect of a cloud provider but the technical depth is often limited. It involves memorizing a proprietary API and a specific vendor's implementation details. I'm gaining specialized knowledge of a single cloud provider rather than a first-principles understanding of distributed systems.

This contrasts sharply with civil or aerospace engineering, where "training" on new workflows can span months. In software, we often view that lead time as friction. The market demands velocity over mastery, forcing us into the shallow end because the business cannot justify months of limited output. We’ve traded deep engineering rigor for market-driven agility.

For all of the hype surrounding AI, one thing is clear: it has commoditized shallow knowledge, returning us to the deep end.

## From Implementation to Intent
We need to fundamentally change how we value knowledge in software development. For decades, *seniority* was often proxied by shallow knowledge: how well you had memorized the API surface of a specific library, or how extensive your experience with a specific framework. AI has effectively commoditized this knowledge. It has reduced the value of syntax memorization. This shift became real for me when I realized just how effortlessly my core skills translated to languages and frameworks I had never touched before.

Working with *agentic* tools is like pair programming with an infinite team of bright, eager, but inexperienced junior developers. They possess unlimited shallow knowledge, they know the syntax of every language and the documentation of every library, but they lack the wisdom of experience. They do not know why a specific pattern might be the wrong choice for you; they only know that the pattern is statistically probable based on their training data.

![The infinite junior devs: surrounded by eager AI assistants, all working furiously on different things](/img/posts/deep-vs-shallow/infinite-junior-devs.png)

This shifts the role of the senior developer. You are no longer valuable because you know how to write the code; you are valuable because you know what code should be written. Your primary role shifts from contributor to architect, guided by the ability to constrain and direct.

## High Velocity Requires Higher Discipline
Because AI handles the syntax, there is a dangerous misconception that we can ignore the "How" and focus only on the product. This is false. In fact, understanding the underlying architecture and design principles is more critical now than ever before.

Agentic AI allows us to generate code at a velocity we have never seen. This shifts the cognitive load from creation to verification. If we don't treat AI-assisted code changes as "proposals" rather than completed work, we will simply build technical debt at 100x speed.

![AI construction site: you as architect directing AI workers, with code review as verification](/img/posts/deep-vs-shallow/ai-construction-site.png)

The modern code review is no longer just about logic; it is a liability check. You must possess the architectural maturity to look at a block of technically correct code and recognize that, while it compiles, it is structurally disastrous.

## The Build vs. Buy Calculation has Changed
For the last decade, cloud providers have pitched a specific trade-off: use their proprietary tools in exchange for development velocity and operational offloading. We utilized proprietary *serverless* logic, niche database services, and closed-source workflow tools, in return for rapid feature delivery. This was shallow knowledge on a massive scale: we learned how to use specific vendor APIs rather than understanding the underlying distributed systems principles.

Agentic AI development tools invert this equation.

![Time to production comparison: vendor vs custom build with and without AI assistance](/img/posts/deep-vs-shallow/build-vs-buy-comparison.svg)

The time-to-market gap between "using a proprietary service" and "building it with open source" has collapsed. I can now scaffold a Postgres database with vector extensions and wire up a custom semantic search API in the time it used to take me just to read a vendor's documentation.

This doesn't mean managed services are dead—the value of a vendor is still "Day 2 operations" (the SLA, the compliance, the person holding the pager). We still choose managed services to offload _responsibility_, but we no longer have to choose them just to offload _complexity_.

The shift is subtle but profound: When you use AI to help you build with open-source tools, you are investing in *deep knowledge*.

- Implementing Vector Search teaches you about tokenization and nearest-neighbor algorithms—principles that apply everywhere.
- Configuring a proprietary vendor teaches you their specific JSON payload structure—knowledge that expires the moment you switch providers.

AI has made "The Hard Way" just as fast as "The Easy Way", allowing us to choose the path that builds durable expertise.

## The New Senior Skill Is Judgment
When code generation is cheap, the scarce resource is no longer implementation. It’s judgment: knowing which abstractions to introduce, which trade-offs are acceptable, and which *working* solution will quietly rot your system from the inside. The senior developer of the AI era is not faster at typing—they are faster at saying no, faster at recognizing structural mistakes, and faster at steering a system away from unnecessary complexity.

There is a real optimism in this shift. For years, the sheer volume of 'shallow' requirements—the boilerplate, the configuration, the endless hunting through documentation for a specific CLI flag—has acted as a tax on our collective creativity. By automating the mundane, AI doesn't just make us faster; it gives us the cognitive breathing room to be _better_. The irony is perfect: it took artificial intelligence to give us back the cognitive space to practice real engineering. AI hasn't replaced the need for rigor; it has finally cleared the path for us to practice it.