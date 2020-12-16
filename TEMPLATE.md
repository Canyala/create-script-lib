# \${NPM_ORG}@\${NEW_REPO_NAME}@0.0.1<!-- omit in toc -->

Summary: \${PKG_README_DESCRIPTION}  

Author: \${GH_AUTHOR}  
Mail: \${GH_EMAIL}  
User: \${GH_USER}  
Org: \${NPM_ORG}  

## Table of contents<!-- omit in toc -->

- [1. Abstract](#1-abstract)
- [2. Releases](#2-releases)
- [3. The folders and files of **\${NEW_REPO_NAME}**](#3-the-folders-and-files-of-new_repo_name)
  - [3.1. ./assembly/index.ts](#31-assemblyindexts)
  - [3.2. ./build/optimized.d.ts](#32-buildoptimizeddts)
  - [3.3. ./build/optimized.wasm](#33-buildoptimizedwasm)
  - [3.4. ./build/optimized.wat](#34-buildoptimizedwat)
  - [3.5. ./index.d.ts](#35-indexdts)
  - [3.6. ./index.js](#36-indexjs)
  - [3.7. ./lib](#37-lib)
  - [3.8. ./lib/index.d.ts](#38-libindexdts)
  - [3.9. ./lib/index.js](#39-libindexjs)
  - [3.10. ./lib/\${NEW_REPO_NAME}.d.ts](#310-libnew_repo_namedts)
  - [3.11. ./lib/\${NEW_REPO_NAME}.js](#311-libnew_repo_namejs)
  - [3.12. ./main.js](#312-mainjs)
  - [3.13. ./src/index.ts](#313-srcindexts)
  - [3.14. ./src/\${NEW_REPO_NAME}.ts](#314-srcnew_repo_namets)
  - [3.15. ./tests/index.js](#315-testsindexjs)
  - [3.16. ./tests/\${NEW_REPO_NAME}.spec.ts](#316-testsnew_repo_namespects)
- [4. Launch configurations](#4-launch-configurations)
  - [4.1. Debug Tests](#41-debug-tests)
  - [4.2. Launch Program](#42-launch-program)
- [5. NPM Scripts](#5-npm-scripts)
  - [5.1. test](#51-test)
  - [5.2. asbuild:untouched](#52-asbuilduntouched)
  - [5.3. asbuild:optimized](#53-asbuildoptimized)
  - [5.4. asbuild](#54-asbuild)
  - [5.5. test:jest](#55-testjest)
  - [5.6. tsbuild](#56-tsbuild)
  - [5.7. build](#57-build)
  - [5.8. clean](#58-clean)
  - [5.9. start](#59-start)

## 1. Abstract

Elaborate on "\${PKG_README_DESCRIPTION}"

## 2. Releases

Version | Description
---------|----------
 1.0.0 | *Under construction, not ready for use*
 0.0.1 | *Initial development version, do not use*

## 3. The folders and files of **\${NEW_REPO_NAME}**

```lang
\${NEW_REPO_NAME}
├── README.md
├── asconfig.json
├── assembly
│   ├── index.ts
│   └── tsconfig.json
├── build 
│   ├── optimized.d.ts
│   ├── optimized.wasm
│   ├── optimized.wasm.map
│   ├── optimized.wat
│   ├── untouched.d.ts
│   ├── untouched.wasm
│   ├── untouched.wasm.map
│   └── untouched.wat
├── index.d.ts
├── index.js
├── jest.config.js
├── lib
│   ├── index.d.ts
│   ├── index.js
│   ├── index.js.map
│   ├── \${NEW_REPO_NAME}.d.ts
│   ├── \${NEW_REPO_NAME}.js
│   └── \${NEW_REPO_NAME}.js.map
├── main.js
├── package-lock.json
├── package.json
├── src
│   ├── index.ts
│   └── \${NEW_REPO_NAME}.ts
├── tests
│   ├── index.js
│   └── \${NEW_REPO_NAME}.spec.ts
└── tsconfig.json
```

### 3.1. ./assembly/index.ts

Internal AssemblyScript library core implementation.

### 3.2. ./build/optimized.d.ts

Generated type definition for binary output.

### 3.3. ./build/optimized.wasm

Generated optimized compile binary output.

### 3.4. ./build/optimized.wat

Generated optimized AssemblyScript text output.

### 3.5. ./index.d.ts

Type definition for package index module.

### 3.6. ./index.js

Package index module.

### 3.7. ./lib  

Generated TypeScript output.

### 3.8. ./lib/index.d.ts  

Generated type definition for the js index module.

### 3.9. ./lib/index.js  

Generated JavaScript index module.

### 3.10. ./lib/\${NEW_REPO_NAME}.d.ts  

Generated Type definition for js api module.

### 3.11. ./lib/\${NEW_REPO_NAME}.js  

Generated JavaScript api implementation module.

### 3.12. ./main.js

Embryo for launching and the package as a node commandline utility.

### 3.13. ./src/index.ts

TypeScript api index module.

### 3.14. ./src/\${NEW_REPO_NAME}.ts  

TypeScript api implementation module.

### 3.15. ./tests/index.js  

Node JavaScript api module tests relying on the  `assert` function.

### 3.16. ./tests/\${NEW_REPO_NAME}.spec.ts  

Jest TypeScript api module unit tests relying on the node `jest/ts-jest` framework.

## 4. Launch configurations

### 4.1. Debug Tests

Use this configuration to debug unit tests in `./tests/\${NEW_REPO_NAME}.spec.ts`

### 4.2. Launch Program

Launch the package as a node command line utility through `./main.js` for testing purposes.

## 5. NPM Scripts

The following scripts are defined in the `scripts` section in `package.json`.

### 5.1. test

`npm run build && node tests`

*Build and then run node javascript tests.*

### 5.2. asbuild:untouched

`asc assembly/index.ts --target debug -d > build/untouched.d.ts`

*Build a debug version of the core assemblyscript implementation, generate typescript type definitions.*

### 5.3. asbuild:optimized

`asc assembly/index.ts --target release -d > build/optimized.d.ts`

*Build a release version of the core assemblyscript implementation, generate typescript type definitions.*

### 5.4. asbuild

`npm run asbuild:untouched && npm run asbuild:optimized`

*First build debug and then release versions of the core assemblyscript implementation.*

### 5.5. test:jest

`npm run build && jest`

*First build all and then run the unit tests of the jest/ts-test framework.*

### 5.6. tsbuild

`tsc`

*Build the typescript api implementation.*

### 5.7. build

`npm run asbuild && npm run tsbuild`

*First build the core assembly script and the typescript api.*

### 5.8. clean

`rm -rf coverage/* build/* lib/*`

*Remove all output files from the build.*

### 5.9. start

`npm run build && node main.js`

*First build all and then run `.\main.js` as a node application.*
