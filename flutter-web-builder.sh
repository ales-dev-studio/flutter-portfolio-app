#!/bin/bash

flutter clean
flutter pub get

flutter build web --web-renderer canvaskit --release --no-tree-shake-icons

open build

