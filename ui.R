require(shiny)
require(rCharts)
require(shinyGridster)

shinyUI(bootstrapPage(
    gridster(width = 250, height = 250,
        gridsterItem(col = 1, row = 1, sizex = 1, sizey = 1,
            showOutput('mychart', 'highcharts')
        )
    ),
    gridster(width = 250, height = 250,
        gridsterItem(col = 1, row = 1, sizex = 1, sizey = 1,
            showOutput('mychart2', 'highcharts')
        )
    ),
    gridsterItem(col = 1, row = 1, sizex = 1, sizey = 1,
        h2("gridster test item")
    )
))
