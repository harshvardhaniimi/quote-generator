# quote-generator
The aim is to generate quotes from various repositories. I will start with Wikiquotes "Quote of the day" which can be found on: https://en.wikiquote.org/wiki/Wikiquote:Quote_of_the_Day. I will add IMDb and Goodreads after that. 

I used SelectorGadget and rvest to scrap quotes from Wikipedia page. SelectorGadget made the task quite easy. Currently the code is capable to generate a random quote from the collection and show you quote(s) which contain any phrase. This means you can find quotes that were said by Mark Twain, as well as those quotes which have the word "knowledge" in it. Quite helpful.

~~Finally, the aim is to make a Shiny app for this so that I can just "refresh" a page to get a quote whenever I want. I've no idea how Shiny app functions, so I will have to learn that first.~~

Finally, there is a shiny app for it that you can use to get the code. Just reload the page to get a new code. Hope you like it. This is the first time I am using Shiny. Link to app: https://harshvardhan.shinyapps.io/quotes_generator/.
You can launch it in your R environment using the code: `runGitHub( "quote-generator", "harshvardhaniimi")`.

This service is better than, say, Google Assistant's quote because I find that very biased. It tends to show me quote related to some topic over and over. Wikiquotes, IMDb and Goodreads are powered by community and actual people rather than some AI. So, it will hopefully give me some "new" quotes that Google Assistant ignores.


#### Known issues: 
- Texts like "Log In" crop up sometimes. I will fix this later.
