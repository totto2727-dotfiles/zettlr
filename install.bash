ZETTLR_PATH="/Users/$(whoami)/Library/Application Support/Zettlr"

mkdir -p $ZETTLR_PATH
mkdir -p $ZETTLR_PATH/defaults
mkdir -p $ZETTLR_PATH/snippets

curl -L "https://github.com/totto2727-dotfiles/zettlr/raw/refs/heads/main/config.json" >"$ZETTLR_PATH/config.json"
curl -L "https://github.com/totto2727-dotfiles/zettlr/raw/refs/heads/main/custom.css" >"$ZETTLR_PATH/custom.css"
curl -L "https://github.com/totto2727-dotfiles/zettlr/raw/refs/heads/main/stats.json" >"$ZETTLR_PATH/stats.json"
curl -L "https://github.com/totto2727-dotfiles/zettlr/raw/refs/heads/main/tags.json" >"$ZETTLR_PATH/tags.json"
curl -L "https://github.com/totto2727-dotfiles/zettlr/raw/refs/heads/main/targets.json" >"$ZETTLR_PATH/targets.json"
curl -L "https://github.com/totto2727-dotfiles/zettlr/raw/refs/heads/main/user.dic" >"$ZETTLR_PATH/user.dic"

for url in $(curl -s https://api.github.com/repos/totto2727-dotfiles/zettlr/contents/defaults | jq -r '.[] | select(.type=="file") | .download_url'); do
  curl -L $url >"$ZETTLR_PATH/defaults/$(basename $url | nkf --url-input)"
done

for url in $(curl -s https://api.github.com/repos/totto2727-dotfiles/zettlr/contents/snippets | jq -r '.[] | select(.type=="file") | .download_url'); do
  curl -L $url >"$ZETTLR_PATH/snippets/$(basename $url | nkf --url-input)"
done
