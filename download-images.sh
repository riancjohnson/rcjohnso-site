#!/bin/bash
# ════════════════════════════════════════════════════════════
# download-images.sh
# Run this once to download all photos into the images/ folder.
# Usage:  bash download-images.sh
# Requires: curl (pre-installed on macOS and most Linux systems)
# ════════════════════════════════════════════════════════════

set -e
DIR="$(cd "$(dirname "$0")/images" && pwd)"
echo "Downloading images to: $DIR"

dl() {
  local url="$1"
  local out="$DIR/$2"
  if [ -f "$out" ]; then
    echo "  skip  $2 (already exists)"
  else
    echo "  fetch $2"
    curl -sL "$url" -o "$out"
  fi
}

# Hero
dl "https://static.wixstatic.com/media/985b9a_c698c4f7b2de403a8aafb75219fda154~mv2_d_3089_2048_s_2.jpg" "hero.jpg"

# Gallery photos
dl "https://static.wixstatic.com/media/985b9a_60c7ec400cf44872878cfbf26045a1c3~mv2_d_3130_2075_s_2.jpg" "photo-01.jpg"
dl "https://static.wixstatic.com/media/985b9a_9605d496ffda4788a506f8a4accf3492~mv2_d_3130_2075_s_2.jpg" "photo-02.jpg"
dl "https://static.wixstatic.com/media/985b9a_ed6c0fa24d744c97ac73280fea3ce503~mv2_d_3130_2075_s_2.jpg" "photo-03.jpg"
dl "https://static.wixstatic.com/media/985b9a_e3fe97fb18a84d0da1892c67130493fe~mv2_d_3130_2075_s_2.jpg" "photo-04.jpg"
dl "https://static.wixstatic.com/media/985b9a_6fd1e835b45f45beb3633fe88ab87a7f~mv2_d_3130_2075_s_2.jpg" "photo-05.jpg"
dl "https://static.wixstatic.com/media/985b9a_83afe3afdc0046c783b1286a5f5a625c~mv2_d_3130_2075_s_2.jpg" "photo-06.jpg"
dl "https://static.wixstatic.com/media/985b9a_0e9b6c31a35847c7994fa6da4e1f2603~mv2_d_3130_2075_s_2.jpg" "photo-07.jpg"
dl "https://static.wixstatic.com/media/985b9a_71831a8a18614fa88c4a19524a464e65~mv2_d_3130_2075_s_2.jpg" "photo-08.jpg"
dl "https://static.wixstatic.com/media/985b9a_75cc5f4395ec42cd997b5c6db89e4c02~mv2_d_3130_2075_s_2.jpg" "photo-09.jpg"
dl "https://static.wixstatic.com/media/985b9a_711054788360403bb8aca31f14d99185~mv2_d_3130_2075_s_2.jpg" "photo-10.jpg"
dl "https://static.wixstatic.com/media/985b9a_b9ca065a9c784962ae5a84ca5b7627b9~mv2_d_3130_2075_s_2.jpg" "photo-11.jpg"
dl "https://static.wixstatic.com/media/985b9a_e68ad5cb94af43059eae120297ee66d5~mv2_d_3130_2075_s_2.jpg" "photo-12.jpg"
dl "https://static.wixstatic.com/media/985b9a_ec6d1fb872414eeea101008804a5eed4~mv2_d_3130_2075_s_2.jpg" "photo-13.jpg"
dl "https://static.wixstatic.com/media/985b9a_099c7dd802a8416584cba90fead8ca9c~mv2.jpg"               "photo-14.jpg"
dl "https://static.wixstatic.com/media/985b9a_0af22ac66de6431fb2b58f31f92b1181~mv2.jpg"               "photo-15.jpg"
dl "https://static.wixstatic.com/media/985b9a_e2fccf2dea524adda7891c9f43447eb5~mv2.jpg"               "photo-16.jpg"
dl "https://static.wixstatic.com/media/985b9a_90e6b34407544aeba244a926b5fb9ab2~mv2.jpg"               "photo-17.jpg"
dl "https://static.wixstatic.com/media/985b9a_3b2b35427d644d8fa75987dda860bceb~mv2_d_3130_2075_s_2.jpg" "photo-18.jpg"
dl "https://static.wixstatic.com/media/985b9a_a419315a4ad240bfb79a6fcf006ac0b7~mv2_d_3130_2075_s_2.jpg" "photo-19.jpg"
dl "https://static.wixstatic.com/media/985b9a_1603d46e2c7a46dbb2b74581baeffa82~mv2_d_3130_2075_s_2.jpg" "photo-20.jpg"
dl "https://static.wixstatic.com/media/985b9a_36d83fd03b9e46a986b49ada0d774d56~mv2_d_3130_2075_s_2.jpg" "photo-21.jpg"
dl "https://static.wixstatic.com/media/985b9a_f5b02bbe66f24fd0a4d25e35dff25e73~mv2_d_3130_2075_s_2.jpg" "photo-22.jpg"
dl "https://static.wixstatic.com/media/985b9a_5e796ca76be9439a8122c0703f64a4b6~mv2_d_3130_2075_s_2.jpg" "photo-23.jpg"
dl "https://static.wixstatic.com/media/985b9a_d55e818c7434400dbc293bc9bb6f851f~mv2_d_3089_2048_s_2.jpg" "photo-24.jpg"

echo ""
echo "✓ All done! $(ls "$DIR" | wc -l | tr -d ' ') images in images/"
