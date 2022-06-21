---
date: 2022-06-21T11:15:19-04:00
title: "some Hypothesis (and other) updates for the blog"
tags: ["macro","Myself","Hypothesis","Micro.blog","Mastodon","platforms","content aggregation","ICT 302"]
---

Shortly after last week's [mostly-successful experiment with Hypothesis](https://spencergreenhalgh.com/myself/embedding-hypothesis-as-a-commenting-system-on-hugo-static-sites/), I noticed [Chris Aldrich](https://boffosocko.com/) posting to [Micro.blog](https://micro.blog/chrisaldrich) about the software and started up a conversation. I'd followed Chris a few weeks before in trying to get more into Micro.blog (perhaps my favorite indie social media platform out there, though I'm also enjoying getting into Mastodon) by following academia and academia-adjacent folks, and was pleased to see an area of common interest.

It wasn't until a separate conversation on Mastodon this morning that I remembered that my Hypothesis setup was dependent on my manually checking annotations on my website. So, it was three days later that I realized that in addition to our Micro.blog conversation, Chris had been kind enough to leave some comments on my site, giving the Hypothesis comment layer a test run. The most helpful comment included a link to [a post](https://boffosocko.com/2021/03/25/hypothes-is-as-a-comment-system-receiving-mentions-and-notifications-for-your-website/) he'd written describing how to subscribe to a Hypothesis RSS feed that supported wildcards, something that I'd previously thought was impossible (and, at any rate, isn't listed in the Hypothesis documentation I was checking).Thanks to this, I've now got a notification system for website comments, which is going to make life a lot easier; however, I did find that I had to use a variation of the format that Chris posted: 

`https://hypothes.is/stream.rss?wildcard_uri=example.org/*`

In short, it wasn't working when I included a `https://www.` for the website that I wanted to follow, but the feed worked perfectly once I left that out. So, annotate away—I'm going to respond much more quickly now!

Chris also implicitly drew some attention to some of the gaps in my system. In particular, the Hypothesis embed had only been present on post pages, not on aggregation pages or plain old pages. This is especially important because there are no links to the dedicated pages for microblog posts on aggregation pages, which meant there was functionally no way to respond to them unless you managed to figure out how to get to a dedicated post page. A lot of this comes down to the aggregation pages linking to dedicated pages through titles, which I intentionally leave out for microblog posts. 

I had been planning to keep things that way, but it turned out that I know enough about Hugo templates to add a linked timestamp for each post to an aggregation page, so I've gone ahead and done that. It's a lot easier now to bring up the permanent page for a microblog post, which at the very least is pretty handy for me! 

While I was planning to keep things as is, though, I compensated by adding an automatic Hypothesis embed on aggregation pages as well as regular pages, so it's possible to annotate microblog posts (and anything else) without going to dedicated pages. The homepage still lacks the embed, so I'll have to circle back to that at some point.

At any rate, I'm very happy with this morning's tweaks (even if I ought to be working on a tenure dossier right now 😬). 
