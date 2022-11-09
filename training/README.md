# Getting Started

Welcome to your new project.

It contains these folders and files, following our recommended project layout:

File or Folder | Purpose
---------|----------
`app/` | content for UI frontends goes here
`db/` | your domain models and data go here
`srv/` | your service models and code go here
`package.json` | project metadata and configuration
`readme.md` | this getting started guide


## Next Steps

- Open a new terminal and run `cds watch` 
- (in VS Code simply choose _**Terminal** > Run Task > cds watch_)
- Start adding content, for example, a [db/schema.cds](db/schema.cds).


## Learn More

Learn more at https://cap.cloud.sap/docs/get-started/.

## Comandi utili
npm install
cds watch

Add the following line in the “cds” section of package.json.
"hana" : { "deploy-format": "hdbtable" }

npm install @sap/cds-odata-v2-adapter-proxy -s 
export NODE_ENV=production
cds build/all --clean
cf create-service hana hdi-shared training-db
cf push -f gen/db -k 300M
cf push -f gen/srv --random-route -k 380M -m 1024M
cds deploy --to hana

npm install @sap/xssec @sap/xsenv
cds compile srv/ --to xsuaa > xs-security.json
cf create-service xsuaa application liquidazione-uaa -c xs-security.json
cf update-service liquidazione-uaa -c xs-security.json

Nella directory dell'app da terminale:
npm config set registry https://registry.npmjs.org/
npm update
npm audit fix --force
Riprovare a fare il build


npm install -g npm
npm i -g @sap/cds-dk

## oData v2:
./srv/server.js:
const cds = require("@sap/cds");
const proxy = require("@sap/cds-odata-v2-adapter-proxy");
cds.on("bootstrap", app => app.use(proxy()));
module.exports = cds.server;

# Debug CDS Functions

cf ssh-enabled liquidazione-srv

cf enable-ssh liquidazione-srv

cf restart liquidazione-srv

## Insert into launch.json
    {
      "name": "Attach to a Cloud Foundry Instance on Port 9229",
      "port": 9229,
      "request": "attach",
      "type": "node",
      "localRoot": "${workspaceFolder}/liquidazione",
      "remoteRoot": "/home/vcap/app"
    },

## After Deploy
cf ssh liquidazione-srv
## When in virtual machine locate process
ps aux
## Find PID of process: node /home/vcap/app/node_modules/.bin/cds run
kill -usr1 PID
## In another terminal right after send this command:
cf ssh -N -L 9229:127.0.0.1:9229 liquidazione-srv
## Go to debug section and start "Attach to a Cloud Foundry Instance on Port 9229"
## Run your function
## ######################### END ################################# ## 