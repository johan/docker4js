FROM node:8.9

# create working dir
RUN mkdir -p /var/app
WORKDIR /var/app

# copy app to dir
COPY . /var/app

# install npm modules
RUN npm install

# expose ports (p1 p2 p3 p4 ...)
EXPOSE 3000

# set environment variables
# ... not needed, if we "npm start"
ENV NODE_ENV=development DEBUG=*

# secure the image with lower-priv user
RUN useradd --no-log-init -r app
USER app

# run the app
CMD ["npm", "start"]
