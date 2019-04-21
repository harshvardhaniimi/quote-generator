library("shiny")

ui = fluidPage(htmlOutput("header"),htmlOutput("quote"),htmlOutput("ref"))

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
  
  ##output quotes
  output$header = renderUI(HTML("<p><img style='display: block; margin-left: auto; 
                                margin-right: auto;' 
                                src='https://upload.wikimedia.org/wikipedia/commons/thumb/d/d6/Wikiquote-logo-en.svg/220px-Wikiquote-logo-en.svg.png' 
                                alt='Wikiquote_Logo' width='220' height='220' />
                                </p>"))
  
  ##output quote
  output$quote = renderUI({
    HTML(paste0("<br><br><br><br>","<p style='text-align: center;'>","<span style='font-family:times; 
                font-size: 22pt;'>","<mark>",quote[rand],"</mark>","</p>"))
  })
  
  txt1 = paste0("<p>","Pull refresh to load another quote.")
  txt2 = paste0("<i>Designed and produced by Harshvardhan. The quotes' list is updated daily with 
                Wikiquotes 'Quote of the Day'. This project is not supported or sponsored 
                by Wikiquotes.:P")

  ##output other stuff
  output$ref = renderUI({
    HTML(paste(txt1,txt2,sep = "<br><br><br>"))
  })
}

shinyApp(ui=ui, server=server)
