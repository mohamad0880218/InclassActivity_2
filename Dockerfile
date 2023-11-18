FROM ubuntu
RUN apt-get update
RUN apt-get install -y nginx vim curl git python3 pip
RUN pip3 install matplotlib flask numpy os redis pytest-html sys
RUN git clone https://github.com/mohamad0880218/InclassActivity_2.git 
#COPY .  ./
CMD ["echo","Image Created"]
CMD ["pytest", "test_app.py"]
CMD ["python3","main.py"]

