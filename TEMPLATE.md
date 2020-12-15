# \${NPM_ORG}@\${NEW_REPO_NAME}@0.0.1<!-- omit in toc -->

Summary: \${PKG_README_DESCRIPTION}  

Author: \${GH_AUTHOR}  
Mail: \${GH_EMAIL}  
User: \${GH_USER}  
Org: \${NPM_ORG}  

## Table of contents<!-- omit in toc -->

- [1. Abstract](#1-abstract)
- [2. Releases](#2-releases)
- [3. The folders and files of \${NEW_REPO_NAME}](#3-the-folders-and-files-of-new_repo_name)
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
  - [3.12. ./src/index.ts](#312-srcindexts)
  - [3.13. ./src/\${NEW_REPO_NAME}.ts](#313-srcnew_repo_namets)
  - [3.14. ./tests/index.js](#314-testsindexjs)
  - [3.15. ./tests/\${NEW_REPO_NAME}.spec.ts](#315-testsnew_repo_namespects)
- [4. Launch configurations](#4-launch-configurations)
- [5. NPM Scripts](#5-npm-scripts)

## 1. Abstract

Elaborate on "\${PKG_README_DESCRIPTION}"

## 2. Releases

Version | Description
---------|----------
 1.0.0 | *Under construction, not ready for use*
 0.0.1 | *Initial development version, do not use*

## 3. The folders and files of \${NEW_REPO_NAME}

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

### 3.12. ./src/index.ts

TypeScript api index module.

### 3.13. ./src/\${NEW_REPO_NAME}.ts  

TypeScript api implementation module.

### 3.14. ./tests/index.js  

Node JavaScript api module tests.

### 3.15. ./tests/\${NEW_REPO_NAME}.spec.ts  

Jest TypeScript api module tests.

## 4. Launch configurations

## 5. NPM Scripts
