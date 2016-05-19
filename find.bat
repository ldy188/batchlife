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
echo. >>"C:\Users\eureka\Desktop\out1.txt"
echo. >>"C:\Users\eureka\Desktop\out1.txt"
echo [*]begin searching, don't close...
echo ============================================================== >>"C:\Users\eureka\Desktop\out1.txt"
echo -------- %time% begin--------- >>"C:\Users\eureka\Desktop\out1.txt"
echo ----%cd%---- >>"C:\Users\eureka\Desktop\out1.txt"
echo ----------搜索 " %kw% "----------->>"C:\Users\eureka\Desktop\out1.txt"
echo ============================================================== >>"C:\Users\eureka\Desktop\out1.txt"
echo -------包含" %kw% "的文件如下----- >>"C:\Users\eureka\Desktop\out1.txt"
echo. >>"C:\Users\eureka\Desktop\out1.txt"

for /f %%b in ('dir /ad /b') do echo [-]now find in %%b && echo [*]... && for /f  %%a in ('findstr /simd:%%b "%kw%" *.*') do echo %cd%%%b\%%a>>"C:\Users\eureka\Desktop\out1.txt" 

echo. >>"C:\Users\eureka\Desktop\out1.txt" 
echo ---------%time%  end------- >>"C:\Users\eureka\Desktop\out1.txt"
echo =============================================================== >>"C:\Users\eureka\Desktop\out1.txt"
echo. >>"C:\Users\eureka\Desktop\out1.txt"
echo [*]ok!end.now open the file
C:\Users\eureka\Desktop\out1.txt
