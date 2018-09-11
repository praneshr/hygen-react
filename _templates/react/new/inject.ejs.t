---
inject: true
to: app/<%= section %>/index.js
append: true
skip_if: './<%= name %>/index.jsx'
---
export * from './<%= name %>/index.jsx'
