FROM node:14

LABEL Muhammad_Syifaul_Ikrom_Almasyriqi <1941720057@student.polinema.ac.id>
RUN mkdir -p /user_app
WORKDIR /user_app
COPY package*.json /user_app/

RUN npm install
COPY . .
EXPOSE 4000

CMD [ "node", "index.js" ]