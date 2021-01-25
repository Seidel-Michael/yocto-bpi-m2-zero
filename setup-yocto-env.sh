if [ -d "yocto" ]; then
  echo "Environment already setup... Remove yocto folder first!"
  exit 1
fi

mkdir -p yocto/sources
cd yocto/sources

git clone git://git.yoctoproject.org/poky -b dunfell
git clone https://github.com/linux-sunxi/meta-sunxi.git -b dunfell
git clone https://git.openembedded.org/meta-openembedded -b dunfell
git clone git@github.com:Seidel-Michael/meta-bpi-m2-zero.git -b dunfell
git clone git@github.com:Seidel-Michael/meta-helper.git -b dunfell

cd ..
mkdir -p build/conf
cd p build/conf

ln -s ../../../conf/local.conf local.conf
ln -s ../../../conf/bblayers.conf bblayers.conf
