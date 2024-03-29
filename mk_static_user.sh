#!/bin/bash

echo -n 'Enter Password: '
read -rs PASSWORD

export OOD_CTR_PASSWORD=$(bcrypt $PASSWORD)
unset $PASSWORD

echo ''

cat <<EOF > static_user.yml
enablePasswordDB: true
staticPasswords:
- email: "$USER@localhost"
  hash: "$OOD_CTR_PASSWORD"
  username: "$USER"
  userID: "71e63e31-7af3-41d7-add2-575568f4525f"
EOF

unset SOME_PASSWORD
