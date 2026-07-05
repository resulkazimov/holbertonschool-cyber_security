#!/bin/bash
if [ -z "$1" ]; then
    exit 1
fi

# Əgər əvvəlində {xor} varsa silir, yoxdursa olduğu kimi saxlayır
INPUT_STRING="${1#{xor}}"

python3 -c "
import base64, sys
try:
    encoded = '$INPUT_STRING'
    # Base64 stringlərinin padding (==) əskikliyini düzəltmək üçün
    encoded += '=' * ((4 - len(encoded) % 4) % 4)
    decoded_bytes = base64.b64decode(encoded)
    plaintext = ''.join(chr(b ^ 95) for b in decoded_bytes)
    print(plaintext, end='')
except Exception as e:
    sys.exit(1)
"
