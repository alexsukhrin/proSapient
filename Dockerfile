FROM tiangolo/uvicorn-gunicorn:python3.7

RUN mkdir -p /src

WORKDIR /src

COPY requirements.txt /src/requirements.txt

RUN pip3 install --upgrade pip

RUN pip3 install --no-cache-dir -r /src/requirements.txt

COPY prosapient /src

EXPOSE 8000
