wget https://raw.githubusercontent.com/coin-or/coinbrew/master/coinbrew
chmod u+x coinbrew

echo $prefix

./coinbrew fetch Ipopt --no-prompt
./coinbrew build Ipopt --prefix=$prefix --test --no-prompt --verbosity=3
./coinbrew install Ipopt --no-prompt