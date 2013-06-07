require(shiny)
require(rCharts)
require(data.table)

shinyServer(function(input, output, session){

    output$mychart <- renderChart({
        a <- hPlot(x = 'Height', y = 'Pulse', data = MASS::survey, type = 'scatter', group = 'Sex', radius = 6)
        a$chart(backgroundColor = NULL, className = "mychart")
        a$colors('rgba(223, 83, 83, .5)', 'rgba(119, 152, 191, .5)', 'rgba(60, 179, 113, .5)')
        a$legend(align = 'right', verticalAlign = 'top', layout = 'vertical')
        a$plotOptions(scatter = list(marker = list(symbol = 'circle')))
        a$set(dom = 'mychart')
        return(a)
    })
    
    output$mychart2 <- renderChart({
        survey <- as.data.table(MASS::survey)
        freq <- survey[ , .N, by = c('Sex', 'Smoke')]
        a <- hPlot(x = 'Smoke', y = 'N', data = freq, type = 'column', group = 'Sex')
        a$chart(backgroundColor = NULL)
        a$colors('rgba(223, 83, 83, .5)', 'rgba(119, 152, 191, .5)', 'rgba(60, 179, 113, .5)')
        a$legend(align = 'right', verticalAlign = 'top', layout = 'vertical')
        a$set(dom = 'mychart2')
        return(a)
    })
})