
set buildDir=%~dp0..\build
set shaderDir=%builddir%\assets\shaders
if not exist %shaderDir% (
    mkdir %shaderDir%
)
cd %~dp0..\assets\shaders
for %%i in (*.vert *.frag *.comp *.tesc *.tese *.geom) do "C:\VulkanSDK\1.2.198.1\Bin\glslangValidator.exe" -V "%%~i" -o "%shaderDir%\%%~i.spv"
