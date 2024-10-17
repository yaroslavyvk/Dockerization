ARG PYTHON_VERSION=3.8
FROM python:${PYTHON_VERSION} AS builder

WORKDIR /app
COPY . .
RUN pip install --upgrade pip && \
    pip install --prefix=/install -r requirements.txt


FROM python:${PYTHON_VERSION}-slim AS run
WORKDIR /app

COPY --from=builder /install /usr/local
COPY --from=builder /app .

EXPOSE 8080

ENTRYPOINT ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8080"]
