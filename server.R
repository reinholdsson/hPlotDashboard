require(shiny)
require(rCharts)
require(data.table)

shinyServer(function(input, output){

    output$chart1 <- renderChart({
        a <- hPlot(x = 'Height', y = 'Pulse', data = MASS::survey, type = 'scatter', group = 'Sex', radius = 6)
        a$colors('rgba(223, 83, 83, .5)', 'rgba(119, 152, 191, .5)', 'rgba(60, 179, 113, .5)')
        a$legend(align = 'right', verticalAlign = 'top', layout = 'vertical')
        a$plotOptions(scatter = list(marker = list(symbol = 'circle')))
        a$chart(backgroundColor = NULL)
        a$set(dom = 'chart1')
        return(a)
    })
    
    output$chart2 <- renderChart({
        survey <- as.data.table(MASS::survey)
        freq <- survey[ , .N, by = c('Sex', 'Smoke')]
        a <- hPlot(x = 'Smoke', y = 'N', data = freq, type = 'column', group = 'Sex')
        a$chart(backgroundColor = NULL)
        a$set(dom = 'chart2')
        return(a)
    })
    
    output$chart3 <- renderChart({
        a <- hPlot(Pulse ~ Height, data = MASS::survey, type = "bubble", title = "Zoom demo", subtitle = "bubble chart", size = "Age", group = "Exer")
        a$chart(zoomType = "xy")
        a$chart(backgroundColor = NULL)
        a$set(dom = 'chart3')
        return(a)
    })
    
    output$chart4 <- renderChart({
        survey <- as.data.table(MASS::survey)
        freq <- survey[ , .N, by = c('Smoke')]
        a <- hPlot(x = "Smoke", y = "N", data = freq, type = "pie")
        a$plotOptions(pie = list(size = 150))
        a$chart(backgroundColor = NULL)
        a$set(dom = 'chart4')
        return(a)
    })
})