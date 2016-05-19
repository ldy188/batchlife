::find the chinese word u input in what file folder you assign
::encode：GBK
::usage:
::flow the tip, input word with space, look out that 
::you have only one chance to input 
::
::process:
::list all file and folder in your filefolder
::cd them && findstr /s /i word *.*
::
::2016/05/19
@echo off
set /p kw=[+]please input keyword you want search:
echo %kw% >nul
echo [-]now in %cd%. Are you sure you want to find in it ?
set /p chd=[+]please input the cmd to change dir:
%chd% 2>nul

rem set kw=呵呵呵 
rem set pwd = %cd%

echo [-]now in %cd%
echo. >>"c:\Users\xxx\out.txt"
echo. >>"c:\Users\xxx\out.txt"
echo [*]begin searching, don't close...
echo ============================================================== >>"c:\Users\xxx\out.txt"
echo -------- %time% begin--------- >>"c:\Users\xxx\out.txt"
echo ----%cd%---- >>"c:\Users\xxx\out.txt"
echo ----------搜索 " %kw% "----------->>"c:\Users\xxx\out.txt"
echo ============================================================== >>"c:\Users\xxx\out.txt"
echo -------包含" %kw% "的文件如下----- >>"c:\Users\xxx\out.txt"
echo. >>"c:\Users\xxx\out.txt"

for /f %%b in ('dir /ad /b') do echo [-]now find in %%b && echo [*]... && for /f  %%a in ('findstr /simd:%%b "%kw%" *.*') do echo %cd%%%b\%%a>>"c:\Users\xxx\out.txt" 

echo. >>"c:\Users\xxx\out.txt" 
echo ---------%time%  end------- >>"c:\Users\xxx\out.txt"
echo =============================================================== >>"c:\Users\xxx\out.txt"
echo. >>"c:\Users\xxx\out.txt"
echo [*]ok!end.now open the file
c:\Users\xxx\out.txt
