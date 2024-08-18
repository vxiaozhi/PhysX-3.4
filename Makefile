shell:
	docker run -it --rm -v $(PWD):/src/ -w /src/  --name phsys-dev --network host ubuntu:18.04-dev bash

build_image:
	docker build -t ubuntu:18.04-dev .

