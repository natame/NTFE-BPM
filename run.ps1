.\build host Debug
.\build web Debug

echo 'run bpm'
start tools\apploader\Apploader.Console.exe

echo 'run bpm admin web'
start iexplore "http://localhost:8889"
$dir=Get-Location
$dir=''+$dir
$p=$dir+'\build\debug\adminWeb_ntfe'
start "C:\PROGRA~2\IIS Express\iisexpress.exe" "/path:$p  /port:8889 /clr:V4.0"