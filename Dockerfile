FROM python:3.10-slim

# needed for opencv :(
RUN apt-get update && apt-get install ffmpeg libsm6 libxext6  -y

RUN pip install --upgrade pip
RUN pip install jupyter


# TODO make this a requirements.txt file lmao
RUN pip install \
	numpy \
	opencv-python \
	ipython==8.12.3 \
	ipywidgets==8.1.3 \
	Pillow==10.3.0 \
	torch==2.3.1 \
	torchvision==0.18.1 \
	traitlets==5.14.3

EXPOSE 8888
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]

