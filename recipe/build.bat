mkdir build_cpp
cd build_cpp

cmake %SRC_DIR% -G "Ninja" ^
                -DCMAKE_CXX_STANDARD=17 ^
                -DCMAKE_PREFIX_PATH="%PREFIX%" ^
                -DCMAKE_INSTALL_PREFIX="%LIBRARY_PREFIX%" ^
                -DCMAKE_BUILD_TYPE=Release ^
                -DBUILD_SHARED_LIBS=ON ^
                -DBUILD_EXAMPLES=OFF ^
                -DBUILD_TESTS=OFF ^
                -DCMAKE_WINDOWS_EXPORT_ALL_SYMBOLS=TRUE ^
                -UGOOGLETEST_ROOT
if errorlevel 1 exit 1

cmake --build .
if errorlevel 1 exit 1

cmake --install .
if errorlevel 1 exit 1

copy %PREFIX%\Library\bin\s2.dll %PREFIX%\Library\bin\libs2.dll
if errorlevel 1 exit 1
copy %PREFIX%\Library\lib\s2.lib %PREFIX%\Library\lib\libs2.lib
if errorlevel 1 exit 1
