# quote-generator
The aim is to generate quotes from various repositories. I will start with Wikiquotes "Quote of the day" which can be found on: https://en.wikiquote.org/wiki/Wikiquote:Quote_of_the_Day. I will add IMDb and Goodreads after that. 

I used SelectorGadget and rvest to scrap quotes from Wikipedia page. Then I used Unsplash API to get a random nature background image. Combining these two will give me a nice quotes page.

Link to app: https://harshvardhan.shinyapps.io/quotes_generator/.

You can launch it in your R environment using the code: `runGitHub("quote-generator", "harshvardhaniimi")`.

This service is better than, say, Google Assistant's quote because I found it biased. It tends to show me quote related to some topic over and over. Wikiquotes is powered by community and actual people rather than some AI. So, it will hopefully give me some "new" quotes that Google Assistant ignores.


#### Known issues: 
No known issues.
- ~~Texts like "Log In" crop up sometimes. I will fix this later.~~ Fixed.
