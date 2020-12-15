#!/bin/bash
# Ensure that jq is available
dpkg -s jq &> /dev/null
if [[ $? -gt 0 ]]; then
    echo Error: jq is not available.
    echo sudo apt install jq
    echo to install it.
    exit 1
fi
# GitHub API Token
#GH_API_TOKEN is not defined here but in .bashrc
# GitHub User Name
#GH_USER is not defined here but in .bashrc
# Node Package Manmager org
#NPM_ORG is not defined here but in .bashrc
# Variable to store first argument to setup-repo, the repo name. Will be used as GH repo name, too.
if [[ $# -eq 0 ]]; then
    NEW_REPO_NAME=$(basename "$PWD")
    if [[ -d ".git" ]]; then
        echo "The ${PWD} project is already initialized."
        exit 1
    else
        if find "." -mindepth 1 -print -quit 2>/dev/null | grep -q .; then
           echo "${NEW_REPO_NAME} is not empty, aborting."
           exit 1
        else
            echo "Initialising the ${NEW_REPO_NAME} project."
        fi
    fi
else
    NEW_REPO_NAME=$1
    if [[ -d "$NEW_REPO_NAME" ]]; then
        cd $NEW_REPO_NAME
        if [[ -d ".git" ]]; then
            echo "The ${NEW_REPO_NAME} project already exist."
            cd ..
            exit 1
        fi
    else
        echo "Creating the ${NEW_REPO_NAME} project."
        mkdir $NEW_REPO_NAME && cd $NEW_REPO_NAME
    fi
fi
# Store current working directory.
CURRENT_DIR=$PWD
# Project directory can be passed as second argument to setup-repo, or will default to current working directory.
PROJECT_DIR=${2:-$CURRENT_DIR}
# Initialize NPM (typescript,assemblyscript,typescript tests)
npm init -y
npm install --save-dev @types/jest @types/node jest ts-jest typescript assemblyscript source-map-support @types/source-map-support onchange serve -SD
npm install --save @assemblyscript/loader -y 
npx asinit . -y
# Create src (typescript) and lib (transpiled typescript => javascript) folders.
mkdir src lib
# Remove index.js, it's not needed (we got it from asinit above), we include such logic directly in the wrapper code instead.
rm -f index.js
# Generate an initial ts api wrapper file
{
    echo 'import * as fs from "fs";'
    echo 'import * as loader from "@assemblyscript/loader/umd"; // /umd since jest likes it better...' 
    echo 'import ASModule from "../build/untouched";'
    echo 'const imports = { /* imports go here */ };'
    echo 'const wasmModulePath = __dirname.replace("/lib","/build/untouched.wasm");'
    echo 'const asModule = loader.instantiateSync<typeof ASModule>(fs.readFileSync(wasmModulePath), imports);'
    echo '// TypeScript API wrappers for AssemblyScript interop logic, also a good place to manage possible breaking changes etc.'
    echo 'const asm = asModule.exports;'
    echo 'export function add(a:number, b:number): number {'
    echo '   return asm.add(a, b);'
    echo '}'
} > ./src/$NEW_REPO_NAME.ts
# Generate an index.ts for the api (will end up as /lib/index.js)
{
    echo "export * from './${NEW_REPO_NAME}'"
} > ./src/index.ts
# Generate an index.js for the package api
{
    echo "const lib = require('./lib');"
    echo "module.exports = lib;"
} > index.js
# Generate a typescript definition file for index.js
{
    echo "export * from \"./lib\"";
} > index.d.ts
# Remove the js test example
rm -f tests/index.js
# Generate a js test example for the api
{
    echo 'const assert = require("assert");'
    echo 'const api = require("..");'
    echo 'assert.strictEqual(api.add(1, 2), 3);'
    echo 'console.log("ok");'
} > tests/index.js
# Generate a jest test example for the api
{
    echo "/**"
    echo "* @jest-environment node"
    echo "*/"    
    echo " "
    echo "import * as api from \"..\""
    echo "test('add should work', () => {"
    echo "   expect(api.add(1,2)).toBe(3);"
    echo "})"
} > ./tests/$NEW_REPO_NAME.spec.ts
# Generate a main.js for test runs under node (through npm start script)
{
    echo "console.log('Hello, world from ${NEW_REPO_NAME}');"
} > main.js
# Generate .md  
# {
#    echo "# ${NEW_REPO_NAME}" 
#    echo "**${NEW_REPO_NAME}** is a typescript/assemblyscript enabled node package with debuggable unit tests written in typescript."
# } > README.md
# Generate .gitignore
{
    echo 'node_modules'
    echo 'coverage'
    echo 'build'
    echo 'lib'
} > .gitignore
# Generate .npmignore (OK since we are whitelisting using files in the package.json)
{
    echo 'coverage'
    echo 'assembly'
    echo 'tests'
    echo 'src'
} > .npmignore
# Generate jest.config.js, configurate to enable TypeScript tests.
{
    #echo "export default {"
    echo "module.exports = {"
    echo "   roots: ['<rootDir>/src', '<rootDir>/tests'],"
    echo "   transform: {"
    echo "      '^.+\\\\.tsx?$': 'ts-jest',"
    echo "   },"
    echo "   testRegex: '(/__tests__/.*|(\\\\.|/)(test|spec))\\\\.tsx?$',"
    echo "   moduleFileExtensions: ['ts', 'tsx', 'js', 'jsx', 'json', 'node'],"
    echo "   coverageThreshold: {"
    echo "      global: {"
    echo "         branches: 80,"
    echo "         functions: 80,"
    echo "         lines: 80,"
    echo "         statements: 80"
    echo "      }"
    echo "   },"
    echo "   coverageReporters: ['json', 'lcov', 'text', 'clover'],"
    echo "}"
} > jest.config.js
# Generate tsconfig.json
{
    echo '{'
    echo '  "compilerOptions": {'
    echo '      "target": "es6",'
    #echo '      "module": "ESNext",'
    echo '      "module": "commonjs",'
    echo '      "moduleResolution": "node",'
    echo '      "esModuleInterop": true,'
    echo '      "noImplicitAny": true,'
    echo '      "removeComments": true,'
    echo '      "preserveConstEnums": true,'
    echo '      "lib": ["es2018","dom"],'
    echo '      "sourceRoot": "../src",'
    echo '      "strict": true,'
    echo '      "declaration": true,'
    echo '      "outDir": "lib",'
    echo '      "sourceMap": true'
    echo '   },'
    echo '  "include": ["src/**/*.ts"],'
    echo '  "exclude": ["**/node_modules", "tests", "assembly", "build", "lib", "coverage", "**/*.spec.ts"]'
    echo '}'
} > tsconfig.json
# Create .vscode directory
mkdir .vscode
# Generate .vscode/launch.json
{
    echo '{'
    echo '  // Use IntelliSense to learn about possible attributes.'
    echo '  // Hover to view descriptions of existing attributes.'
    echo '  // For more information, visit: https://go.microsoft.com/fwlink/?linkid=830387'
    echo '  "version": "1.0.0",'
    echo '  "configurations": ['
    echo '      {'
    echo '         "type": "node",'
    echo '         "name": "Debug Tests",'
    echo '         "request": "launch",'
    echo '         "args": ['
    echo '         "--runInBand"'
    echo '         ],'
    echo '          "cwd": "${workspaceFolder}",'
    echo '          "console": "externalTerminal",'
    echo '          "internalConsoleOptions": "neverOpen",'
    echo '          "disableOptimisticBPs": true,'
    echo '          "program": "${workspaceFolder}/node_modules/jest/bin/jest"'
    echo '      },'
    echo '      {'
    echo '          "type": "node",'
    echo '          "request": "launch",'
    echo '          "name": "Launch Program",'
    echo '          "skipFiles": ['
    echo '              "<node_internals>/**"'
    echo '          ],'
    echo '          "program": "${workspaceFolder}/main.js",'
    echo '          //"preLaunchTask": "tsc: build - tsconfig.json",'
    echo '          //"outFiles": ['
    echo '          //    "${workspaceFolder}/lib/**/*.js"'
    echo '          //]'
    echo '      }'
    echo '  ]'
    echo '}'
} > .vscode/launch.json
# Update package.json
GH_AUTHOR=$(git config user.name)
GH_EMAIL=$(git config user.email)
PKG_GIT_DESCRIPTION="${NEW_REPO_NAME} is a typescript/assemblyscript enabled node package with debuggable unittests in typescript."
PKG_README_DESCRIPTION="\\*\\*${NEW_REPO_NAME}\\*\\* is a typescript\\/assemblyscript enabled node package with debuggable unittests in typescript\\."
jq '.version = "0.0.1"' package.json > .tmp && mv .tmp package.json 
jq '.author = "'"${GH_AUTHOR} <${GH_EMAIL}>"'"' package.json > .tmp && mv .tmp package.json 
jq '.description = "'"${PKG_GIT_DESCRIPTION}"'"' package.json > .tmp && mv .tmp package.json
jq '.keywords = ["package","typescript","assemblyscript","'"${GH_AUTHOR}"'","'"${NEW_REPO_NAME}"'","'"${NPM_ORG}"'"]' package.json > .tmp && mv .tmp package.json 
jq '.license = "MIT"' package.json > .tmp && mv .tmp package.json 
jq '.scripts."test:jest" = "npm run build && jest"' package.json > .tmp && mv .tmp package.json
#jq '.scripts."test:jest" = "npm run build && jest --coverage"' package.json > .tmp && mv .tmp package.json
jq '.scripts."test" = "npm run build && node tests"' package.json > .tmp && mv .tmp package.json
jq '.scripts."asbuild:untouched" = "asc assembly/index.ts --target debug -d > build/untouched.d.ts"' package.json > .tmp && mv .tmp package.json
jq '.scripts."asbuild:optimized" = "asc assembly/index.ts --target release -d > build/optimized.d.ts"' package.json > .tmp && mv .tmp package.json
jq '.scripts.tsbuild = "tsc"' package.json > .tmp && mv .tmp package.json
jq '.scripts.build = "npm run asbuild && npm run tsbuild"' package.json > .tmp && mv .tmp package.json
jq '.scripts.clean = "rm -rf coverage/* build/* lib/*"' package.json > .tmp && mv .tmp package.json
jq '.scripts.start = "npm run build && node main.js"' package.json > .tmp && mv .tmp package.json
jq '.files = ["/build","/lib"]' package.json > .tmp && mv .tmp package.json
#jq '.type = "module"' package.json > .tmp && mv .tmp package.json
jq '.type = "commonjs"' package.json > .tmp && mv .tmp package.json
jq '.main = "index.js"' package.json > .tmp && mv .tmp package.json
# Fetch a copy of the package template and create a README.md 
cp ~/bin/create-script-lib.template.md ./README.md
# Replace the macro strings in ./README.md. Twice because sed only replace one occurance / line ?
NEW_REPO_NAME_MACRO='\\${NEW_REPO_NAME}'
sed -i "s/${NEW_REPO_NAME_MACRO}/${NEW_REPO_NAME}/g" ./README.md
#sed -i "s/${NEW_REPO_NAME_MACRO}/${NEW_REPO_NAME}/" ./README.md
PKG_README_DESCRIPTION_MACRO='\\${PKG_README_DESCRIPTION}'
sed -i "s/${PKG_README_DESCRIPTION_MACRO}/${PKG_README_DESCRIPTION}/" ./README.md
GH_USER_MACRO='\\${GH_USER}'
sed -i "s/${GH_USER_MACRO}/${GH_USER}/" ./README.md
GH_AUTHOR_MACRO='\\${GH_AUTHOR}'
sed -i "s/${GH_AUTHOR_MACRO}/${GH_AUTHOR}/" ./README.md
GH_EMAIL_MACRO='\\${GH_EMAIL}'
sed -i "s/${GH_EMAIL_MACRO}/${GH_EMAIL}/" ./README.md
NPM_ORG_MACRO='\\${NPM_ORG}'
sed -i "s/${NPM_ORG_MACRO}/${NPM_ORG}/" ./README.md
# GitHub repos Create API call
echo "Creating repo"
curl -H "Authorization: token $GH_API_TOKEN" https://api.github.com/user/repos -d '{"name": "'"${NEW_REPO_NAME}"'", "description": "'"${PKG_GIT_DESCRIPTION}"'"}'
# Initialize Git in project directory, and add the GH repo remote.
echo "Initializing git"
git init
# Add initial files and commit, push to remote.
git add .
# Create main branch and do first commit.
git commit -m "First commit."
git branch -M main
echo "remote add origin"
git remote add origin https://github.com/$GH_USER/${NEW_REPO_NAME}.git
echo "push"
git push -u origin main
# Do a build to get initial files in lib and build
npm run build
exit 0