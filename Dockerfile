# debian version
ARG VERSION=buster

# set base image
FROM debian:${VERSION}

# installing packages
RUN apt update
RUN apt-get --yes install \
#	man
	neovim \
#	tree
	tmux
#	git
#	hub

# configuring image
WORKDIR /

# set up test environment variable
ENV testEnv="testVal"

# set nvim init.vim file
COPY init.vim /root/.config/nvim/
# copy nvim color scheme (deus)
COPY /colors /root/.config/nvim/colors

# set tmux .tmux.conf file
COPY .tmux.conf /root/

LABEL "author"="A. Cheema"

