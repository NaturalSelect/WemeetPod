# ElectronPod Makefile
#
BASH="bash"

default: image
phony := image

image:
	@./build_image.sh

phony += run

run:
	@./run.sh

.PHONY: $(phony)