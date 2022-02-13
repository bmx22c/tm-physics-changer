const express = require('express')
const cors = require('cors')

// The developer rig uses self-signed certificates.  Node doesn't accept them
// by default.  Do not use this in production.
process.env.NODE_TLS_REJECT_UNAUTHORIZED = '0';

// Use verbose logging during development.  Set this to false for production.
const verboseLogging = true
const verboseLog = verboseLogging ? console.log.bind(console) : () => { }

const app = express()
const port = ~~process.env.PORT || 3000

app.use(cors());

require('./routes/home.js')(app)
require('./routes/physics.js')(app)

app.use('/assets', express.static(process.cwd() + '/assets'))

app.listen(port, () => {
	console.log(`Application exemple à l'écoute sur le port ${port}!`);
});