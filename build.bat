set PAKPACK="path to PAKPack.exe"
set COMPILER="path to AtlusScriptCompiler.exe"
set BUILD_PATH=.\build
set INPUT_PATH=%BUILD_PATH%\input
set OUTPUT_PATH=%BUILD_PATH%\output\mod.cpk

if not exist %BUILD_PATH% mkdir %BUILD_PATH%
if not exist %INPUT_PATH% mkdir %INPUT_PATH%
if not exist %OUTPUT_PATH% mkdir %OUTPUT_PATH%
if not exist %OUTPUT_PATH%\init_free mkdir %OUTPUT_PATH%\init_free
if not exist %OUTPUT_PATH%\init_free\field mkdir %OUTPUT_PATH%\init_free\field
if not exist %OUTPUT_PATH%\init_free\field\script mkdir %OUTPUT_PATH%\init_free\field\script
if not exist %OUTPUT_PATH%\field mkdir %OUTPUT_PATH%\field
if not exist %OUTPUT_PATH%\field\pack mkdir %OUTPUT_PATH%\field\pack
if not exist %OUTPUT_PATH%\scheduler mkdir %OUTPUT_PATH%\scheduler

%PAKPACK% unpack "%INPUT_PATH%\init_free.bin"
%PAKPACK% unpack "%INPUT_PATH%\field\pack\fd007_001.arc"
%PAKPACK% unpack "%INPUT_PATH%\field\pack\fd010_002.arc"
%PAKPACK% unpack "%INPUT_PATH%\field\pack\fd020_001.arc"
%PAKPACK% unpack "%INPUT_PATH%\field\pack\fd023_001.arc"

%COMPILER% .\init_free\field.bf.flow -Compile -OutFormat V1 -Library P4G -Encoding P4 -Out "%OUTPUT_PATH%\init_free\field\script\field.bf" -Hook
%COMPILER% .\field\dungeon.bf.flow -Compile -OutFormat V1 -Library P4G -Encoding P4 -Out "%OUTPUT_PATH%\field\script\dungeon.bf" -Hook
%COMPILER% .\field\dungeon01.bf.flow -Compile -OutFormat V1 -Library P4G -Encoding P4 -Out "%OUTPUT_PATH%\field\script\dungeon01.bf" -Hook
%COMPILER% .\field\lmap.bf.flow -Compile -OutFormat V1 -Library P4G -Encoding P4 -Out "%OUTPUT_PATH%\field\script\lmap.bf" -Hook
%COMPILER% .\field\f007.bf.flow -Compile -OutFormat V1 -Library P4G -Encoding P4 -Out "%OUTPUT_PATH%\field\pack\fd007_001\f007.bf" -Hook
%COMPILER% .\field\f010.bf.flow -Compile -OutFormat V1 -Library P4G -Encoding P4 -Out "%OUTPUT_PATH%\field\pack\fd010_002\f010.bf" -Hook
%COMPILER% .\field\f020.bf.flow -Compile -OutFormat V1 -Library P4G -Encoding P4 -Out "%OUTPUT_PATH%\field\pack\fd020_001\f020.bf" -Hook
%COMPILER% .\field\f023.bf.flow -Compile -OutFormat V1 -Library P4G -Encoding P4 -Out "%OUTPUT_PATH%\field\pack\fd023_001\f023.bf" -Hook
%COMPILER% .\scheduler\scheduler_04.bf.flow -Compile -OutFormat V1 -Library P4G -Encoding P4 -Out "%OUTPUT_PATH%\scheduler\scheduler_04.bf" -Hook

del /s /q "%INPUT_PATH%\init_free\*"
rmdir /s /q "%INPUT_PATH%\init_free"
del /s /q "%INPUT_PATH%\field\pack\fd007_001\*"
rmdir /s /q "%INPUT_PATH%\field\pack\fd007_001"
del /s /q "%INPUT_PATH%\field\pack\fd010_002\*"
rmdir /s /q "%INPUT_PATH%\field\pack\fd010_002"
del /s /q "%INPUT_PATH%\field\pack\fd020_001\*"
rmdir /s /q "%INPUT_PATH%\field\pack\fd020_001"
del /s /q "%INPUT_PATH%\field\pack\fd023_001\*"
rmdir /s /q "%INPUT_PATH%\field\pack\fd023_001"

%PAKPACK% replace "%INPUT_PATH%\init_free.bin" battle/MSG.TBL tblpatches\MSG.TBL "%OUTPUT_PATH%\init_free.bin"
%PAKPACK% replace "%OUTPUT_PATH%\init_free.bin" field/script/field.bf "%OUTPUT_PATH%\init_free\field\script\field.bf" "%OUTPUT_PATH%\init_free.bin"
%PAKPACK% replace "%INPUT_PATH%\field\pack\fd007_001.arc" f007.bf "%OUTPUT_PATH%\field\pack\fd007_001\f007.bf" "%OUTPUT_PATH%\field\pack\fd007_001.arc"
%PAKPACK% replace "%INPUT_PATH%\field\pack\fd010_002.arc" f010.bf "%OUTPUT_PATH%\field\pack\fd010_002\f010.bf" "%OUTPUT_PATH%\field\pack\fd010_002.arc"
%PAKPACK% replace "%INPUT_PATH%\field\pack\fd020_001.arc" f020.bf "%OUTPUT_PATH%\field\pack\fd020_001\f020.bf" "%OUTPUT_PATH%\field\pack\fd020_001.arc"
%PAKPACK% replace "%INPUT_PATH%\field\pack\fd023_001.arc" f023.bf "%OUTPUT_PATH%\field\pack\fd023_001\f023.bf" "%OUTPUT_PATH%\field\pack\fd023_001.arc"
rmdir /s /q "%OUTPUT_PATH%\field\pack\fd007_001"
rmdir /s /q "%OUTPUT_PATH%\field\pack\fd010_002"
rmdir /s /q "%OUTPUT_PATH%\field\pack\fd020_001"
rmdir /s /q "%OUTPUT_PATH%\field\pack\fd023_001"
rmdir /s /q "%OUTPUT_PATH%\init_free"