set root=%~dp0
set path=%root%python\win\3.7.0;%path%


set AVALON_ROOT_PATH=%root%avalon-magiclab\
set AVALON_CORE=%AVALON_ROOT_PATH%git\avalon-core
set AVALON_LAUNCHER=%AVALON_ROOT_PATH%git\avalon-launcher
set AVALON_PROJECTS=%AVALON_ROOT_PATH%git\avalon-examples
set AVALON_CONFIG=polly
set AVALON_LABEL=polly
set AVALON_MONGO=mongodb://localhost:27017
set AVALON_DEBUG=True
set PYTHONPATH=%AVALON_ROOT_PATH%git\mindbender-config;%PYTHONPATH%

python -c "import sys; print(sys.executable)"
python %AVALON_ROOT_PATH%sys-tray_test.py %*
