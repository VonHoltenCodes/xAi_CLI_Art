#!/usr/bin/env bash
# xAi_CLI_Art Display Helper
# Usage: ./scripts/display.sh [neon|3d|blackhole|compact|all]

set -e

ART_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/art"

show_art() {
    local file="$1"
    if [[ -f "$file" ]]; then
        echo
        cat "$file"
        echo
    else
        echo "Not found: $file"
    fi
}

case "${1:-neon}" in
    neon|sigil)
        show_art "$ART_DIR/xai-cli/neon-sigil-v2.txt"
        ;;
    3d|extruded)
        show_art "$ART_DIR/xai-cli/3d-extruded.txt"
        ;;
    blackhole|grok)
        show_art "$ART_DIR/grok/blackhole-god-tier.txt"
        ;;
    compact|banner)
        show_art "$ART_DIR/xai-cli/compact-banner.txt"
        ;;
    all)
        echo "=== NEON SIGIL v2.0 (Flagship) ==="
        show_art "$ART_DIR/xai-cli/neon-sigil-v2.txt"
        echo "=== 3D EXTRUDED ==="
        show_art "$ART_DIR/xai-cli/3d-extruded.txt"
        echo "=== GROK BLACK HOLE ==="
        show_art "$ART_DIR/grok/blackhole-god-tier.txt"
        echo "=== COMPACT BANNER ==="
        show_art "$ART_DIR/xai-cli/compact-banner.txt"
        ;;
    *)
        echo "Unknown style: $1"
        echo "Available: neon, 3d, blackhole, compact, all"
        exit 1
        ;;
esac
