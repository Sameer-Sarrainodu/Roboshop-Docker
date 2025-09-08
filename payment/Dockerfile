FROM python:3.9
EXPOSE 8080
RUN groupadd -r roboshop && \
    useradd -r -g roboshop -d /opt/server -s /usr/sbin/nologin roboshop
RUN mkdir -p /opt/server && chown -R roboshop:roboshop /opt/server
WORKDIR /opt/server
COPY requirements.txt .
COPY *.py .
COPY payment.ini .
RUN pip3 install -r requirements.txt
USER roboshop
CMD ["uwsgi", "--ini", "payment.ini"]