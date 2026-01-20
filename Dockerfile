FROM almalinux:10

RUN dnf up -y
RUN dnf install -y ruby

RUN dnf install -y npm
RUN npm install -g @google/gemini-cli
RUN mkdir /opt/gemini

WORKDIR /opt/gemini
COPY data/GEMINI.md /root/.gemini/GEMINI.md
