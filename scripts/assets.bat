set buildDir=%~dp0..\build
set assetsDir=%~dp0..\assets
set modelsDir=%~dp0..\assets\models
set texturesDir=%~dp0..\assets\textures
set extDir=%~dp0..\external

if not exist %buildDir%\glfw3.dll xcopy /y %extDir%\glfw\lib-mingw-w64\glfw3.dll %buildDir%
if not exist %buildDir%\glfw3.dll xcopy /y %extDir%\glfw\lib-mingw-w64\glfw3.dll %buildDir%


::Copy assets
if not exist %buildDir%\assets mkdir %buildDir%\assets
if not exist %buildDir%\assets\models mkdir %buildDir%\assets\models
if not exist %buildDir%\assets\textures mkdir %buildDir%\assets\textures
xcopy /y /s %modelsDir% %buildDir%\assets\models
xcopy /y /s %texturesDir% %buildDir%\assets\textures

::compile shaders
call ./scripts/compile_shaders.bat