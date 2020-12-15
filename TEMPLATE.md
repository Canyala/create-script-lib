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
- [4. NPM Scripts](#4-npm-scripts)

## 1. Abstract

Elaborate on "\${PKG_README_DESCRIPTION}"

## 2. Releases

Version | Description
---------|----------
 1.0.0 | *Under construction, not ready for use*
 0.0.1 | *Initial development version, do not use*

## 3. Files and folders

```lang-none
\${NEW_REPO_NAME}
├── README.md
├── asconfig.json
├── assembly
│   ├── index.ts                  <= Internal as implementation.
│   └── tsconfig.json
├── build                         <= as output, generated.
│   ├── optimized.d.ts            <= Type definition for binary output.
│   ├── optimized.wasm            <= as optimized binary output.
│   ├── optimized.wasm.map
│   ├── optimized.wat             <= as optimized text output.
│   ├── untouched.d.ts            <= Type definition for binary output.
│   ├── untouched.wasm            <= as optimized binary output.
│   ├── untouched.wasm.map
│   └── untouched.wat             <= as optimized text output.
├── index.d.ts                    <= Type definition for index.js
├── index.js                      <= Public package API loader.
├── jest.config.js
├── lib                           <= ts output, generated
│   ├── index.d.ts
│   ├── index.js                  <= js module index
│   ├── index.js.map
│   ├── \${NEW_REPO_NAME}.d.ts
│   ├── \${NEW_REPO_NAME}.js      <= js module api implementation.
│   └── \${NEW_REPO_NAME}.js.map
├── main.js
├── package-lock.json
├── package.json
├── src
│   ├── index.ts                  <= ts module index.
│   └── \${NEW_REPO_NAME}.ts      <= ts module api implementation.
├── tests
│   ├── index.js                  <= js tests
│   └── \${NEW_REPO_NAME}.spec.ts <= jest ts tests
└── tsconfig.json
```

## 4. NPM Scripts
