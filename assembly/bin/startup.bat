 @echo off
 echo ======================================startup==================================
 set OPTS=-Xms512M -Xmx512M -Xss128k -XX:+AggressiveOpts -XX:+UseParallelGC -XX:NewSize=64M
 set LIBPATH=%Rider_HOME_LIB%
 @ECHO ��Ҫ���е�jar���õ�CLASSPATH��
 SET CLASSPATH=%CLASSPATH%;%Rider_HOME_LIB%\Rider-1.0-SNAPSHOT.jar
 set ENGINE=%Rider_HOME_LIB%\Rider-1.0-SNAPSHOT.jar
 set CP=%ENGINE%

 echo ���jar��·��
 echo %CLASSPATH%
 echo ENGINE:%ENGINE%
 set MAIN=alchemystar.engine.server.RiderServer

 set CP=%CP%;%LIBPATH%/*;%CLASSPATH%
 echo ===============================================================================
 echo.
 echo   Engine Startup Environment
 echo   CLASSPATH: %CP%
 echo.
 echo ===============================================================================
 echo.

 @ECHO ����Ӧ�ó���
 rem java -cp %CP% %MAIN% %OPTS%  -Drider.home=%Rider_HOME% -Drider.log.home=%Rider_HOME_LOG%  -conf %Rider_HOME_CONFIG%  >> %Rider_HOME_LOG%\console.log

 rem java -cp %CP% %MAIN% %OPTS%  -Drider.home=%Rider_HOME% -Drider.log.home=%Rider_HOME_LOG%  -conf %Rider_HOME_CONFIG%

 @ECHO �����ļ�Ŀ¼
 ECHO %Rider_HOME_CONFIG%
 java -cp %CP% %MAIN% %OPTS%  -Drider.home=%Rider_HOME% -Drider.log.home=%Rider_HOME_LOG% -conf %Rider_HOME_CONFIG%

 pause