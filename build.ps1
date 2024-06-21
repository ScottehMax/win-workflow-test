# get tbb
$prefix = "C:\libs"
git clone https://github.com/oneapi-src/oneTBB.git
cd oneTBB
cmake -G "Visual Studio 17 2022" .
cmake --build . 
cmake --install . --prefix $prefix

# Install pagmo.
git clone https://github.com/esa/pagmo2.git
cd pagmo2
mkdir build
cd build

cmake `
    -G "Visual Studio 17 2022" -A x64 `
    -DCMAKE_PREFIX_PATH="C:\libs" `
    -DCMAKE_INSTALL_PREFIX="C:\libs" `
    -DBoost_NO_BOOST_CMAKE=ON `
    -DPAGMO_WITH_EIGEN3=ON `
    -DPAGMO_WITH_IPOPT=ON `
    -DPAGMO_WITH_NLOPT=ON `
    -DPAGMO_ENABLE_IPO=ON `
    ..

cmake --build . --config Release --target install