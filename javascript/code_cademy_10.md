# BROWSER COMPATIBILITY AND TRANSPILATION

- Transpilation With Babel
```bash
npm init
npm install babel-cli
npm install babel-preset-env
npm run build
```

- Install Node Packages
```bash
npm install babel-cli -D
npm install babel-preset-env -D
npm install

{
  "presets": ["env"]
}
```

- Babel Source Lib
  - babel — The Babel command call responsible for transpiling code.  
  - src — Instructs Babel to transpile all JavaScript code inside the src directory.  
  - -d — Instructs Babel to write the transpiled code to a directory.  
  - lib — Babel writes the transpiled code to a directory called lib.   
```bash
babel src -d lib
```

- Build
```bash
"build": "babel src -d lib"
npm run build
```
