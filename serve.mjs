import { createServer } from 'node:http';
import { readFile } from 'node:fs/promises';
import { extname, join, normalize } from 'node:path';

const root = process.cwd();
const types = { '.html': 'text/html; charset=utf-8', '.css': 'text/css; charset=utf-8', '.js': 'text/javascript; charset=utf-8', '.png': 'image/png', '.webp': 'image/webp' };
createServer(async (request, response) => {
  const rawPath = request.url.split('?')[0] === '/' ? '/index.html' : request.url.split('?')[0];
  const file = normalize(join(root, rawPath));
  if (!file.startsWith(root)) { response.writeHead(403); response.end(); return; }
  try { const body = await readFile(file); response.writeHead(200, {'content-type': types[extname(file)] || 'application/octet-stream'}); response.end(body); }
  catch { response.writeHead(404); response.end('Not found'); }
}).listen(4178, '127.0.0.1', () => console.log('http://127.0.0.1:4178'));
