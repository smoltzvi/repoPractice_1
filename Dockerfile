 #	------------------------------
 # Instruction for Dockerfile to create a new image on top of the base image (ubuntu)
 # Using the base image ubuntu: latest
 FROM ubuntu:latest
 # Make directory called fld_c
 RUN mkdir fld_c
 # Copying myfile1.txt to the containers /usr/share directory
 COPY *.c /usr/share/fld_c
 #Set working directory where application will compile
 WORKDIR /usr/share/fld_c
 # Compile .c application
 RUN gcc -o myapp hello.c
 # Execute My application
 CMD ["./myapp"]
