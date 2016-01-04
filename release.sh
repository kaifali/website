MIX_ENV=prod mix release.clean --implode --no-confirm &&
brunch build --production &&
MIX_ENV=prod mix phoenix.digest &&
MIX_ENV=prod mix compile &&
SERVER=1 MIX_ENV=prod mix release
