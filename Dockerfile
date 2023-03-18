FROM python:3.8

WORKDIR /app/oppia

COPY requirements.txt .
COPY requirements_dev.txt .

RUN apt-get update
RUN apt-get -y install curl
RUN apt-get -y install git
RUN apt-get -y install python3-setuptools
RUN apt-get -y install python3-dev
RUN apt-get -y install python3-pip
RUN apt-get -y install unzip
RUN apt-get -y install python3-yaml
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
RUN pip install -r requirements_dev.txt
RUN apt-get -y install npm

COPY package.json .

RUN npm install --legacy-peer-deps

COPY . .

EXPOSE 4200

CMD [ "node_modules/.bin/ng", "serve", "--host", "0.0.0.0", "--disable-host-check"]
