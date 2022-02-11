const fs = require('fs')
const express = require('express')
const cors = require('cors')
const https = require('https')

// The developer rig uses self-signed certificates.  Node doesn't accept them
// by default.  Do not use this in production.
process.env.NODE_TLS_REJECT_UNAUTHORIZED = '0';

// Use verbose logging during development.  Set this to false for production.
const verboseLogging = true
const verboseLog = verboseLogging ? console.log.bind(console) : () => { }

const privateKey = fs.readFileSync('cert/key.pem')
const certificate = fs.readFileSync('cert/cert.pem')
const credentials = {key: privateKey, cert: certificate}
const app = express()
const httpsServer = https.createServer(credentials, app)
const port = ~~process.env.PORT || 3000

app.use(cors());

require('./routes/home.js')(app)
require('./routes/physics.js')(app)
// require('./routes/checkprofile.js')(app)

httpsServer.listen(port, () => {
	console.log(`Application exemple à l'écoute sur le port ${port}!`);
});