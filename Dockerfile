FROM python:3.8-buster

WORKDIR /usr/src/app

RUN apt-get update && apt-get install -y gcc make\
	&& rm -rf /var/lib/apt/lists/*

COPY requirements_dev.txt ./

RUN pip install --no-cache-dir -r requirements_dev.txt

CMD ["make","clean-build","dist","patch"]

