#!/bin/bash
if [ -z "$1" ]; then
    exit 1
fi
INPUT_STRING="${1#{xor}}"
python3 -c "
import base64, sys
try:
    encoded = '$INPUT_STRING'
    decoded_bytes = base64.b64decode(encoded)
    plaintext = ''.join(chr(b ^ 95) for b in decoded_bytes)
    print(plaintext)
except Exception:
    sys.exit(1)
"
