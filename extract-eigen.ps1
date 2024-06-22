cd $Env:GITHUB_WORKSPACE
wget https://gitlab.com/libeigen/eigen/-/archive/3.4.0/eigen-3.4.0.tar.gz -OutFile eigen-3.4.0.tar.gz
tar -xvzf eigen-3.4.0.tar.gz eigen-3.4.0

# move the eigen to C: (powershell)
mv eigen-3.4.0 C:\eigen