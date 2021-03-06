#!/bin/bash
source .env
PACKAGE_NAME=rightplate

bx wsk action update $PACKAGE_NAME/GetPlaces GetPlaces.js -p googleKey $GOOGLE_KEY --web true

bx wsk action update $PACKAGE_NAME/GetStaticMap GetStaticMap.js -p googleKey $GOOGLE_KEY --web true

bx wsk action update $PACKAGE_NAME/CheckIn CheckIn.js -p url $DB_URL -p dbname $DB_BADGES --web true

bx wsk action update $PACKAGE_NAME/DeleteCheckIn DeleteCheckIn.js -p url $DB_URL -p dbname $DB_BADGES --web true

bx wsk action update $PACKAGE_NAME/CreateNewUser CreateNewUser.js

bx wsk action update $PACKAGE_NAME/GetUser GetUser.js -p url $DB_URL -p dbname $DB_USERS --web true

bx wsk action update $PACKAGE_NAME/GetUserBadges GetUserBadges.js -p url $DB_URL -p dbname $DB_BADGES --web true
