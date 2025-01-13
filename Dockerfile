FROM alpine
LABEL Maintainer="rizqi"\
    email="mhmdrzqiistwn@gmail.com" \
    version="1.0" 

RUN touch PCCM-2024.txt && \
    echo "UAS PCC 2025 Muhamad Rizqi Setiawan TI CN 23 M" > PCCM-2024.txt

CMD [ "sh","-c","cat PCCM-2024.txt" ]