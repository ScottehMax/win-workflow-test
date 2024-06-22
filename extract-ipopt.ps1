cd $Env:GITHUB_WORKSPACE
wget https://github.com/coin-or/Ipopt/releases/download/releases%2F3.14.16/Ipopt-3.14.16-win64-msvs2019-md.zip -OutFile Ipopt-3.14.16-win64-msvs2019-md.zip
Expand-Archive -Path Ipopt-3.14.16-win64-msvs2019-md.zip -DestinationPath Ipopt