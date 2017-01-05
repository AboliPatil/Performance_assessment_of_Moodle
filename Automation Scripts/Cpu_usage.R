cpu = read.csv(file = "C:\\Users\\TEMP\\Downloads\\cpu_usage.csv",header=TRUE)
cpu
plot(cpu$X02.41.51,cpu$X.usr,type = "l", col="green")
lines(cpu$X02.41.51,cpu$X.usr,type = "o",col = "green")
title(main="CPU Usage by Users", col.main="red", font.main=4)
title(xlab= "Time", col.lab=rgb(0,0.5,0))
title(ylab= "% Users ", col.lab=rgb(0,0.5,0))
plot(cpu$X02.41.51,cpu$X.sys,type = "l", col="green")
lines(cpu$X02.41.51,cpu$X.sys,type = "o",col = "green")
title(main="CPU Usage by system", col.main="red", font.main=4)
title(xlab= "Time", col.lab=rgb(0,0.5,0))
title(ylab= "Usage by system ", col.lab=rgb(0,0.5,0))

