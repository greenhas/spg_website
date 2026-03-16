---
types: ["macro"]
date: 2026-03-16T11:43:09-04:00
title: "updates I've made to my Hugo site over the past year"
tags: ["Hugo","Donald Trump","ICT 302","Siri Shortcuts","POSSE","EchoFeed","ActivityPub"]
---
Early 2025 was a difficult time for my focus and mental health given all of the nonsense happening in my country at the time. I channeled a lot of my anxiety and distraction into messing around with my Hugo site, which is both something I find genuinely fun and something that is professionally useful, since I teach a course on content management systems where I've [doubled down on Hugo](https://spencergreenhalgh.com/work/doubling-down-on-hugo-in-ict-302/) as a teaching tool. Yesterday marks the one-year anniversary of [my observation](https://spencergreenhalgh.com/myself/2025-03-15-i-think/) that it was "[t]ime to write up a summary post," and I'm finally getting around to that today. Waiting so long to write that post means that some of my memories are a little fuzzy now, but I made some further updates to my site over the summer and then again last December, so a "the last year in Hugo adventures" post allows me to capture some of that stuff, too.

## new taxonomies

Besides trying to ward off nihilism, I couldn't tell you for sure what was the genesis of all of the tweaks I started making to my site. Taxonomies seems like a strong candidate, though. I rely a fair amount on my [tags](https://spencergreenhalgh.com/tags/) to get a sense for what I'm writing about and to find something that I wrote in the past on a particular subject. Tags are great, but having all of my terms in a single taxonomy was starting to get a little clunky, and doing bingereads of a bunch of comic series got me thinking about other ways that I could be sorting posts in terms of their similarities (actually, [it seems like](https://spencergreenhalgh.com/myself/2024-11-12-and/) this had occurred to me before I'd started some of the binges). So, I learned how to set up new taxonomies in Hugo and set up the following ones that allow for navigating through my media reviews in more fine-grained ways:

* the [`media`](https://spencergreenhalgh.com/media/) taxonomy gives me a sense of what I'm consuming and allows me to filter posts by specific medium; I've made some non-mutually exclusive categories so that I can affirm that *[bandes dessinées](https://spencergreenhalgh.com/media/bande-dessin%C3%A9e/)* are also comics (which are also books) while also treating them as a media genre unto themselves.
* the [`title`](https://spencergreenhalgh.com/titles/) taxonomy is mostly useless, except that it lets me see what media I've consumed multiple times (like Cory Doctorow's [*Red Team Blues*](https://spencergreenhalgh.com/titles/red-team-blues/)—or if I've consumed multiple media adaptations of the same story (like *[When the Wind Blows](https://spencergreenhalgh.com/titles/when-the-wind-blows/)*
* the [`series`](https://spencergreenhalgh.com/series/) taxonomy lets me filter posts by a specific series; by extension, it lets me see what I've been consuming the most of (though these numbers are a bit imprecise—it takes a lot more work to read a [Brief Theological Introduction to the Book of Mormon](https://spencergreenhalgh.com/series/the-book-of-mormon-brief-theological-introductions/) than to listen to a brief [Doctor Who Short Trip](https://spencergreenhalgh.com/series/doctor-who-short-trips/))
* the [`franchise`](https://spencergreenhalgh.com/franchise/) taxonomy gives me a way of grouping together reviews of media that span multiple series—or that are connected to each other despite not technically being part of the same series; [Doctor Who](https://spencergreenhalgh.com/franchise/doctor-who/) has recently rocketed to the top of this list thanks to all the audio plays I've been listening to
* the [`creator`](https://spencergreenhalgh.com/creators/) taxonomy (I don't love that name, but "author" doesn't fit when I also include [comic book artists](https://spencergreenhalgh.com/creators/fiona-staples/) and [audiobook narrators](https://spencergreenhalgh.com/creators/wil-wheaton/)) lets me see whose work I've been consuming the most... and has helped me realize that I need to take steps to reduce the concentration of white dudes at the top
* the [`rating`](https://spencergreenhalgh.com/ratings/) taxonomy is perhaps even dumber than the `title` one, but it does let me confirm my hunch that I'm pretty easy-going (and not usually very critical) when reviewing media

While mediablogging was the original inspiration for expanding the taxonomy offerings of my site, it wasn't hard to figure out that this could be useful for other parts of my site as well. With the power of regex, I also built a [`sources`](https://spencergreenhalgh.com/sources/) taxonomy for my linkblogging that gives me some sense of who I'm reading (or lets me find articles I've bookmarked from, say, [404 Media](https://spencergreenhalgh.com/sources/404media.co/)).

I also spent some of the summer (finally!) uploading and sorting through a bunch of my [research](https://spencergreenhalgh.com/research/). While I was doing that, I figured I ought to add some taxonomies there, too. It's now possible to sort my publications and presentations by:

* [research projects](https://spencergreenhalgh.com/projects/): collections of publications united by ongoing interest in a specific phenomenon or dataset
* [research topics](https://spencergreenhalgh.com/topics/): more fine-grained, cross-cutting topics that recur in my research
* [research methods](https://spencergreenhalgh.com/methods/): specific methodological approaches I've brought to projects
* [co-authors](https://spencergreenhalgh.com/co-authors/): folks I've worked with
* [outlets](https://spencergreenhalgh.com/outlets/): journals or conferences where my work has appeared

Finally, in December, I figured I ought to start logging the teas I drink [so that I can remember](https://spencergreenhalgh.com/myself/2026-03-16-as-a/) what I thought of a particular kind months after the fact. I was making my way through a tea advent calendar, and that seemed like as good an excuse as any. Teablog posts can be sorted by:
	
* [brand of tea](https://spencergreenhalgh.com/brands/)
* [blend of tea](https://spencergreenhalgh.com/blends/)
* [type of tea](https://spencergreenhalgh.com/tea_types/) (i.e., black, herbal, green...)
* [rating of tea](https://spencergreenhalgh.com/tea_ratings/) (which, like its media counterpart, might not be super useful as a taxonomy per se)

I also use a semi-meta [`types`](https://spencergreenhalgh.com/types/) taxonomy to distinguish between different kinds of posts to the site.

## new post templates

While I started this post by discussing taxonomies, it was pretty clear from the beginning that building new taxonomies would be most useful if I also messed around with how different post types showed up on the site. Messing around with templates was quite a bit of fun! I had done some minor tweaks to post templates in the past but mostly messing around with default templates. This involved creating a bunch of new templates, tweaking them to work the way I wanted, and then updating my posting workflows to explicitly define a particular template for most posts as they get published. 

I'm quite pleased with how it's worked out. I honestly don't remember how my linkblog posts looked before, but I'm proud of working the links to articles into the post headers in the [current layout](https://spencergreenhalgh.com/communities/2026-03-13-terrible-but/). I also like how a [publication post](http://localhost:1313/research/2025-greenhalgh-tanner-beyond-the-walls/) is actually all driven from post metadata, which is organized into a specific template; if you pull up the `.md` file, you'll see that there's actually no "content" in the post. The different mediablog post types (book, radio, etc.) have individual tweaks to make them work the way I want (I don't track "creator" for tv or film, for example), and I learned enough Go to get some conditional formatting worked into the template. Some media has a `title` but no `series`, some has a `series` but no `title` (for volumes within the series), and some have **both**, and the template now handles all of that beautifully based on the metadata.

## posting workflows

Supporting new taxonomies and templates involved reworking most of how I post to Hugo. I'm currently dependent on iOS's Siri Shortcuts (and a GitHub client) to make the magic happen, and a lot of this work was actually not directly with Hugo but rather rebuilding my Shortcuts so that they'd prompt me in the right way for all of the information needed to support the new site setup. I also spent some time messing with how [EchoFeed](https://echofeed.app) forwards my posts to Mastodon and Bluesky, and that in turn led me to modifying the RSS template for Hugo. 

This last part (RSS and EchoFeed) is something I'd theoretically like to spend more time with. I *could* make my post forwarding more social friendly by forwarding previews of or excerpts from my media reviews rather than posting what's obviously just a title and a link to a blog post (though I also don't really care about unapologetically putting my blog first). At the very least, I'd like for the post summary that goes to social to include some of the series information (when relevant) and not just the title of the work I'm reviewing. Doctor Who audio dramas don't tend to have evocative titles, and even I, the poster, am more interested in them for how they fit into a series than what their individual names are (see also: a lot of comics). 

## bilingual mode!

One of the reasons why the research part of my site got some attention over the summer is because I applied for a job in Francophone Switzerland. The application didn't really go anywhere (which is fine—I'd love to live and work in Switzerland, but I like Lexington and I like my job), but at least I got some more support for my occasionally bilingual posting. 

As with taxonomies and templates, I was very impressed by how easy Hugo made it to create two different language modes on my site. There is now a [French-language homepage](https://spencergreenhalgh.com/fr/) on my site, and if you go to the French-language version of any of my subblogs (say, "[Moi](https://spencergreenhalgh.com/fr/moi/)"), you get a French-language introduction and the site filters down to only the French-language posts. However, I also have French-language posts show up in the English version of the site, which fits my approach and also makes POSSE forwarding a lot easier. This could use some additional work (my posting workflow is a bit clunky when it comes to affirming that I want to post content to the French version of the site), but I'm pretty happy with how it's gone so far.

## conclusion

I've been using Hugo for a POSSE style since 2019 and I've been constantly tinkering with it since then. The last year saw far more tinkering than usual, though, and I'm very pleased with the results. I still have a wishlist of things that I'd like to keep messing with (not least, I'd really, really like to see if I can make the site itself ActivityPub compatible), and I'm sure I'll get to them at some point, but I'm not in a big rush. I'm proud of what I've learned over the past year, and even if these changes benefit me more than anyone else, I think it was worth the time.