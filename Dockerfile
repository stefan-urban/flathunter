FROM python:3.7

RUN mkdir /app && cd /app && git clone https://github.com/stefan-urban/flathunter.git .
RUN pip install --no-cache-dir -r /app/requirements.txt

WORKDIR /app

CMD [ "python", "./flathunter.py" ]
