FROM python:3.10
WORKDIR /model

RUN apt-get update -y
RUN apt install libgl1-mesa-glx -y
RUN apt-get install 'ffmpeg'\
    'libsm6'\
    'libxext6'  -y

# Install miniconda
ENV CONDA_DIR /opt/conda
RUN wget --quiet https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh && \
     /bin/bash ~/miniconda.sh -b -p /opt/conda

# Put conda in path so we can use conda activate
ENV PATH=$CONDA_DIR/bin:$PATH

COPY requirements.txt requirements.txt
COPY environment.yml environment.yml
COPY src/ src/
COPY uploads/ uploads/
COPY templates/ templates/
COPY data.py data.py
COPY main.py main.py  
COPY models/ models/
COPY resources/ resources/

RUN conda create --name docker_env --file environment.yml
RUN pip3 install -r requirements.txt


## Get gcloud to funk
# RUN echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] http://packages.cloud.google.com/apt cloud-sdk main" | tee -a /etc/apt/sources.list.d/google-cloud-sdk.list && curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key --keyring /usr/share/keyrings/cloud.google.gpg  add - && apt-get update -y && apt-get install google-cloud-cli -y
      

ENV FLASK_APP=main.py
ENV FLASK_ENV=production

#CMD [ "python3", "data.py"]
CMD flask run --host 0.0.0.0
