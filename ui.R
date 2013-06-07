require(shiny)
require(rCharts)
require(shinyGridster)

shinyUI(bootstrapPage(
    div(class = 'container',
        div(class = 'row',
            div(class = 'span5', showOutput('chart1', 'highcharts')),
            div(class = 'span5', showOutput('chart2', 'highcharts'))
        ),
        div(class = 'row',
            div(class = 'span5', showOutput('chart3', 'highcharts')),
            div(class = 'span5', showOutput('chart4', 'highcharts'))
        )
    )
))
