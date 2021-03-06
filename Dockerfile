FROM tiangolo/uvicorn-gunicorn:python3.7

RUN mkdir -p /prosapient

WORKDIR /prosapient

COPY . /prosapient

RUN pip3 install --upgrade pip \
    && pip3 install --no-cache-dir -r /prosapient/requirements.txt

EXPOSE 8000
