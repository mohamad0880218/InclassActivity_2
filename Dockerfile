FROM ubuntu
RUN apt-get update
RUN apt-get install -y nginx vim curl git python3 pip
RUN pip3 install matplotlib flask numpy
#RUN git clone https://github.com/cloudacademy/static-website-example.git 
COPY .  ./
CMD ["echo","Image Created"]
CMD ["nginx","-g","daemon off;"]

