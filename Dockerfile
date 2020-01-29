# debian version
ARG VERSION=buster

# set base image
FROM debian:${VERSION}

# setting working directory
WORKDIR /

# installing packages
RUN apt update
RUN apt-get --yes install \
	# tools
		man \
		neovim \
		tree \
		tmux \
		git \
		hub \
		curl \
	# language dependent runtime environment
		# python
			python3 \
			python3-pip \
			python3-distutils \
		# javascript
			nodejs \
			npm

# AWS CLI (https://docs.aws.amazon.com/cli/latest/userguide/install-linux.html)
ENV PATH="~/.local/bin:${PATH}"
RUN pip3 install awscli --upgrade --user

# nerd fun
#RUN npm install wikit -g

# set nvim init.vim file
COPY init.vim /root/.config/nvim/
# copy nvim color scheme (deus)
COPY /colors /root/.config/nvim/colors

# set tmux .tmux.conf file
COPY .tmux.conf /root/

LABEL "author"="A. Cheema"

