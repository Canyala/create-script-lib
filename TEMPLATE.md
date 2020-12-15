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
  - [3.1. \${NEW_REPO_NAME}/assembly/index.ts](#31-new_repo_nameassemblyindexts)
  - [3.2. \${NEW_REPO_NAME}/build/optimized.d.ts](#32-new_repo_namebuildoptimizeddts)
  - [3.3. \${NEW_REPO_NAME}/build/optimized.wasm](#33-new_repo_namebuildoptimizedwasm)
  - [3.4. \${NEW_REPO_NAME}/build/optimized.wat](#34-new_repo_namebuildoptimizedwat)
  - [3.5. \${NEW_REPO_NAME}/index.d.ts](#35-new_repo_nameindexdts)
  - [3.6. \${NEW_REPO_NAME}/index.js](#36-new_repo_nameindexjs)
  - [3.7. \${NEW_REPO_NAME}/lib](#37-new_repo_namelib)
  - [3.8. \${NEW_REPO_NAME}/lib/index.d.ts](#38-new_repo_namelibindexdts)
  - [3.9. \${NEW_REPO_NAME}/lib/index.js](#39-new_repo_namelibindexjs)
  - [3.10. \${NEW_REPO_NAME}/lib/\\${NEW_REPO_NAME}.d.ts](#310-new_repo_namelibnew_repo_namedts)
  - [3.11. \${NEW_REPO_NAME}/lib/\\${NEW_REPO_NAME}.js](#311-new_repo_namelibnew_repo_namejs)
  - [3.12. \${NEW_REPO_NAME}/src/index.ts](#312-new_repo_namesrcindexts)
  - [3.13. \${NEW_REPO_NAME}/src/\\${NEW_REPO_NAME}.ts](#313-new_repo_namesrcnew_repo_namets)
  - [3.14. \${NEW_REPO_NAME}/tests/index.js](#314-new_repo_nametestsindexjs)
  - [3.15. \${NEW_REPO_NAME}/tests/\\${NEW_REPO_NAME}.spec.ts](#315-new_repo_nametestsnew_repo_namespects)
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

### 3.1. \${NEW_REPO_NAME}/assembly/index.ts

Internal AssemblyScript library core implementation.

### 3.2. \${NEW_REPO_NAME}/build/optimized.d.ts

Generated type definition for binary output.

### 3.3. \${NEW_REPO_NAME}/build/optimized.wasm

Generated optimized compile binary output.

### 3.4. \${NEW_REPO_NAME}/build/optimized.wat

Generated optimized AssemblyScript text output.

### 3.5. \${NEW_REPO_NAME}/index.d.ts

Type definition for package index module.

### 3.6. \${NEW_REPO_NAME}/index.js

Package index module.

### 3.7. \${NEW_REPO_NAME}/lib  

Generated TypeScript output.

### 3.8. \${NEW_REPO_NAME}/lib/index.d.ts  

Generated type definition for the js index module.

### 3.9. \${NEW_REPO_NAME}/lib/index.js  

Generated JavaScript index module.

### 3.10. \${NEW_REPO_NAME}/lib/\\${NEW_REPO_NAME}.d.ts  

Generated Type definition for js api module.

### 3.11. \${NEW_REPO_NAME}/lib/\\${NEW_REPO_NAME}.js  

Generated JavaScript api implementation module.

### 3.12. \${NEW_REPO_NAME}/src/index.ts

TypeScript api index module.

### 3.13. \${NEW_REPO_NAME}/src/\\${NEW_REPO_NAME}.ts  

TypeScript api implementation module.

### 3.14. \${NEW_REPO_NAME}/tests/index.js  

Barebones JavaScript api module tests.

### 3.15. \${NEW_REPO_NAME}/tests/\\${NEW_REPO_NAME}.spec.ts  

Jest TypeScript api module tests.

## 4. Launch configurations

## 5. NPM Scripts
