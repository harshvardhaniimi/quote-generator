library("shiny")
library("shinyWidgets")

ui = fluidPage(htmlOutput("header"),htmlOutput("quote"),
               htmlOutput("ref"),
               setBackgroundImage(src = "https://source.unsplash.com/featured/?nature?white"))

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
  
  rand = ceiling(runif(1)*length(quote))
  
  ##output quotes
  output$header = renderUI(HTML("<p><img style='display: block; margin-left: auto; 
                                margin-right: auto;' 
                                src='https://upload.wikimedia.org/wikipedia/commons/thumb/d/d6/Wikiquote-logo-en.svg/220px-Wikiquote-logo-en.svg.png' 
                                alt='Wikiquote_Logo' width='130' height='130' />
                                </p>"))
  
  ##output quote
  output$quote = renderUI({
    HTML(paste0("<br><br><br><br>","<p style='text-align:center; background-color:white;'>","<span style='font-family:times; 
                font-size: 22pt;'>",quote[rand],"</p>"))
  })
  
  txt1 = paste0("<p>","<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>",
  "<p style='text-align: center;'>","<span style='font-family:times; font-size: 12pt;'>",
  "<a href='https://www.harsh17.in'>","By Harshvardhan </a>","</p>")

  
  ##output other stuff
  output$ref = renderUI({
    HTML(txt1)
  })
}

shinyApp(ui=ui, server=server)
