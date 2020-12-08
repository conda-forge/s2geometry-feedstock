mkdir build_cpp
cd build_cpp

cmake %SRC_DIR% -G "NMake Makefiles" ^
                -DCMAKE_PREFIX_PATH="%PREFIX%" ^
                -DCMAKE_INSTALL_PREFIX="%LIBRARY_PREFIX%" ^
                -DCMAKE_BUILD_TYPE=Release ^
                -DBUILD_SHARED_LIBS=ON ^
                -DBUILD_EXAMPLES=OFF ^
                -DCMAKE_WINDOWS_EXPORT_ALL_SYMBOLS=TRUE ^
                -UGTEST_ROOT
if errorlevel 1 exit 1

nmake
if errorlevel 1 exit 1

nmake install
if errorlevel 1 exit 1
