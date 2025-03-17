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
@rem  advanced-02-custom-runtime startup script for Windows
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

@rem Add default JVM options here. You can also use JAVA_OPTS and ADVANCED_02_CUSTOM_RUNTIME_OPTS to pass JVM options to this script.
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

set CLASSPATH=%APP_HOME%\lib\advanced-02-custom-runtime.jar;%APP_HOME%\lib\boot-0.11.1.jar;%APP_HOME%\lib\dsp-0.11.1.jar;%APP_HOME%\lib\iam-mock-0.11.1.jar;%APP_HOME%\lib\configuration-filesystem-0.11.1.jar;%APP_HOME%\lib\boot-lib-0.11.1.jar;%APP_HOME%\lib\dsp-http-api-configuration-0.11.1.jar;%APP_HOME%\lib\dsp-catalog-0.11.1.jar;%APP_HOME%\lib\dsp-catalog-http-dispatcher-0.11.1.jar;%APP_HOME%\lib\dsp-negotiation-0.11.1.jar;%APP_HOME%\lib\dsp-negotiation-http-dispatcher-0.11.1.jar;%APP_HOME%\lib\dsp-transfer-process-0.11.1.jar;%APP_HOME%\lib\dsp-transfer-process-http-dispatcher-0.11.1.jar;%APP_HOME%\lib\dsp-version-0.11.1.jar;%APP_HOME%\lib\dsp-version-http-dispatcher-0.11.1.jar;%APP_HOME%\lib\dsp-http-core-0.11.1.jar;%APP_HOME%\lib\dsp-catalog-http-api-0.11.1.jar;%APP_HOME%\lib\dsp-catalog-http-api-lib-0.11.1.jar;%APP_HOME%\lib\dsp-negotiation-http-api-0.11.1.jar;%APP_HOME%\lib\dsp-negotiation-http-api-lib-0.11.1.jar;%APP_HOME%\lib\dsp-transfer-process-http-api-0.11.1.jar;%APP_HOME%\lib\dsp-transfer-process-transform-0.11.1.jar;%APP_HOME%\lib\dsp-version-http-api-0.11.1.jar;%APP_HOME%\lib\dsp-transfer-process-http-api-lib-0.11.1.jar;%APP_HOME%\lib\dsp-http-spi-0.11.1.jar;%APP_HOME%\lib\dsp-catalog-transform-0.11.1.jar;%APP_HOME%\lib\dsp-catalog-transform-lib-0.11.1.jar;%APP_HOME%\lib\dsp-negotiation-transform-0.11.1.jar;%APP_HOME%\lib\dsp-negotiation-transform-lib-0.11.1.jar;%APP_HOME%\lib\dsp-transfer-process-transform-lib-0.11.1.jar;%APP_HOME%\lib\transform-lib-0.11.1.jar;%APP_HOME%\lib\dsp-catalog-validation-lib-0.11.1.jar;%APP_HOME%\lib\dsp-negotiation-validation-lib-0.11.1.jar;%APP_HOME%\lib\dsp-transfer-process-validation-lib-0.11.1.jar;%APP_HOME%\lib\dsp-spi-0.11.1.jar;%APP_HOME%\lib\control-plane-spi-0.11.1.jar;%APP_HOME%\lib\catalog-spi-0.11.1.jar;%APP_HOME%\lib\http-spi-0.11.1.jar;%APP_HOME%\lib\jersey-providers-lib-0.11.1.jar;%APP_HOME%\lib\web-spi-0.11.1.jar;%APP_HOME%\lib\json-ld-0.11.1.jar;%APP_HOME%\lib\json-ld-lib-0.11.1.jar;%APP_HOME%\lib\validator-lib-0.11.1.jar;%APP_HOME%\lib\validator-spi-0.11.1.jar;%APP_HOME%\lib\token-spi-0.11.1.jar;%APP_HOME%\lib\contract-spi-0.11.1.jar;%APP_HOME%\lib\transfer-spi-0.11.1.jar;%APP_HOME%\lib\control-plane-transform-0.11.1.jar;%APP_HOME%\lib\json-ld-spi-0.11.1.jar;%APP_HOME%\lib\transform-spi-0.11.1.jar;%APP_HOME%\lib\data-plane-selector-spi-0.11.1.jar;%APP_HOME%\lib\participant-spi-0.11.1.jar;%APP_HOME%\lib\asset-spi-0.11.1.jar;%APP_HOME%\lib\request-policy-context-spi-0.11.1.jar;%APP_HOME%\lib\policy-engine-spi-0.11.1.jar;%APP_HOME%\lib\keys-spi-0.11.1.jar;%APP_HOME%\lib\policy-spi-0.11.1.jar;%APP_HOME%\lib\protocol-version-spi-0.11.1.jar;%APP_HOME%\lib\data-plane-spi-0.11.1.jar;%APP_HOME%\lib\core-spi-0.11.1.jar;%APP_HOME%\lib\boot-spi-0.11.1.jar;%APP_HOME%\lib\opentelemetry-api-1.32.0.jar;%APP_HOME%\lib\util-lib-0.11.1.jar;%APP_HOME%\lib\opentelemetry-context-1.32.0.jar;%APP_HOME%\lib\runtime-metamodel-0.11.1.jar;%APP_HOME%\lib\policy-model-0.11.1.jar;%APP_HOME%\lib\jackson-datatype-jakarta-jsonp-2.18.2.jar;%APP_HOME%\lib\swagger-jaxrs2-jakarta-2.2.22.jar;%APP_HOME%\lib\swagger-integration-jakarta-2.2.22.jar;%APP_HOME%\lib\swagger-core-jakarta-2.2.22.jar;%APP_HOME%\lib\jackson-datatype-jsr310-2.18.2.jar;%APP_HOME%\lib\jackson-jakarta-rs-json-provider-2.18.2.jar;%APP_HOME%\lib\jackson-jakarta-rs-base-2.18.2.jar;%APP_HOME%\lib\jackson-module-jakarta-xmlbind-annotations-2.18.2.jar;%APP_HOME%\lib\jackson-dataformat-yaml-2.18.2.jar;%APP_HOME%\lib\jackson-core-2.18.2.jar;%APP_HOME%\lib\jackson-databind-2.18.2.jar;%APP_HOME%\lib\swagger-models-jakarta-2.2.22.jar;%APP_HOME%\lib\jackson-annotations-2.18.2.jar;%APP_HOME%\lib\failsafe-okhttp-3.3.2.jar;%APP_HOME%\lib\failsafe-3.3.2.jar;%APP_HOME%\lib\okhttp-4.12.0.jar;%APP_HOME%\lib\parsson-1.1.7.jar;%APP_HOME%\lib\jakarta.json-api-2.1.3.jar;%APP_HOME%\lib\jakarta.ws.rs-api-4.0.0.jar;%APP_HOME%\lib\okio-jvm-3.6.0.jar;%APP_HOME%\lib\kotlin-stdlib-jdk8-1.9.10.jar;%APP_HOME%\lib\kotlin-stdlib-jdk7-1.9.10.jar;%APP_HOME%\lib\kotlin-stdlib-1.9.10.jar;%APP_HOME%\lib\annotations-26.0.1.jar;%APP_HOME%\lib\titanium-json-ld-1.4.1.jar;%APP_HOME%\lib\jetty-jakarta-servlet-api-5.0.2.jar;%APP_HOME%\lib\classgraph-4.8.165.jar;%APP_HOME%\lib\javassist-3.30.2-GA.jar;%APP_HOME%\lib\swagger-annotations-jakarta-2.2.22.jar;%APP_HOME%\lib\snakeyaml-2.3.jar;%APP_HOME%\lib\kotlin-stdlib-common-1.9.10.jar;%APP_HOME%\lib\commons-lang3-3.14.0.jar;%APP_HOME%\lib\slf4j-api-2.0.9.jar;%APP_HOME%\lib\jakarta.xml.bind-api-3.0.1.jar;%APP_HOME%\lib\jakarta.validation-api-3.0.2.jar;%APP_HOME%\lib\jakarta.activation-2.0.1.jar


@rem Execute advanced-02-custom-runtime
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %ADVANCED_02_CUSTOM_RUNTIME_OPTS%  -classpath "%CLASSPATH%" org.eclipse.edc.sample.runtime.CustomRuntime %*

:end
@rem End local scope for the variables with windows NT shell
if %ERRORLEVEL% equ 0 goto mainEnd

:fail
rem Set variable ADVANCED_02_CUSTOM_RUNTIME_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
set EXIT_CODE=%ERRORLEVEL%
if %EXIT_CODE% equ 0 set EXIT_CODE=1
if not ""=="%ADVANCED_02_CUSTOM_RUNTIME_EXIT_CONSOLE%" exit %EXIT_CODE%
exit /b %EXIT_CODE%

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
