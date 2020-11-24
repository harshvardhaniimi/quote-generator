# quote-generator
The aim is to make a quotes generator website that we consume with the morning coffee, hopefully keeping us motivated for the day. Quotes are derived from [Wikiquotes "Quote of the day"](https://en.wikiquote.org/wiki/Wikiquote:Quote_of_the_Day).

I used [SelectorGadget](https://selectorgadget.com/) and [rvest](https://blog.rstudio.com/2014/11/24/rvest-easy-web-scraping-with-r/#:~:text=rvest%20is%20new%20package%20that,of%20simple%2C%20easily%20understood%20pieces.) to scrap quotes from the Wikipedia page. Then I used [Unsplash API](https://source.unsplash.com/) to get a random nature background image. Finally, I use Shiny to combine all of these and make a webapp out of it. The app is hosted on [shinyapps.io](https://www.shinyapps.io/), a freemium ShinyApps webhost.

Link to app: https://harshvardhan.shinyapps.io/quotes_generator/.

You can launch it in your R environment using the code: `runGitHub("quote-generator", "harshvardhaniimi")`.

This service is better than, say, Google Assistant's quote because I found it biased. It tends to show me quote related to some topic over and over. Wikiquotes is powered by community and actual people rather than some AI. So, it will hopefully give me some "new" quotes that Google Assistant ignores.


#### Known issues: 
No known issues.
- ~~Texts like "Log In" crop up sometimes. I will fix this later.~~ Fixed.
- If you find any issue, please let me know (by raising an issue, or by email).
