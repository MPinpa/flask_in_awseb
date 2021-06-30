FROM 782087368818.dkr.ecr.us-east-1.amazonaws.com/mestreabobrinha:python-3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD [ "python", "./application.py" ]
