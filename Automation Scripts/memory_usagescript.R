mem_stat = read.csv(file = "C:\\Users\\TEMP\\Downloads\\memory_usage.csv", header = TRUE)
mem_stat
mbused = mem_stat$kbmemused/1000
mbused
mbfre = mem_stat$kbmemfree/1000
mbfre 
plot(mem_stat$X02.41.51,mbfre,type = "l",col = "green",ylim=c(6000,11000))
lines(mem_stat$X02.41.51,mbused,type = "o",col = "red")
lines(mem_stat$X02.41.51,mbfre,type = "o",col = "green")
legend("topleft", legend=c("Mb_free", "Mb_used"),
       col=c("green", "red"), lty=1:2, cex=0.7)

title(main="Memory Usage", col.main="red", font.main=4)
title(xlab= "Time", col.lab=rgb(0,0.5,0))
title(ylab= "Value in Mb", col.lab=rgb(0,0.5,0))




mbcache =  mem_stat$kbcached/1000
mbinact =  mem_stat$kbinact/1000
plot(mem_stat$X02.41.51,mbcache,type = "l",col = "red",ylim=c(100,400))
lines(mem_stat$X02.41.51,mbcache,type = "o",col = "green")
lines(mem_stat$X02.41.51,mbinact,type = "o",col = "blue")
mbbuffer =  mem_stat$kbbuffers/1000
lines(mem_stat$X02.41.51,mbbuffer,type = "o",col = "yellow")
title(main="Memory Usage", col.main="red", font.main=4)
title(xlab= "Time", col.lab=rgb(0,0.5,0))
title(ylab= "Value in Mb", col.lab=rgb(0,0.5,0))
legend("topleft", legend=c("Mb_cached", "Mb_inactive","Mb_buffered"),
       col=c("green", "blue","yellow"), lty=1:2, cex=0.7)