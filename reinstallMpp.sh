rm -rf build install thirdparty/*/build

mkdir build install

python scripts/install_dependencies.py

cd build
cmake .. -DBUILD_FORTRAN_WRAPPER=ON

make -j install
cd ..
