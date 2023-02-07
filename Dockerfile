FROM python:3-alpine

# set up ENVIRONMENT VARS
ENV FLASK_APP=flaskr
ENV FLASK_ENV=development

# Create app directory
WORKDIR /app

# Bundle app source
COPY src/app .

RUN pip install --editable . && flask init-db

EXPOSE 5000

CMD ["flask", "run", "--host=0.0.0.0"]