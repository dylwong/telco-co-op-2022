FROM node:alpine
RUN apk add --no-cache git
RUN git clone https://github.com/mafintosh/hyperbeam
RUN cd hyperbeam
RUN npm install -g hyperbeam
CMD ["echo 'hello red hat' | hyperbeam"]
ENTRYPOINT ["/bin/sh"]

