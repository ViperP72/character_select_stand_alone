@echo off
@set GRADIO_SERVER_PORT=47861
set "VENV_DIR=%~dp0%env"
if EXIST "%VENV_DIR%" goto :start
cd "%~dp0%"
python -m venv env
call "%VENV_DIR%\Scripts\activate.bat"
python -m pip install -r requirements.txt --upgrade pip
:start
python -m venv env
call "%VENV_DIR%\Scripts\activate.bat"
py -m app
pause