const fs = require('fs')

dict = {
    // 'physicReactorBoostUp': 'BoostUp',
    // 'physicRedReactorBoostUp': 'Boost2Up',
    // 'physicNoSteer': 'NoSteer',
    // 'physicNoEngine': 'NoEngine',
    // 'physicFullThrottle': 'ForceEngine',
    // 'physicReactorBoostDown': 'BoostDown',
    // 'physicRedReactorBoostDown': 'Boost2Down',
    // 'physicFragile': 'Fragile',
    // 'physicNobrake': 'NoBrakes',
    // 'physicSlowMo': 'SlowMotion',
    // 'physicsCruise': 'Cruise',
    'physicsAcceleration': 'AccelCoef',
    'physicsAdherence': 'AdherenceCoef',
    'physicsControl': 'ControlCoef',
    'physicsGravity': 'GravityCoef',
}

realList = [
    // 'Cruise',
    'AccelCoef',
    'AdherenceCoef',
    'ControlCoef',
    'GravityCoef',
]

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
            if(realList.includes(key)){
                if(params[key] == "1"){
                    params[key] = "1.0"
                }else if(params[key] == "0"){
                    params[key] = "0.0001"
                }
                maniacodeStr += "GUIPlayer."+key+"="+(parseFloat(params[key]).toFixed(4))+";\n"
            }else{
                maniacodeStr += "GUIPlayer."+key+"="+(params[key] === 'true' ? "True" : "False")+";\n"
            }
        }

        maniascript = maniascript.replace("{{code}}", maniacodeStr)

        res.set('Content-Type', 'text/xml')
        res.send(maniascript)
    });
}