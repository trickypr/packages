cd shared

git clone https://github.com/dothq/browser-desktop

icon_id="co.dothq.browser"
icon_repo_path="browser-desktop/common/browser/branding/dot"

function icon {
  local size="$1x$1"

  echo "Icon: $size"

  # Initialise dir
  mkdir -p "icons/hicolor/$size/apps/"
  # Download files to the correct dir
  cp "$icon_repo_path/default$1.png" "icons/hicolor/$size/apps/$icon_id.png"
}

icon 16
icon 22
icon 24
icon 32
icon 48
icon 64
icon 128
icon 256

rm -rf browser-desktop