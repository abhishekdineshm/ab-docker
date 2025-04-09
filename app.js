const http = require('http');

const PORT = process.env.PORT || 3000;

const server = http.createServer((req, res) => {
  res.writeHead(200, { 'Content-Type': 'text/plain' });
  res.end('Hello from Node.js running inside a JDK 17 Docker container!\n');
});

server.listen(PORT, () => {
  console.log(`Server is running at http://localhost:${PORT}`);
});
