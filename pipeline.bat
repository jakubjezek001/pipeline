REM python27 = py2 ; python36 = py3
set PYTHON=python
set PYTHON_ENV=win\2.7.15
set PIPELINE=%pipeline%\%PYTHON_ENV%
set MODULES_PY=py2
set PIPLINE_ROOT=%~dp0

call python\environment_run.bat

set ENV_ROOT=%VENV_ROOT%  



set GIT_ROOT=%ENV_ROOT%pyblishdev\git\%MODULES_PY%

set PYBLISH_QML_PATH=%GIT_ROOT%/pyblish-qml
set PYBLISH_NUKE_PATH=%GIT_ROOT%/pyblish-nuke
set PYBLISH_NUKE_PATH=%GIT_ROOT%/pyblish-maya
set PYBLISH_NUKE_PATH=%GIT_ROOT%/pyblish-nukestudio
set PYBLISH_NUKE_PATH=%GIT_ROOT%/pyblish-integration
set PYBLISH_NUKE_PATH=%GIT_ROOT%/pyblish-houdiny

set QT5_PATH=%GIT_ROOT%/python-qt5

set PYTHONPATH=%ENV_ROOT%\Lib\site-packages;

set QTCONF_PATH=%ENV_ROOT%\Scripts\qt.conf

cd /d %PYBLISHDEV_ROOT%
REM call %GIT_DEPANDANCI%
::echo [92m^>^>^>[0m run depandancy check and install...
REM set PYBLISH_QML_PYTHON_EXECUTABLE=%PYBLISHDEV_ROOT%venv\py2\Scripts\
REM set PYBLISH_QML_PYQT5=%PYBLISHDEV_ROOT%git\py2\python-qt5

call %ENV_ROOT%\Scripts\activate.bat
:: will create qt.conf in Script folder in case there is none
REM python -c "import util;util.createqtconf()"
set PATH=%ENV_ROOT%\Scripts;%ENV_ROOT%
cd %PYBLISHDEV_ROOT%

:: run pyblish from here



::call %PYBLISHDEV_ROOT%.venv\%PYTHON_ENV%\Scripts\deactivate.bat
::del %QTCONF_PATH%>nul 2>&1
