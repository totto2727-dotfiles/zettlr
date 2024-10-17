REP_DIR=${REP_DIR:-$PWD}
ZETTLR_PATH="/Users/$(whoami)/Library/Application Support/Zettlr"

cp "$ZETTLR_PATH/config.json" $REP_DIR/
cp "$ZETTLR_PATH/stats.json" $REP_DIR/
cp "$ZETTLR_PATH/tags.json" $REP_DIR/
cp "$ZETTLR_PATH/targets.json" $REP_DIR/
cp "$ZETTLR_PATH/custom.css" $REP_DIR/
cp "$ZETTLR_PATH/user.dic" $REP_DIR/

cp -r "$ZETTLR_PATH/defaults" $REP_DIR/
cp -r "$ZETTLR_PATH/snippets" $REP_DIR/
