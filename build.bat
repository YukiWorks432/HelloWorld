@echo off
set app=HelloWorld
set Reset=1
set type=Debug0

cd build
if %Reset%==1 (
    rm -rf *
)
cmake -G "MSYS Makefiles" .. > result.txt 2>&1
make --no-print-directory >> result.txt 2>&1
findstr /i Error result.txt >> result.txt 2>&1
if %errorlevel%==0 (
    echo Make Error
    type result.txt
    goto :RET
) else (
    goto :ZIP
)

:ZIP
cd ../../
cd %app%
if %Reset%==1 (
    rm -rf *
)
rsync -a ../ ./ --exclude "/%app%/"
Python ./copydll.py %app%.exe
rm -rf ./copydll.py ./HelloWorld.ympdb ./HelloWorld.txt

if %type%==Debug (
    lldb %app%.exe
)

rm -f ./.gdbinit
cd ../
rm -f %app%.exe
cd ./%app%-src
exit /b

:RET
cd ..
exit /b