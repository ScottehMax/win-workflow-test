cd $Env:GITHUB_WORKSPACE
git clone https://github.com/stevengj/nlopt.git
cd nlopt
mkdir build
cd build
cmake ..
cmake --build . --config Release