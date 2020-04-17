FROM arm32v7/node:12.16.2-alpine
COPY qemu-arm-static /usr/bin
RUN apk --update add git

RUN git clone https://github.com/ppsirius/ping-from-node.git
RUN cd ping-from-node
WORKDIR /ping-from-node
RUN npm install

CMD [ "node", "index.js" ]
