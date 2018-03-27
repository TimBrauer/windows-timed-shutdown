@echo off
SET /P delay="Minutes before shutdown: "
SET /A seconds = %delay% * 60
SET /P confirm="Computer will shut down in %delay% minutes. Accept? "

IF /I "%confirm%"=="y" ( 
	shutdown -s -t %seconds% 
	pause
) ELSE ( 
	IF /I "%confirm%"=="yes" ( 
		shutdown -s -t %seconds% 
		pause
	) ELSE ( 
		echo "Shutdown canceled." 
		pause 
	)  
)

EXIT /B 0