# check=skip=SecretsUsedInArgOrEnv

FROM almalinux:10

RUN dnf up -y
RUN dnf install -y ruby npm

RUN npm install -g @google/gemini-cli
RUN mkdir /gemini

WORKDIR /gemini
COPY data/GEMINI.md GEMINI.md
COPY data/settings.json /root/.gemini/settings.json

CMD ["gemini", "--yolo"]
