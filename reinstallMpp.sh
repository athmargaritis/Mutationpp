rm -rf build install

mkdir build install
NPROCS=6

INSTALLDIR=${MPP_DIRECTORY}/install

cd ${MPP_DIRECTORY}/build
FC="ftn -ef" cmake -DCMAKE_INSTALL_PREFIX=${INSTALLDIR} .. -DBUILD_FORTRAN_WRAPPER=ON
make -j${NPROCS} install
cd ..
