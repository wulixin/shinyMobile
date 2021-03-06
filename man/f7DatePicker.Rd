% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/f7-inputs.R
\name{f7DatePicker}
\alias{f7DatePicker}
\title{Create a Framework7 date input}
\usage{
f7DatePicker(
  inputId,
  label,
  value = NULL,
  min = NULL,
  max = NULL,
  format = "yyyy-mm-dd"
)
}
\arguments{
\item{inputId}{Date input id.}

\item{label}{Input label.}

\item{value}{Start value.}

\item{min}{Minimum date.}

\item{max}{Maximum date.}

\item{format}{Date format: "yyyy-mm-dd", for instance.}
}
\description{
Create a Framework7 date input
}
\examples{
if (interactive()) {
 library(shiny)
 library(shinyMobile)
 shinyApp(
   ui = f7Page(
     preloader = FALSE,
     color = "pink",
     title = "My app",
     f7SingleLayout(
       navbar = f7Navbar(title = "f7DatePicker"),
       f7DatePicker(
         inputId = "date",
         label = "Choose a date",
         value = "2019-08-24"
       ),
       "The selected date is",
       textOutput("selectDate")
     )
   ),
   server = function(input, output, session) {
     output$selectDate <- renderText(input$date)
   }
 )
}
}
