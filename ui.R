require(shiny)
require(rCharts)
require(shinyGridster)

shinyUI(bootstrapPage(
    div(class = 'container',
        gridster(width = 250, height = 400,
            gridsterItem(col = 1, row = 2, sizex = 2, sizey = 1, 
                style="background: lightgoldenrodyellow;",
                showOutput('chart1', 'highcharts')
            ),
            gridsterItem(col = 1, row = 2, sizex = 2, sizey = 1, 
                style="background: lightgoldenrodyellow;",
                showOutput('chart2', 'highcharts')
            ),
            gridsterItem(col = 1, row = 2, sizex = 2, sizey = 1, 
                style="background: lightgoldenrodyellow;",
                showOutput('chart3', 'highcharts')
            ),
            gridsterItem(col = 1, row = 2, sizex = 2, sizey = 1,
                style="background: lightgoldenrodyellow;",
                showOutput('chart4', 'highcharts')
            )
        )
    )
))
