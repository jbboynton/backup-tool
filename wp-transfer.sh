#!/bin/bash

rsync -vz -e 'ssh -p 18765' horner:$HOME/.jb_backup/ /User/computer14/Desktop/
