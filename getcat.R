
library(dplyr)
library(jpeg)

getcutecat <- function(x){
    # writeLines(
    #     sprintf("![](http://placekitten.com/g/%s/%s)", x, x)
    # ) 
    
    sprintf("http://placekitten.com/g/%s/%s", x, x) %>%
        download.file('y.jpg', mode = 'wb')
    
    jj <- readJPEG("y.jpg",native=TRUE)
    plot(0:1,0:1,type="n",ann=FALSE,axes=FALSE)
    rasterImage(jj,0,0,1,1)
}

