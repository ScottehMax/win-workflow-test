# get tbb
cd ${{ github.workspace }}
git clone https://github.com/oneapi-src/oneTBB.git
cd oneTBB
mkdir build
cd build

cmake `
    -G "Visual Studio 17 2022" `
    -A x64 `
    -DCMAKE_CXX_STANDARD=17 `
    -DCMAKE_BUILD_TYPE=release `
    -DCMAKE_CXX_COMPILER=cl `
    -DCMAKE_C_COMPILER=cl `
    -DTBB_CPF=OFF `
    ..

cmake --build . --config release -j -v