f:
cd\nightly
@For /F "tokens=2,3,4 delims=/ " %%A in ('Date /t') do @( 
	Set Month=%%A
	Set Day=%%B
	Set Year=%%C
)

mkdir %Month%-%Day%-%Year%\"App Data"

xcopy "f:\App Data\*.*" "f:\NIGHTLY\%Month%-%Day%-%Year%\App Data\*.*" /c /E /H /K /V /Y