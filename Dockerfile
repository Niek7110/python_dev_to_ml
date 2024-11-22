FROM python:3.12

WORKDIR /src
# 環境変数の設定（コンテナが非対話的で動作するようにする）
ENV PYTHONUNBUFFERED=1

COPY requirements.txt /src
RUN pip install --no-cache-dir -r requirements.txt

COPY . /src

CMD [ "python", "main.py" ]
