# Install pagmo.
cd ${{ github.workspace }}
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