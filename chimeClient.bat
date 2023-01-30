:LOOP
    echo %date% %time% >> watch_chimeClient.txt
    python \Users\itb-OP\op_scripts\ChimeClient.py CA010 ignis2-sock.ca-platform.org 11001
    timeout /t 5
goto :LOOP

exit /b 0