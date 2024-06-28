FROM public.ecr.aws/lambda/python:3.11

RUN mkdir -p /app
COPY . main.py /app/
WORKDIR /app

# ref: https://stackoverflow.com/questions/48561981/activate-python-virtualenv-in-dockerfile
RUN python -m venv /opt/venv
# Enable venv
ENV PATH="/opt/venv/bin:$PATH"

RUN pip install uv
RUN uv pip install -r requirements.txt


EXPOSE 8080
CMD [ "main.py" ]
ENTRYPOINT [ "python" ]
