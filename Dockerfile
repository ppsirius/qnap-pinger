FROM arm32v7/node:12.16.2-alpine
COPY qemu-arm-static /usr/bin
RUN apk --update add git

RUN git clone https://github.com/ppsirius/ping-from-node.git
RUN cd ping-from-node
RUN git pull
WORKDIR /ping-from-node
RUN npm install
RUN npm run build
CMD [ "npm", "run", "start" ]
