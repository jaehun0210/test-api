# Python 이미지 기반으로 설정
FROM python:3.9

# 작업 디렉토리 설정
WORKDIR /

# requirements.txt를 컨테이너에 복사
COPY requirements.txt .

# 라이브러리 설치
RUN pip install --no-cache-dir -r requirements.txt

# 애플리케이션 파일 복사
COPY . .

# 컨테이너 시작 시 실행될 명령
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]