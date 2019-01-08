#!/bin/bash
export LD_LIBRARY_PATH="$PREFIX/lib:$LD_LIBRARY_PATH"
export LIBRARY_PATH="$PREFIX/lib:$LIBRARY_PATH"
export C_INCLUDE_PATH="$PREFIX/include:$C_INCLUDE_PATH" 
ghc-pkg recache
cabal update
cabal install --extra-lib-dirs=$PREFIX/lib --extra-include-dirs=$PREFIX/include happy-1.19.9
