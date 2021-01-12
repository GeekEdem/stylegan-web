FROM tensorflow/tensorflow:1.15.5-gpu-py3

RUN pip install python-dotenv>=0.10.1
RUN pip install Flask==1.1.1
RUN pip install numpy>=1.8.0
RUN pip install Pillow>=6.0.0
RUN pip install scipy==1.3.3
RUN pip install requests==2.22.0

COPY . .

CMD ["python", "./http_server.py"]