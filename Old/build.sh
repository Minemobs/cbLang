#!/bin/bash
pyinstaller --icon="Resources/cbIcon.ico" --onefile --log-level ERROR interpreter.py
mv ./dist/interpreter ./
rm -rf dist build cbLang.exe interpreter.spec
mv interpreter cbLang
