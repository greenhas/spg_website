---
type: ["macro"]
date: 2022-06-16T09:33:41-04:00
title: "embedding Hypothesis as a commenting system on Hugo static sites"
tags: ["Hypothesis","social annotation","Hugo","static sites","blogging","RSS"]
---

As I've been working on updating this website and revamping my web presence over the course of the summer, one of the items on my to-do list has been to add a commenting feature to the website. I love Hugo, but the absence of any in-built commenting feature is definitely a downside. I've looked over various Hugo-compatible [commenting systems](https://gohugo.io/content-management/comments/), but I honestly don't know how much commenting activity I'll see, and I've been hesitant to pay a third-party platform to do all of this for me. 

Last night, it [occurred to me](https://spencergreenhalgh.com/myself/2022-06-15-ive-been/) (thanks to some thinking about a separate Hugo project I'm working on) that I could automatically embed the interface for the Hypothesis social annotation software into a Hugo post template and use that as a *de facto* commenting system. I'm a huge fan of Hypothesis, so I trust them as a third party, and the fact that the software is free is also a big plus. My biggest concern is that I don't think there are any kind of comment moderation features, but between bad faith commenters needing to sign up for an account and the fact that I'm not likely to get many comments in the first place, I'm willing to accept that as a risk. 

So, this morning, I went into my fork of the `ananke` theme (which, by the way, I'm enjoying so much) to make some changes. I navigated to `themes > ananke_custom > layouts > _default > single.html` and followed cues from the [embedding Hypothesis help page](https://web.hypothes.is/help/embedding-hypothesis-in-websites-and-platforms/), adding `<script src="https://hypothes.is/embed.js" async></script>` before the first line of HTML (for me, line 8). Then, I found where the tags are added in the template, went down a line (for me, line 54), and added a brief explanation of how to comment on posts in the place where I would expect a regular commenting interface to be.

[EDIT on 21 June 22: I'm completely wrong in this last paragraph. Check out [this post](https://spencergreenhalgh.com/myself/some-hypothesis-updates/) for updates.]

The final problem here is getting notifications for comments. Hypothesis has a pretty [fantastic search feature](https://web.hypothes.is/help/how-hypothesis-search-works/), including using wildcards to find all annotations under a particular domain name, so that's what I'm doing for now. Hypothesis also [supports RSS](https://web.hypothes.is/help/atom-rss-feeds-for-annotations/) for particular collections of annotations, including by URL, which I thought for sure would do the trick with the help of the wildcard feature, but it turns out that the wildcard feature doesn't extend to RSS—I'm sure this is a technical limitation of some kind. At any rate, I'll have to manually check the search every once in a while, but I've written myself an Alfred shortcut to the custom search, and I remain unlikely to get all that much commenting activity on this site, so I'm not too worried. Some poking around on Hypothesis's GitHub suggests that improving Hypothesis notifications (including "someone has commented on your site") is [part of](https://github.com/hypothesis/product-backlog/projects/6#card-12350921) their long-term plans, so fingers crossed!


