:: -----------------------------------------------------------------
:: File:   build.bat
:: Author: (c) 2024 Jens Kallup - paule32
:: All rights reserved
::
:: This batch script will generate the documentation for the minFPC
:: and the miniRTL project.
:: -----------------------------------------------------------------
@echo off
set doxygen=E:\doxygen\bin\doxygen.exe
set DOXYGEN_HH=E:/doxygen/hhc/hhc.exe
::
echo -[ remove old crap...           ]-
rmdir /s /q .\out >nul: 2>nul:
::
for %%A in (de en) do (
    echo -[ create new: %%A folders...    ]-
    mkdir .\out\%%A\dark\html\img
    mkdir .\out\%%A\light\html\img
    mkdir .\out\%%A\chm
)
::
for %%A in (de en) do (
    echo -[ copy new: %%A files...        ]-
    copy img\logo.png .\out\%%A\dark\html\img\logo.png  >nul: 2>nul:
    copy img\logo.png .\out\%%A\light\html\img\logo.png >nul: 2>nul:
)
::
for %%A in (de en) do (
    echo -[ create %%A: dark chm file...  ]-
    %doxygen% Doxyfile.chm.dark.%%A >nul: 2>nul:
    if errorlevel 1 (goto buildError)

    echo -[ create %%A: light chm file... ]-
    %doxygen% Doxyfile.chm.light.%%A >nul: 2>nul:
    if errorlevel 1 (goto buildError)
)
::
for %%A in (de en) do (
    echo -[ create %%A: dark htm file...  ]-
    %doxygen% Doxyfile.htm.dark.%%A >nul: 2>nul:
    if errorlevel 1 (goto buildError)

    echo -[ create %%A: light htm file... ]-
    %doxygen% Doxyfile.htm.light.%%A >nul: 2>nul:
    if errorlevel 1 (goto buildError)
)
::
for %%A in (de en) do (
    echo -[ copy new %%A: chm files...    ]-
    copy .\out\%%A\dark\html\project.chm  out\%%A\chm\project_dark.chm >nul: 2>nul:
    copy .\out\%%A\dark\html\project.chi  out\%%A\chm\project_dark.chi >nul: 2>nul:

    copy .\out\%%A\light\html\project.chm out\%%A\chm\project_light.chm >nul: 2>nul:
    copy .\out\%%A\light\html\project.chi out\%%A\chm\project_light.chi >nul: 2>nul:
)
::
echo -[ successfully build files...  ]-
goto done
:buildError
echo.
echo error: docs could not build.
goto end
:done
echo.
echo done.
:end
