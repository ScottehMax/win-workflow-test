# get tbb
$prefix = $( $GITHUB_WORKSPACE + "\libs" )
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
cmake --install . --prefix $prefix

# Install pagmo.
git clone https://github.com/esa/pagmo2.git
cd pagmo2
mkdir build
cd build

cmake `
    -G "Visual Studio 17 2022" -A x64 `
    -DCMAKE_PREFIX_PATH=$prefix `
    -DCMAKE_INSTALL_PREFIX=$prefix `
    -DBoost_NO_BOOST_CMAKE=ON `
    -DPAGMO_WITH_EIGEN3=ON `
    -DPAGMO_WITH_IPOPT=ON `
    -DPAGMO_WITH_NLOPT=ON `
    -DPAGMO_ENABLE_IPO=ON `
    ..

cmake --build . --config Release --target install