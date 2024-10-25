:: -----------------------------------------------------------------
:: File:   build.bat
:: Author: (c) 2024 Jens Kallup - paule32
:: All rights reserved
::
:: This batch script will generate the documentation for the minFPC
:: and the miniRTL project.
:: -----------------------------------------------------------------
@echo off
::
:: you need to change the following two lines above to your needs:
set doxpath=E:/doxygen
set texpath=L:/MikTeX/miktex/bin/x64
::
set DOXYGEN_HH=%doxpath%/hhc/hhc.exe
set manfile=refman
::
set doxygen=%doxpath%/bin/doxygen.exe
::
set pdflatex=%texpath%/pdflatex.exe
set makindex=%texpath%/makeindex.exe
set biblatex=%texpath%/bibtex.exe
::
echo -[ remove old crap...           ]-
rmdir /s /q .\out >nul: 2>nul:
::
for %%A in (de en) do (
    echo -[ create new: %%A folders...    ]-
    mkdir .\out\%%A\htm\dark\img
    mkdir .\out\%%A\htm\light\img
    mkdir .\out\%%A\chm
    mkdir .\out\%%A\tex
    mkdir .\out\%%A\pdf
)
::
for %%A in (de en) do (
    echo -[ copy new: %%A files...        ]-
    copy img\logo.png .\out\%%A\dark\htm\img\logo.png  >nul: 2>nul:
    copy img\logo.png .\out\%%A\light\htm\img\logo.png >nul: 2>nul:
    copy .\navtree.js .\out\%%A\dark\htm\navtree.js    >nul: 2>nul:
    copy .\navtree.js .\out\%%A\light\htm\navtree.js   >nul: 2>nul:
)
::
for %%A in (de en) do (
    echo -[ create %%A: dark chm file...  ]-
    %doxygen% Doxyfile.chm.dark.%%A >nul: 2>nul:
    if errorlevel 1 (goto buildError)

    echo -[ create %%A: dark htm file...  ]-
    %doxygen% Doxyfile.htm.dark.%%A >nul: 2>nul:
    if errorlevel 1 (goto buildError)
    
    echo -[ create %%A: light chm file... ]-
    %doxygen% Doxyfile.chm.light.%%A >nul: 2>nul:
    if errorlevel 1 (goto buildError)
    
    echo -[ create %%A: light htm file... ]-
    %doxygen% Doxyfile.htm.light.%%A >nul: 2>nul:
    if errorlevel 1 (goto buildError)
)
::
for %%A in (de en) do (
    echo -[ delete %%A: directory files...]-
    rmdir /s /q out\%%A\tex >nul: 2>nul:
    mkdir .\out\%%A\tex >nul: 2>nul:
    cd .\out\%%A\tex >nul: 2>nul:
    
    echo. > topics.tex
    if errorlevel 1 (goto buildError)
    
    echo -[ create %%A: latex files...    ]-
    cd ..\..\..\ >nul: 2>nul:
    %doxygen% Doxyfile.pdf.%%A >nul: 2>nul:
    if errorlevel 1 (goto buildError)

    echo -[ create %%A: pdf files...      ]-
    cd .\out\%%A\tex >nul: 2>nul:

    %pdflatex% %manfile%.tex >nul: 2>nul:
    if errorlevel 1 (goto buildError)
    %makindex% %manfile%.idx >nul: 2>nul:
    if errorlevel 1 (goto buildError)
    %pdflatex% %manfile%.tex >nul: 2>nul:
    if errorlevel 1 (goto buildError)
    
    echo -[ copy %%A: pdf files...         ]-
    copy refman.pdf ..\..\..\%%A\pdf\project.pdf
    if errorlevel 1 (goto buildError)
    
    cd ..\..\..
)
::
for %%A in (de en) do (
    echo -[ copy new %%A: chm files...    ]-
    copy .\out\%%A\htm\dark\project.chm  out\%%A\chm\project_dark.chm >nul: 2>nul:
    copy .\out\%%A\htm\dark\project.chi  out\%%A\chm\project_dark.chi >nul: 2>nul:

    copy .\out\%%A\htm\light\project.chm out\%%A\chm\project_light.chm >nul: 2>nul:
    copy .\out\%%A\htm\light\project.chi out\%%A\chm\project_light.chi >nul: 2>nul:
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
