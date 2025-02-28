
all:
	make -C source/boot
	# make -C source/loader
	# make -C source/applib
	# make -C source/kernel
	# make -C source/app/shell

clean:
	dd if=/dev/zero of=./image/disk1.img bs=1M count=1
	make clean -C source/boot
	# make clean -C source/loader
	# make clean -C source/applib
	# make clean -C source/kernel
	# make clean -C source/app/shell