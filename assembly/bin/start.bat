@echo off

setlocal
echo ��ʼ�������ݿ����............

set CURRENT_DIR_BIN=%cd%
echo %CURRENT_DIR_BIN%

set Rider_HOME_BIN=%CURRENT_DIR_BIN%
echo %Rider_HOME_BIN%

cd ..
set Rider_HOME=%cd%
echo %Rider_HOME%

set Rider_HOME_LIB=%Rider_HOME%\lib
echo %Rider_HOME_LIB%

set Rider_HOME_CONFIG=%Rider_HOME%\conf
echo %Rider_HOME_CONFIG%

set Rider_HOME_LOG=%Rider_HOME%\logs
echo %Rider_HOME_LOG%


rem FOR %%i IN ("%Rider_HOME_LIB%\*.jar") DO SET CLASSPATH=!CLASSPATH!;%%~fsi
rem echo %CLASSPATH%

rem FOR %%i IN ("%Rider_HOME_LIB%\*.jar") DO SET CLASSPATH=!CLASSPATH!;%%i
rem echo %CLASSPATH%

rem set CLASSPATH=%CLASSPATH%
rem echo %CLASSPATH%

@ECHO StartUp App
@ECHO ���û�������,ѭ����ǰĿ¼�µ�libĿ¼������jar�ļ�,������CLASSPATH

FOR %%F IN (%Rider_HOME_LIB%\*.jar) DO call :addcp %%F
goto extlibe
:addcp
SET CLASSPATH=%CLASSPATH%;%1
goto :eof
:extlibe

@ECHO ��ʾCLASSPATH
SET CLASSPATH

echo 11111111111111111111111
call %Rider_HOME_BIN%\startup.bat
echo 2222222222222222222222222

echo ���ݿ����������ɣ���

:end