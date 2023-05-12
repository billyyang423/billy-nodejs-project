# start by pulling the python image
FROM node:lts-alpine3.17
# copy the requirements file into the image
COPY ./ /app/
# switch working directory
WORKDIR /app
# install the dependencies and packages in the requirements file
RUN npm install package.json
EXPOSE 8080
# configure the container to run in an executed manner
ENTRYPOINT [ "node" ]
CMD ["script.js" ]