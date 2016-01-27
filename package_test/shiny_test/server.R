
library(shiny)

getStringLength <- function(x){
	return(nchar(x))
}

shinyServer(
  function(input, output){
  	# 
  	output$pinglun <- renderPrint({
  		print( input$comment );
  		print( getStringLength(input$comment) );
  	})

  	# 文件输出
    output$contents <- renderTable({
      inFile <- input$file1
      
      if (is.null(inFile)) {
        return(NULL)
      }
      
      read.csv(inFile$datapath, header = input$header, sep=input$sep, quote=input$quote)
    })
  }
)


