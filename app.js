const http = require ('http');

const hostname = '0.0.0.0';
const port = process.env.PORT;

const server = http.createServer((req, res) => {
    res.statusCode = 200;
    res.setHeader('Content-Type', 'text/plain');
    res.end('Hello, World!');
});

server.listen(port, hostname, () => {
    console.log(`Server runnign at http://${hostname}:${port}/`);
});

process.on('SIGINT', function(){
    process.exit();
})