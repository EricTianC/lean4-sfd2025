FROM node
LABEL Name="lean4web-sfd" Version="0.0.1"


ENV DEBIAN_FRONTEND=noninteractive

# 安装系统依赖（如 bubblewrap）

RUN apt-get update && \
    apt-get install -y bubblewrap git \
    curl \
    bash-completion \
    python3 \
    python3-requests \
    build-essential \
    libffi-dev \
    libssl-dev \
    pkg-config \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN useradd -m -s /bin/bash -G sudo leanuser \
    && echo "leanuser ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER leanuser
WORKDIR /home/leanuser

RUN curl https://elan.lean-lang.org/elan-init.sh -sSf | sh -s -- -y
ENV PATH="/home/leanuser/.elan/bin:${PATH}"

RUN git clone https://github.com/leanprover-community/lean4game.git /home/leanuser/lean4game

WORKDIR /home/leanuser/lean4game
RUN npm install

COPY --chown=leanuser:leanuser config.json /home/leanuser/lean4game/client/src/config.json
COPY --chown=leanuser:leanuser . /home/leanuser/lean4game/games/erictianc/lean4-sfd2025/

WORKDIR /home/leanuser/lean4game/games
RUN git clone https://github.com/leanprover-community/NNG4.git leanprover-community/nng4

WORKDIR /home/leanuser/lean4game/games/leanprover-community/nng4
RUN lake build

WORKDIR /home/leanuser/lean4game/games/erictianc/lean4-sfd2025
RUN lake build

WORKDIR /home/leanuser/lean4game

EXPOSE 3000



CMD [ "npm", "start" ]
