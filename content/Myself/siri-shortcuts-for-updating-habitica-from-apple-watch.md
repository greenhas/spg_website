---
types: ["macro"]
date: 2023-11-10T09:02:14-05:00
title: "Siri Shortcuts for updating Habitica from Apple Watch"
tags: ["Siri Shortcuts","Hypothesis","Apple Watch","API","Habitica"]
---
Back in July, I [shared](https://spencergreenhalgh.com/myself/2023-07-26-using-siri/) that I'd figured out how to use the Habitica API to create a Siri Shortcut for updating Habitica from my Apple Watch. A few weeks ago, Hypothesis user [cormacauty](https://hypothes.is/users/cormacauty) left [a comment](https://hypothes.is/a/HoMv5nHXEe6pJl8YAexgBw) on that post asking for more information about how I'd done that.

This post is a (belated) response to that, in the form of sharing the Siri Shortcuts that I wrote. Part of the reason that it took so long for me to get to this is because I needed to duplicate and edit the Shortcuts to strip out my API key—I'm happy to share my work but don't want other people to be able to make changes to my account for me. I've now done that for both of the Shortcuts and replaced them with an untested but definitely-ought-to-work system where a user can find their own values for `x-api-user`, `x-api-key`, and `x-client` and put them in the corresponding text boxes, and then the Shortcut will work from there. The Habitica Wiki has [some information on finding these values](https://habitica.fandom.com/wiki/Application_Programming_Interface), and I'll direct interested readers there.

It's also worth noting that these Shortcuts can also be run from any Apple device, not just an Apple Watch. Apple Watch is the intended use case here, but the Habitica iOS app can be a bit finicky sometimes, and the macOS app is... nonexistent, so there's no reason that you couldn't use the shortcuts for similar purposes there.

 Here's a quick rundown on both shortcuts, with links to them in each header. 

## [a shortcut](https://www.icloud.com/shortcuts/5b679b14029642caa634441425a30cf9) for completing *dailies* in Habitica

This Shortcut uses the API to get a list of all of the as-yet-uncompleted dailies from your account (this intentionally includes dailies that are not due on the day you're running the Shortcut) and displays them in a menu. Selecting a daily from the menu will then use the API to mark off that daily in your Habitica account. A couple of notes: First, I use emojis in the title of each daily to help them be more quickly distinguishable on a small screen. Second, although Habitica lets you use Markdown in daily titles, that Markdown will not be resolved through this Shortcut interface; instead, you wind up with the raw code in there. That's not a dealbreaker for me (I use Markdown links in Habitica so that I can trigger yet other Shortcuts from the main Habitica interface, and that's too useful to let go of), but it is a pain in the aesthetic neck.

## [a shortcut](https://www.icloud.com/shortcuts/0701a8fc2a9046208f4811bc9eecb2db) for marking *habits* in Habitica

This Shortcut uses the API to get a list of all of habits from your account and displays them in a menu. Selecting a daily from the menu brings up a prompt to either mark it "up" (i.e., in the positive direction) or "down" (i.e., in the negative direction). You'll get this choice even if the selected habit doesn't have both positive and negative options enabled because I couldn't be bothered to get more specific. Selecting "up" or "down" (this is actually the language used in the API) will mark the habit in the corresponding direction in your Habitica account. As with dailies, I use emojis in the title of each habit to help them be more quickly distinguishable on a small screen. 

## feedback welcome! 

I wrote these Shortcuts for myself first, and if they're a little rough around the edges, it's because that's good enough for me. That said, if anyone uses these Shortcuts and has feedback, questions, or requests, I'd love to hear from you. Leave a Hypothesis comment on this post or use the contact form on my homepage to get in touch!
