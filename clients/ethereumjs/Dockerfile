# FROM node:alpine causes Segmentation fault
# RUN apk add --no-cache git bash
FROM node:12

RUN mkdir -p /home/app
RUN cd /home/app && git clone -b admin-rpc https://github.com/ethereumjs/ethereumjs-client.git
WORKDIR /home/app/ethereumjs-client
RUN npm install && npm link
EXPOSE 8545 8546 8547 30303 30303/udp

# ENTRYPOINT ["./bin/cli.js"]

# Add startup script used by hive
ADD ethereumjs.sh .
RUN chmod +x ./ethereumjs.sh
CMD ["./ethereumjs.sh"]
