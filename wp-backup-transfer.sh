#!/bin/bash

rsync -vz -e 'ssh -p 18765' sesameri@37.60.251.72:$HOME/public_html/ /dest/

