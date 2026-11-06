const test = require('node:test');
const assert = require('node:assert');
const fs = require('node:fs');

test('notes.html exists', () => {
  assert.ok(fs.existsSync('out/notes.html'), 'out/notes.html should exist');
});

test('notes.html contains HTML heading', () => {
  const content = fs.readFileSync('out/notes.html', 'utf8');
  assert.match(content, /<h1>Notes<\/h1>/);
});

test('notes.html is not empty (non-zero byte)', () => {
  const stats = fs.statSync('out/notes.html');
  assert.ok(stats.size > 0, 'out/notes.html should not be 0 bytes');
});
