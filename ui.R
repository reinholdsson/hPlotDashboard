require(shiny)
require(rCharts)
require(shinyGridster)

shinyUI(bootstrapPage(
    div(class = 'container',
        div(class = 'row',
            div(class = 'span5',
                showOutput('mychart', 'highcharts')
            ),
            div(class = 'span5',
                showOutput('mychart2', 'highcharts')
            )
        )
    )
))
