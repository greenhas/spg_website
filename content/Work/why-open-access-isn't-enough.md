---
date: 2022-07-06T13:45:41-04:00
title: "why 'open access' isn't enough"
tags: ["macro","Work","David Wiley","OER","Creative Commons","remixing","alternative textbooks","copyright","licensing","open access","edtech","data science","ICT 661","R","tidyverse","data feminism","Josh Rosenberg","open licensing","research paradigms","free vs. libre"]
---

I just barely microblogged [something](https://spencergreenhalgh.com/work/2022-07-06-this-summer/) about what I want to say here, but over the past hour, it's been nagging at me more and more, and I want to write some more about it.

I was introduced to academia through educational technology, and I was introduced to educational technology through a class at BYU taught by David Wiley. *This* class was not about educational technology, but David's passion for Web 2.0, Open Educational Resources, and remix culture were so strong that I got hooked. OER and Creative Commons licensing both got firmly planted deep in my thinking, and even though they never became a focus of my own edtech work, they've also never left my brain. 

Last fall, I got to teach my department's *Introduction to Data Science* for the first time. I'd been putting my name in the ring for this class since applying for this job, so I was excited to get responsibility for the course and put my own spin on it. As is my wont, I've been slow about putting that personal spin on things, so I stuck to the existing textbook and to most of the existing syllabus during my first semester teaching it. One of the first things I discovered about the course is that the textbook was lacking. It doesn't do R the way I would do R (i.e., the `tidyverse` was entirely absent), some of the material was out of date, and I would have made some different points along the way. Of course, much of that is "just how textbooks work," but partway through the semester, I realized that this was a copyrighted, $50 edition of a book that had begun life as a CC-licensed PDF floating around the internet. This felt unforgiveable—why should my students be paying $50 each for a copyrighted book that was essentially a gussied up version of an openly-licensed PDF? 

Between this betrayal and the fact that so many good R resources are freely available online, I applied for—and was happy to receive—a small grant to remix an alternative textbook for my class. I can take the best parts of the textbook that we were already using and add bits from some of these freely available resources as well. I'm particularly excited to draw from D'Ignazio and Klein's amazing *[Data Feminism](https://data-feminism.mitpress.mit.edu/)*, and because my students asked for more background on the statistical elements of data science, I'll also be using material from OpenStax's *[Introductory Statistics](https://openstax.org/details/books/introductory-statistics)*, which will give a better background than either our previous textbook did or I could. 

However, even before receiving the grant, I quickly realized that some of the material I was hoping to use isn't eligible to add to my remixed textbook. For example, the fantastic *[R for Data Science](https://r4ds.had.co.nz/)* is licensed under a `No Derivatives` license, as is *[Hands-On Programming with R](https://rstudio-education.github.io/hopr/)*. Likewise, I regularly turn to Josh Rosenberg as a mentor for R advice, so I'd been planning to draw from some of the *[Data Science in Education Using R](https://datascienceineducation.com/)* book that he'd put together with amazing colleagues, but the authors hold a firm copyright on the material. In short, while each of these works is available as an *open access* resource, none of them (in their current state) is available for me to adapt, modify, and remix into the textbook that I'm putting together.

Let me be clear: The purpose of this post is not to chew out any of these authors for their licensing decisions. Their licensing decisions are constrained by the publishers of the print editions of their books, authors have a right to work with publishers to get compensation and recognition for their work, to provide *open access* versions of their resources is already tremendously generous, and I know that they had to fight hard with their publishers to just get to this point. All of that makes sense, I'm still able to point my students to these resources even if I can't remix them, and I'm not about to fault any of these authors for taking the route that they did. 

Instead, however, the purpose of this post is to point out that the benefits of *open licensing* go far beyond *open access*—and that we do the conversation a disservice when we reduce our priorities to a simple "you don't have to pay for it." Consider the benefit that I could add to these resources if I were able to add additional content that my beginner students might need, remove content that isn't relevant to our class, update code and content as R and its ecosystem of packages evolve, combine this content with similar content from other openly-licensed resources, or even just describe things in a slightly different way. Again, my students are still going to benefit tremendously from the fact that these resources are available to them without paying a dime—but would they benefit more if I were allowed to add more or less? 

Let's consider a different example that has also stood out to me as I look for sources for my alternative textbook. In many of the classes I teach, I'm reluctant to assign journal articles to students who may be encountering a discipline for the first time. Let's be honest: As many gems as there may be in a particular article, this format often addresses an audience that is already well-versed in the vocabulary, issues, and thinking of a particular disciplinary community. Assigning a journal article on the subject of data science to a students who are novices to data science might well backfire on me. However, because the data science community values openness, they often publish in open access venues that apply open licenses to those articles—and because those licenses are wide open, it's not just a quesion of open access! I have the right to remix the content of the article for my students, adding explanations, removing jargon, combining it with other material, and generally transforming it into a more accessible, student-friendly version of the original research. 

I've been pleased to see just how many great articles on subjects I want to cover are available to remix in this way. This [170+ author paper](https://www.sciencedirect.com/science/article/pii/S0749597821000200?via%3Dihub#!) is an amazing example of why reproducibility is important, but it's also full of jargon and detail that my students don't care about—besides, I think it's really important to emphasize to my students that reproducibility as a virtue is largely dependent on positivist assumptions about research. Fortunately, the paper is licensed [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/), which means that I can easily excerpt the bits that I want, modify the language to my heart's content, and then mash it up with D'Ignazio and Klein's [comments](https://data-feminism.mitpress.mit.edu/pub/5evfe9yd/release/5) on "rational, scientific, objective viewpoints from mythical, imaginary, impossible standpoints." 

This is an amazing gift to an alternative textbook author—and to any instructor who disagrees with how I've done things and wants to tweak my remix further. Furthermore, it's an amazing gift that I had never concerned when I only thought of these journal articles in terms of not having to pay for access to them. This eureka moment of mine is hardly new to those who have been deeply involved in open source, OER, and open licenses for some time, but it was this project that helped me really get it. It's not just about being *free*—there's even more value in being *[libre](https://en.wikipedia.org/wiki/Gratis_versus_libre)*.