cd $Env:GITHUB_WORKSPACE
wget https://gitlab.com/libeigen/eigen/-/archive/3.4.0/eigen-3.4.0.tar.gz -OutFile eigen-3.4.0.tar.gz
tar -xvzf eigen-3.4.0.tar.gz eigen-3.4.0

cd eigen-3.4.0
mkdir build
cd build

cmake `
    -G "Visual Studio 17 2022" -A x64 `
    -DCMAKE_PREFIX_PATH=$Env:prefix `
    -DCMAKE_INSTALL_PREFIX=$Env:prefix `
    -DCMAKE_CXX_FLAGS="/MP" `
    -DCMAKE_BUILD_TYPE=Release `
    ..

cmake --build . --config Release --target INSTALL