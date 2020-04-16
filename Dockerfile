FROM arm32v7/alpine
RUN apk add --update nodejs npm
RUN apk add git

RUN git clone https://github.com/ppsirius/ping-from-node.git
RUN cd ping-from-node
WORKDIR /ping-from-node
RUN npm install

CMD [ "node", "index.js" ]
