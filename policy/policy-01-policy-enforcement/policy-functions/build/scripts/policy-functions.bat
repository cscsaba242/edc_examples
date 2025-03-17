@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem
@rem SPDX-License-Identifier: Apache-2.0
@rem

@if "%DEBUG%"=="" @echo off
@rem ##########################################################################
@rem
@rem  policy-functions startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%"=="" set DIRNAME=.
@rem This is normally unused
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Resolve any "." and ".." in APP_HOME to make it shorter.
for %%i in ("%APP_HOME%") do set APP_HOME=%%~fi

@rem Add default JVM options here. You can also use JAVA_OPTS and POLICY_FUNCTIONS_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if %ERRORLEVEL% equ 0 goto execute

echo. 1>&2
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH. 1>&2
echo. 1>&2
echo Please set the JAVA_HOME variable in your environment to match the 1>&2
echo location of your Java installation. 1>&2

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto execute

echo. 1>&2
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME% 1>&2
echo. 1>&2
echo Please set the JAVA_HOME variable in your environment to match the 1>&2
echo location of your Java installation. 1>&2

goto fail

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\policy-functions.jar;%APP_HOME%\lib\data-plane-spi-0.11.1.jar;%APP_HOME%\lib\control-plane-core-0.11.1.jar;%APP_HOME%\lib\control-plane-contract-0.11.1.jar;%APP_HOME%\lib\json-ld-spi-0.11.1.jar;%APP_HOME%\lib\control-plane-transfer-0.11.1.jar;%APP_HOME%\lib\transform-spi-0.11.1.jar;%APP_HOME%\lib\store-lib-0.11.1.jar;%APP_HOME%\lib\query-lib-0.11.1.jar;%APP_HOME%\lib\control-plane-catalog-0.11.1.jar;%APP_HOME%\lib\control-plane-aggregate-services-0.11.1.jar;%APP_HOME%\lib\control-plane-spi-0.11.1.jar;%APP_HOME%\lib\catalog-spi-0.11.1.jar;%APP_HOME%\lib\transfer-spi-0.11.1.jar;%APP_HOME%\lib\asset-spi-0.11.1.jar;%APP_HOME%\lib\data-address-http-data-spi-0.11.1.jar;%APP_HOME%\lib\control-plane-policies-lib-0.11.1.jar;%APP_HOME%\lib\contract-spi-0.11.1.jar;%APP_HOME%\lib\state-machine-lib-0.11.1.jar;%APP_HOME%\lib\policy-engine-lib-0.11.1.jar;%APP_HOME%\lib\request-policy-context-spi-0.11.1.jar;%APP_HOME%\lib\participant-spi-0.11.1.jar;%APP_HOME%\lib\policy-engine-spi-0.11.1.jar;%APP_HOME%\lib\policy-spi-0.11.1.jar;%APP_HOME%\lib\validator-spi-0.11.1.jar;%APP_HOME%\lib\secrets-spi-0.11.1.jar;%APP_HOME%\lib\transfer-data-plane-spi-0.11.1.jar;%APP_HOME%\lib\protocol-version-spi-0.11.1.jar;%APP_HOME%\lib\core-spi-0.11.1.jar;%APP_HOME%\lib\parsson-1.1.7.jar;%APP_HOME%\lib\jakarta.json-api-2.1.3.jar;%APP_HOME%\lib\boot-0.11.1.jar;%APP_HOME%\lib\util-lib-0.11.1.jar;%APP_HOME%\lib\boot-lib-0.11.1.jar;%APP_HOME%\lib\boot-spi-0.11.1.jar;%APP_HOME%\lib\opentelemetry-instrumentation-annotations-1.32.0.jar;%APP_HOME%\lib\opentelemetry-api-1.32.0.jar;%APP_HOME%\lib\transaction-spi-0.11.1.jar;%APP_HOME%\lib\runtime-metamodel-0.11.1.jar;%APP_HOME%\lib\failsafe-3.3.2.jar;%APP_HOME%\lib\policy-evaluator-lib-0.11.1.jar;%APP_HOME%\lib\policy-model-0.11.1.jar;%APP_HOME%\lib\opentelemetry-context-1.32.0.jar;%APP_HOME%\lib\annotations-26.0.1.jar;%APP_HOME%\lib\jackson-core-2.18.2.jar;%APP_HOME%\lib\jackson-databind-2.18.2.jar;%APP_HOME%\lib\jackson-annotations-2.18.2.jar


@rem Execute policy-functions
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %POLICY_FUNCTIONS_OPTS%  -classpath "%CLASSPATH%"  %*

:end
@rem End local scope for the variables with windows NT shell
if %ERRORLEVEL% equ 0 goto mainEnd

:fail
rem Set variable POLICY_FUNCTIONS_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
set EXIT_CODE=%ERRORLEVEL%
if %EXIT_CODE% equ 0 set EXIT_CODE=1
if not ""=="%POLICY_FUNCTIONS_EXIT_CONSOLE%" exit %EXIT_CODE%
exit /b %EXIT_CODE%

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
