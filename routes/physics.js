const fs = require('fs')

// Real AccelCoef;
// Real AdherenceCoef;
// Boolean Boost2Down;
// Boolean Boost2Up;
// Boolean BoostDown;
// Boolean BoostUp;
// Real ControlCoef;
// Real Cruise;
// Boolean ForceEngine;
// Boolean Fragile;
// Real GravityCoef;
// Boolean NoBrakes;
// Boolean NoEngine;
// Boolean NoSteer;
// Boolean SlowMotion;

dict = {
    'physicReactorBoostUp': 'BoostUp',
    'physicRedReactorBoostUp': 'ReactorBoost2',
    'physicNoSteer': 'NoSteer',
    'physicNoEngine': 'NoEngine',
    'physicFullThrottle': 'ForceEngine',
    'physicReactorBoostDown': 'BoostDown',
    'physicRedReactorBoostDown': 'Boost2Down',
    'physicFragile': 'Fragile',
    'physicNobrake': 'NoBrakes',
    'physicSlowMo': 'SlowMotion',
}

function jsToTM(query){
    var params = {}

    for(const param in query){
        for(const el in dict){
            if(param == el){
                console.log(dict[el])
                console.log(query[param])
                params[dict[el]] = query[param]
            }
        }
    }

    return params
}

module.exports = function (app) {
    app.get('/physics/', (req, res) => {
        const buffer = fs.readFileSync("./templates/maniascript.tpl")
        let maniascript = buffer.toString()
        
        params = jsToTM(req.query)
        var maniacodeStr = ""

        for(const key in params){
            maniacodeStr += "InputPlayer."+key+"="+(params[key] === 'true' ? "True" : "False")+";\n"
        }

        maniascript = maniascript.replace("{{code}}", maniacodeStr)

        // console.log(maniascript)

        res.set('Content-Type', 'text/xml')
        res.send(maniascript)
    });
}