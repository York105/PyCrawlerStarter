FROM python:3.9
WORKDIR /code/app
COPY ./code/config/requirements.txt /code/requirements.txt
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt
COPY ./code/app /code/app
CMD ["python3", "main.py"]