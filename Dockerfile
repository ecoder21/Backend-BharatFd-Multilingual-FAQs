# syntax=docker/dockerfile:1

ARG PYTHON_VERSION=3.9.13
FROM python:${PYTHON_VERSION}-slim as base

ENV PYTHONDONTWRITEBYTECODE=1

ENV PYTHONUNBUFFERED=1

WORKDIR /app

RUN --mount=type=cache,target=/root/.cache/pip \
    --mount=type=bind,source=requirements.txt,target=requirements.txt \
    python -m pip install -r requirements.txt


COPY . .
RUN chmod +x /app/entrypoint.sh
EXPOSE 8000
CMD ["/app/entrypoint.sh"]
