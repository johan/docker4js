FROM d4js-2-1

# set development environment variable
ENV NODE_ENV=development

# run privileged, for install
USER root

# install all of package.json, not just production
RUN npm install

# install additional dev tools
RUN npm install -g nodemon

# expose additional development ports
# live-reload, for instance, might want this, as is uses its own port:
EXPOSE 35729

# principle of least privilege, for starting
USER app

# run in development mode (nodemon will run "npm start", absent config)
CMD ["nodemon"]
