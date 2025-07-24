#!/bin/bash
# NSBS 플랫폼 실행 스크립트

# 1) FastAPI HTTPS 서버 실행
uvicorn backend.main:app --host 0.0.0.0 --port 8000 \
  --ssl-certfile backend/certs/fullchain.pem --ssl-keyfile backend/certs/privkey.pem &

# 2) Streamlit 프론트엔드 실행 (포트 8501)
streamlit run frontend/app.py --server.port 8501
