library("shiny")

ui = fluidPage(verbatimTextOutput(outputId = "quote"),htmlOutput("ref"))

server = function (input,output)
{
  library("rvest","xml2")
  
  url = read_html("https://en.wikiquote.org/wiki/Wikiquote:Quote_of_the_Day")
  dat = html_nodes(url, "dd")
  quote1 = html_text(dat)
  head(quote1)
  
  dat2 = html_nodes(url, "li")
  quote2 = html_text(dat2)
  
  quote=rbind(quote1,quote2)
  
  rand = ceiling(runif(1)*5880)
  output$quote = renderText({quote[rand]})
  
  txt1 = "Pull referesh to load another quote."
  txt2 = "Designed and produced by Harshvardhan. The quotes' list is updated daily with 
                            Wikiquotes 'Quote of the Day'."

  output$ref = renderUI({
    HTML(paste(txt1,txt2,sep = "<br>"))
  })
}

shinyApp(ui=ui, server=server)