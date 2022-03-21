ML_X_FILES:=$(shell find ml-x -name "*.f90" -or -name "*.cmake") ml-x/CMakeLists.txt

ml-x.sif: ml-x.def $(ML_X_FILES)
	singularity build --fakeroot $@ $<