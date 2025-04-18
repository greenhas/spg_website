---
types: ["macro"]
date: 2025-04-18T10:33:13-04:00
title: "DuckDuckGo and IP geolocation (with a MapQuest and generative AI tangent)"
tags: ["DuckDuckGo","Bing","Kagi","geolocation","location services","generative AI","MapQuest"]
---
I don't know if this is a DuckDuckGo thing or an underlying Bing thing, but I've started noticing something weird happening when I search for things that don't get a lot of results. When it happened again earlier this week, I finally grabbed a screenshot: 

![](/DDG_location_results.jpg)

So, here I am searching for something related to the (relatively obscure, relatively progressive) religious denomination I belong to, and when DDG (or maybe Bing) couldn't find anything related to the specific thing I was searching for, the first text result that it gave me was the best result it could find for a subset of my search matched with the town I live in: Lexington, Kentucky. 

This, of course, was not at all what I was searching for. It's not even helpful, given that the local congregation of my church shut down years ago, and nothing on that website is up to date or helpful. According to the logic of search engines, though, this sure seems like it ought to be a helpful result, and so it delivers stuff *near me* in the hope that it will be useful for me.

The especially remarkable thing about this seems to be that as a general rule, I have location services turned off for search engines and just about everything else. In fact, I went back to DDG just now to make sure that I had flipped off `Prompt me to use my approximate location to get nearby results` and then reproduced the same results. 

In fact, the second result I got was the *very* outdated MapQuest page for the old Lexington church building, which also has an AI-generated description of that building that is so hilariously wrong that I can't help but indulge myself in a tangent:

## `<tangent>`

Here's the AI description that MapQuest provides

> Nestled in the heart of Lexington, KY, the Community of Christ is a serene haven for worship and reflection. This historic church stands as a beacon of spirituality, welcoming visitors with its charming architecture and peaceful ambiance. The gentle chimes of the church bells echo through the surrounding neighborhood, creating a sense of tranquility and reverence.
> 
> Stepping inside, one is greeted by the warm glow of stained glass windows that dapple the interior with a kaleidoscope of colors. The sacred space is adorned with intricate wooden pews and ornate decor, inviting congregants to gather in unity and prayer. Whether seeking solace in quiet contemplation or joining in communal worship, the Community of Christ offers a sanctuary for all who seek spiritual nourishment in the heart of the Bluegrass State.

Now, I've never actually been in that building (it was marked for sale around the same time I started looking into Community of Christ), but the building is not "in the heart of Lexington," it's not a "historic church," and I'm pretty confident that it didn't have stained glass windows or wooden pews. Get your act together, MapQuest—this is embarrassing.

## `</tangent>`

Okay, back to the matter at hand: "location services" are just one way to geolocate someone—IP addresses provide a pretty straightforward way of identifying someone's whereabouts, even if they don't give access to exact GPS location. So, I turned on my VPN and ran the same search again. I didn't get the Lexington results when I searched from out of state or out of country locations, which feels like enough of a smoking gun to me: DuckDuckGo (or Bing) is using my IP address to geolocate me and deliver results based on that.

I dunno, I guess this is maybe a reasonable use of IP geolocation, given that many people *do* want localized results when they're using search engines. It's also not the worst privacy violation in the world, given that IP addresses are a necessary part of internet infrastructure. It still bothers me a lot to see this happening. I didn't ask DDG (or Bing) for localized results, and I even went so far as to explicitly turn them off. 

What's more, the localized results I got were **very clearly** not what I was looking for—it was a flailing attempt to deliver me something that might be relevant in the absence of anything else. Here's where the tangent comes into play: Whatever LLM MapQuest is using clearly didn't have enough to go on to actually tell me anything about the Lexington Community of Christ congregation. **This makes sense**, given that it was trying to describe a tiny congregation of an obscure religious denomination with a small web presence and that closed down over 5 years ago. Likewise, my original DDG search was trying to make sense of a reference that a friend of mine made in a text message that I hadn't heard of—there's just not a lot for the search engine to come up with.

Yet, these tools that we have available are so dedicated to trying to be useful to us that "no results" isn't an option for them. And that's because their utility to us drives their business models in a way that bends things back around—perceived utility to us is profit for them. I'm fine with "no results" (or "no LLM description"), but shoving content in our faces is a way for search engines (or generative AI tools) to make money.

At the end of things, this just makes me think once again that it's really time to try a $5/month Kagi subscription. I don't know if Kagi uses IP geolocation, and I wouldn't be surprised if it did. All the same, though, paying for the product would give me a bit more confidence that I have control in the situation.