require(shiny)
require(rCharts)
require(shinyGridster)

shinyUI(bootstrapPage(
    div(class = 'container',
        gridster(width = 400, height = 400,
            gridsterItem(col = 1, row = 1, sizex = 1, sizey = 1, 
                style="background: lightgoldenrodyellow;",
                showOutput('chart1', 'highcharts')
            ),
            gridsterItem(col = 1, row = 1, sizex = 1, sizey = 1, 
                style="background: lightgoldenrodyellow;",
                showOutput('chart2', 'highcharts')
            ),
            gridsterItem(col = 1, row = 1, sizex = 1, sizey = 1, 
                style="background: lightgoldenrodyellow;",
                showOutput('chart3', 'highcharts')
            ),
            gridsterItem(col = 1, row = 1, sizex = 1, sizey = 1,
                style="background: lightgoldenrodyellow;",
                showOutput('chart4', 'highcharts')
            )
        )
    )
))
