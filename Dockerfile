# ビルドステージ
FROM python:3.12 as builder

# 作業ディレクトリ
WORKDIR /src

# 環境変数の設定
ENV PYTHONUNBUFFERED=1
ENV PATH="/root/.local/bin:$PATH"

# Poetry のインストール
RUN curl -sSL https://install.python-poetry.org | python3 -

# 必要なファイルをコピー
COPY pyproject.toml poetry.lock /src/

# Poetry で依存関係をインストール
RUN poetry install --only main --no-root

# ランタイムステージ
FROM python:3.12-slim as runtime

# 作業ディレクトリ
WORKDIR /src

# 環境変数の設定
ENV PYTHONUNBUFFERED=1
ENV PATH="/root/.local/bin:$PATH"

# ビルドステージから必要な依存ファイルのみコピー
COPY --from=builder /root/.local /root/.local
COPY --from=builder /src /src

# ソースコードをコピー
COPY . /src

# メインスクリプトを実行
CMD ["poetry", "run", "python", "main.py"]
