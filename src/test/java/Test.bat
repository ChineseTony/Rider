@ECHO OFF
@ECHO STARTUP App
@ECHO ���û�������,ѭ����ǰĿ¼�µ�libĿ¼������jar�ļ�,������CLASSPATH

FOR %%F IN (lib\*.jar) DO call :addcp %%F
goto extlibe
:addcp
SET CLASSPATH=%CLASSPATH%;%1
goto :eof
:extlibe

@ECHO ��Ҫ���е�jar���õ�CLASSPATH��
SET CLASSPATH=%CLASSPATH%;XXXX-1.0.0.jar
@ECHO ��ʾCLASSPATH
SET CLASSPATH

@ECHO ����Ӧ�ó���
java -server XxxxxMain

pause