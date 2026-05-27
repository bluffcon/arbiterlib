@echo off
for %%f in (*.ogg) do (
  ffmpeg -i "%%f" -ac 1 "temp_%%f" && move /y "temp_%%f" "%%f" >nul
)
echo Done.