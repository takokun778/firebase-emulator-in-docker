ARG NODE_VERSION

FROM node:${NODE_VERSION}-alpine

WORKDIR /firebase

COPY firebase.json .

COPY .firebaserc .

RUN npm install -g firebase-tools

EXPOSE 9099

EXPOSE 4000

CMD ["firebase", "emulators:start", "--project=emulator"]
