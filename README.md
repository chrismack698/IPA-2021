# IPA% 2021
_What's the best way to measure contact outcomes?_

## History
I know what you're thinking. _IPA? Isn't that the beer people pretend to like to be cool?_ Well, yes, it is. But it also stands for Ideal Plate Approach (IPA%), a sabermetric that I invented that helps identify productive hitters, which I think is pretty cool. To put it as simply as possible without repeating the article I wrote about it, Baseball Savant tracks contact outcomes in six ways: weak, topped, under, flare/burner, solid, and barrel. Of those six, flare/burners, solids, and barrels are the only outcomes that are productive.

A little over a year ago, I read an article by Jonathan Metzelaar, a writer who I am on staff with at Pitcher List in which he details Ideal Contact Rate (ICR), a metric that effectively sums the percentage of a player's batted ball events that are one of those three outcomes.

I thought this was a really cool way to use those outcomes, but I wanted to expand on this idea by weighting the outcomes by their respective run values and adding BB%, which is arguably the second most productive outcome potential behind barrel%. Additionally, I wanted to use the percentages on a per plate appearance basis rather than a batted ball event basis. This helps account for players who don't make much contact (i.e. those who strike out more frequently).   

So, I created IPA% to do just that. It's not a perfect stat by any means, but it does measure favorably in many ways. If you want to read why I think so, you can find my full article that I wrote last year [here](https://www.pitcherlist.com/an-expansion-on-ideal-contact-rate-introducing-ipa/).

## Methodology
Honestly, this was a pretty simple project, but when I wrote the article last year I couldn't do it without help. I utilized the Data Science team at Pitcher List to pull the data that I needed because I had no idea how to do it myself. I'm smiling to myself thinking about how far I've come over the last year, even though there is so much more to learn. It's nice to be able to appreciate my ability to do something on my own, even if it is a small project.

Anywho, thanks to the PyBaseball package, I was able to grab all of the data I needed and import it into a PostgreSQL database. After transforming the data using SQL, I connected to Tableau and built out a fairly minimal dashboard there. You can find that dashboard [here](https://public.tableau.com/views/IPADashboard2021/Dashboard1?:language=en-US&publish=yes&:display_count=n&:origin=viz_share_link). And, if you're interested in seeing my first ever published dashboard (my first IPA dashboard), you can find it [here](https://public.tableau.com/views/IPA_16121284049440/Dashboard1?:language=en-US&:display_count=n&:origin=viz_share_link). Apparently I really liked color, and clearly I had no idea how Tableau worked. My love for scatterplots has not faded, but I hope you'll find the newer dashboard a little cleaner. 

## Future Research
I'm hoping in the near future to find IPA%'s plate appearance threshold for stabilization - based on the data I have currently, I would guess it's somewhere around midseason (~300 PA). But that's a question to be answered another day!
