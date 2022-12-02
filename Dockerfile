FROM quay.io/katonic/katonic-base-images:py38-base-conda4.9.2

RUN mkdir -p image

COPY app.py .
COPY image/logo.png image/.
COPY image/favicon.ico image/.
COPY requirements.txt .

RUN pip install -r requirements.txt

CMD streamlit run app.py --server.port=8050 --server.address=0.0.0.0 --logger.level error --server.fileWatcherType=none
