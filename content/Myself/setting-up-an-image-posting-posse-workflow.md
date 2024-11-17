---
date: 2024-11-17T14:34:30-05:00
title: "setting up an iOS image posting POSSE workflow for Hugo"
tags: ["macro","Myself","Hugo","WordPress","Siri Shortcuts","Mastodon","Bluesky","Markdown","ICT 302"]
---
Several days ago, I [posted](https://spencergreenhalgh.com/myself/2024-11-12-one-of/) that:

> One of the biggest gaps in my current website-first approach to social media is an inability to snap a picture and quickly post it. I’ve wanted to tackle this for a while, but an upcoming cool vacation has me thinking I should really go for it.

A couple of days later, I realized I wasn't alone in this when Alex Sirac picked up the post [on their website](https://alexsirac.com/posse-photos/), and it got another sympathetic comment there, too. That motivated me to really try to solve the problem, even though as a Hugo blogger, I knew that my solution wasn't going to be terribly helpful for the WordPress folks who were sympathizing with me.

I spent way too much time on this on Friday, but [it's now working](https://spencergreenhalgh.com/tags/photo/), and to make up for the fact that this isn't a solution for Alex, I'm going to blog about what I figured out in the hope that it will be helpful for someone else out there. 

# Step 1: Basic Workflow

I actually got the basics of this working pretty quickly. I've [written before](https://spencergreenhalgh.com/myself/setting-up-posse-style-microblogging-on-a-hugo-static-site/) that a huge part of my blogging workflow is a Siri Shortcuts-compatible iOS Git client, and I knew that a big part of image posting would be to build a new Shortcut based on the ones that I already have. I put off my morning run on Friday, and that was enough time to get most of this together. 

Essentially, the Shortcut appears whenever I bring up the iOS share sheet for an image. It then converts the image to a JPEG and drops a copy of it in the `/static/` folder of my Hugo repository with a standardized name based on the day's date and a name that I give the photo when prompted. The Shortcut then goes through my regular prompts for a new post (content, subblog, tags) and throws another new one at me so that I add alt text to all of my photos. 

One tiny thing that I'm proud of even though I don't know if it will ever be useful is that the post with the photo gets the same name as the photo itself, just with a different file extension and in a different location. Using a standardized, date-based naming scheme for each post is one of the best decisions I made when setting up my first Shortcuts for Hugo posting from iOS, and I'm hoping this will also be helpful in terms of file management.

# Step 2: Messing Around with Templates

The Siri Shortcut worked like a charm, but I quickly realized that most of the work was going to be elsewhere. I rely on [Micro.blog](https://micro.blog) as the POSSE bridge between my blog and my Mastodon (and [now Bluesky](https://spencergreenhalgh.com/myself/some-thoughts-on-joining-bluesky-maintaining-platform-independence-and-tweaking-mastodon/)) accounts, and while M.b would pick up on the *text* of my post (and forward it to my social media accounts), it would not grab the photo. 

This led to several attempts to figure out what I was doing wrong. I took a look at other blogs that did get their photos noticed by Micro.blog (both M.b-hosted and third-party-hosted blogs), and then I tried every change I could think of to ensure that my blog was working with images in the same way those other blogs were.

I don't remember all the things that I messed around with, and (spoiler alert) most of them didn't end up being relevant, but I did spend a lot of time going back and forth between: 1) a Shortcut that would add an `<img>` tag (well, via Markdown) to each post and 2) a Shortcut that would designate the desired image as the `featured_image` in each post and then a Hugo template that would display any `featured_image` below the text of the post. I also learned that you can add a bunch of variables to Hugo post front matter basically on the fly, which was cool when I thought I might need to define `width`, `height`, and `alt` for `featured_image`s from the front matter. 

At the end of the day, those weren't necessary, but I have kept designating these images as `featured_image` because I think it's fun for the image to appear up in the header as well as more clearly in the post itself. I may change my mind on this, but it would be easy to undo.

The more important point is that "those weren't necessary," which is a glib way of saying that no matter what I tried, my images still weren't appearing on Micro.blog. I threw in the towel and posted a cry for help to the M.b help forum and told myself I'd deal with it later.

# Step 3: Customizing my RSS Feed

Of course, though, another thought occurred to me soon after I asked for help and gave up. Micro.blog is RSS based—could the issue be there? Indeed it was! My images weren't showing up in the RSS feed for my blog, which means that Micro.blog couldn't grab them and POSSE them out to other feeds.

This meant learning how to edit the Hugo RSS feed, which was especially confusing since there wasn't an existing template for RSS anywhere in my theme files. Fortunately, [Hugo's help page on RSS](https://gohugo.io/templates/rss/) was helpful (if ambiguous—I wasn't confident it was going to work until it did).

Even though this was an extra step, it ended up being a lot of fun to learn how to customize my RSS feed. I learned pretty quickly that I would need to undo my `featured_image`-based workflow from earlier and go back to adding `<img>` tags (again, via Markdown) to each of the posts. Then, I just needed to replace the `.Summary` in the `<description>` tags in the RSS template with `.Content`, so that instead of a (text-only) preview of each post, my RSS feed delivers the entire content of each post. This is how I prefer RSS feeds anyway, so beyond fixing my immediate problem, I'm hoping it's a nice touch for anyone reading my stuff in a dedicated RSS reader. (I also had fun changing the `<title>` in the RSS feed, and I'm wondering what other tweaks I can make now that I know this is possible). 

# Conclusion

This took longer than I thought it would, largely because the solution I had in mind turned out to only be part of the solution, and it took me way too long to figure out where the other part of the solution was. Even though I spent too much time on this, though, it was definitely worth it—not only personally, but also as someone who teaches about content management systems and can always use this as an example in class one day.