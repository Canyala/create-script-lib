# \${NPM_ORG}@\${NEW_REPO_NAME}@0.0.1<!-- omit in toc -->

Summary: \${PKG_README_DESCRIPTION}  

Author: \${GH_AUTHOR}  
Mail: \${GH_EMAIL}  
User: \${GH_USER}  
Org: \${NPM_ORG}  

## Table of contents<!-- omit in toc -->

- [1. Abstract](#1-abstract)
- [2. Releases](#2-releases)
- [3. Files and folders](#3-files-and-folders)
  - [\${NEW_REPO_NAME}/assembly/index.ts](#new_repo_nameassemblyindexts)
  - [\${NEW_REPO_NAME}/build/optimized.d.ts](#new_repo_namebuildoptimizeddts)
  - [\${NEW_REPO_NAME}/build/optimized.wasm](#new_repo_namebuildoptimizedwasm)
  - [\${NEW_REPO_NAME}/build/optimized.wat](#new_repo_namebuildoptimizedwat)
  - [\${NEW_REPO_NAME}/index.d.ts](#new_repo_nameindexdts)
  - [\${NEW_REPO_NAME}/index.js](#new_repo_nameindexjs)
  - [\${NEW_REPO_NAME}/lib](#new_repo_namelib)
  - [\${NEW_REPO_NAME}/lib/index.d.ts](#new_repo_namelibindexdts)
  - [\${NEW_REPO_NAME}/lib/index.js](#new_repo_namelibindexjs)
  - [\${NEW_REPO_NAME}/lib/\${NEW_REPO_NAME}.d.ts](#new_repo_namelibnew_repo_namedts)
  - [\${NEW_REPO_NAME}/lib/\${NEW_REPO_NAME}.js](#new_repo_namelibnew_repo_namejs)
  - [\${NEW_REPO_NAME}/src/index.ts](#new_repo_namesrcindexts)
  - [\${NEW_REPO_NAME}/src/\${NEW_REPO_NAME}.ts](#new_repo_namesrcnew_repo_namets)
  - [\${NEW_REPO_NAME}/tests/index.js](#new_repo_nametestsindexjs)
  - [\${NEW_REPO_NAME}/tests/\${NEW_REPO_NAME}.spec.ts](#new_repo_nametestsnew_repo_namespects)
- [4. Launch configurations](#4-launch-configurations)
- [5. NPM Scripts](#5-npm-scripts)

## 1. Abstract

Elaborate on "\${PKG_README_DESCRIPTION}"

## 2. Releases

Version | Description
---------|----------
 1.0.0 | *Under construction, not ready for use*
 0.0.1 | *Initial development version, do not use*

## 3. Files and folders

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

### \${NEW_REPO_NAME}/assembly/index.ts

Internal AssemblyScript library core implementation.

### \${NEW_REPO_NAME}/build/optimized.d.ts

Generated type definition for binary output.

### \${NEW_REPO_NAME}/build/optimized.wasm

Generated optimized compile binary output.

### \${NEW_REPO_NAME}/build/optimized.wat

Generated optimized AssemblyScript text output.

### \${NEW_REPO_NAME}/index.d.ts

Type definition for package index module.

### \${NEW_REPO_NAME}/index.js

Package index module.

### \${NEW_REPO_NAME}/lib  

Generated TypeScript output.

### \${NEW_REPO_NAME}/lib/index.d.ts  

Generated type definition for the js index module.

### \${NEW_REPO_NAME}/lib/index.js  

Generated JavaScript index module.

### \${NEW_REPO_NAME}/lib/\${NEW_REPO_NAME}.d.ts  

Generated Type definition for js api module.

### \${NEW_REPO_NAME}/lib/\${NEW_REPO_NAME}.js  

Generated JavaScript api implementation module.

### \${NEW_REPO_NAME}/src/index.ts

TypeScript api index module.

### \${NEW_REPO_NAME}/src/\${NEW_REPO_NAME}.ts  

TypeScript api implementation module.

### \${NEW_REPO_NAME}/tests/index.js  

Barebones JavaScript api module tests.

### \${NEW_REPO_NAME}/tests/\${NEW_REPO_NAME}.spec.ts  

Jest TypeScript api module tests.

## 4. Launch configurations

## 5. NPM Scripts
