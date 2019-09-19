rm -rf build install thirdparty/*/build

mkdir build install

python scripts/install_dependencies.py

cd build
cmake .. -DBUILD_FORTRAN_WRAPPER=ON -DCMAKE_INSTALL_PREFIX="~/repositories/mutationpp/install"

make -j install
cd ..
