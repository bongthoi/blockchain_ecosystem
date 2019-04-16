import express from 'express';
import bodyParser  from  'body-parser';

/** */
import public_api from './configs/public_api.json';
import routers from './src/routers/index';

/** */
var app=express();

/**config MiddleAware */
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());
app.use(function(req, res, next) {
    res.header('Access-Control-Allow-Origin', '*');
    res.header('Access-Control-Allow-Methods', 'GET,PUT,POST,DELETE');
    res.header('Access-Control-Allow-Headers', 'Content-Type');

    next();
});

app.use('/', routers);


/** */
var server=app.listen(public_api.server_port,()=>{
    console.log(`Server running at http://${public_api.server_ip}:${server.address().port}/`);
});