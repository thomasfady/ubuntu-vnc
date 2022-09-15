FROM thomasfady/ubuntu-vnc

# Add icons
COPY --chown=ubuntu icons/Firefox.desktop /home/ubuntu/Desktop/
COPY --chown=ubuntu icons/ZAP.desktop /home/ubuntu/Desktop/
RUN chmod +x /home/ubuntu/Desktop/*

# Install zaproxy
RUN apt update && apt install -y wget default-jre unzip
RUN wget https://github.com/zaproxy/zaproxy/releases/download/v2.11.1/ZAP_2.11.1_Crossplatform.zip -O /tmp/ZAP.zip
RUN unzip /tmp/ZAP.zip -d /home/ubuntu/ZAP
RUN mv /home/ubuntu/ZAP/ZAP_2.11.1/* /home/ubuntu/ZAP/

RUN chown -R ubuntu /home/ubuntu/