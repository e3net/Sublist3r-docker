FROM python:3


RUN apt-get update && \
    apt-get -y install wget unzip && \
    apt-get -y autoremove && \
    apt-get clean

RUN wget https://github.com/aboul3la/Sublist3r/archive/master.zip --no-check-certificate -q && unzip master.zip && rm master.zip
WORKDIR Sublist3r-master
RUN pip install -r requirements.txt

ENTRYPOINT ["python3", "sublist3r.py"]
