FROM --platform=linux/amd64 node:alpine
RUN apk add --no-cache git
RUN git clone https://github.com/mafintosh/hyperbeam
RUN cd hyperbeam
RUN npm install -g hyperbeam
CMD ["hyperbeam"]
ENTRYPOINT ["/bin/sh"]

