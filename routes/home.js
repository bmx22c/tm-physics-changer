const fs = require('fs')

module.exports = function (app) {
    app.get('/', (req, res) => {
        const buffer = fs.readFileSync("./templates/home.html.tpl")
        const html = buffer.toString()
        res.send(html)
    });
}