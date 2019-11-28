#!/bin/bash

ng build --prod --base-href https://john-alves.github.io/landing-page-t01/
mv dist/landing-page-t01 /tmp/
cd /tmp/landing-page-t01/

git init
git remote add origin git@github.com:John-Alves/landing-page-t01.git
git add .
git commit -m "deploy"
git checkout -b gh-pages
git push origin gh-pages --force