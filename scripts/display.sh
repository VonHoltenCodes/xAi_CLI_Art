#!/usr/bin/env bash
#
# xAi_CLI_Art — Browsable Terminal Art Library
# Usage:
#   ./scripts/display.sh list
#   ./scripts/display.sh neon
#   ./scripts/display.sh heavy-metal
#   ./scripts/display.sh phosphor
#   ./scripts/display.sh all
#

set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
ART_DIR="$ROOT/art/styles"

list_styles() {
    echo "Available styles in the xAi CLI Art Library:"
    echo
    find "$ART_DIR" -mindepth 1 -maxdepth 1 -type d | while read -r dir; do
        style=$(basename "$dir")
        count=$(find "$dir" -type f -name "*.txt" | wc -l)
        printf "  %-18s (%d pieces)\n" "$style" "$count"
    done
    echo
    echo "Usage: $0 <style>    or    $0 all"
}

show_style() {
    local style="$1"
    local dir="$ART_DIR/$style"

    if [[ ! -d "$dir" ]]; then
        echo "Unknown style: $style"
        echo "Run '$0 list' to see available styles."
        exit 1
    fi

    echo
    echo "══════════════════════════════════════════════════════════════════════════════"
    echo "  STYLE: $style"
    echo "══════════════════════════════════════════════════════════════════════════════"
    echo

    find "$dir" -type f -name "*.txt" | sort | while read -r file; do
        echo "▶ $(basename "$file" .txt)"
        echo "──────────────────────────────────────────────────────────────────────────────"
        cat "$file"
        echo
        echo "──────────────────────────────────────────────────────────────────────────────"
        echo
    done
}

case "${1:-list}" in
    list|--list|-l)
        list_styles
        ;;
    all)
        for style in $(find "$ART_DIR" -mindepth 1 -maxdepth 1 -type d | sort); do
            show_style "$(basename "$style")"
        done
        ;;
    neon)
        show_style "neon"
        ;;
    heavy-metal|heavy|metal)
        show_style "heavy-metal"
        ;;
    phosphor|crt|green)
        show_style "phosphor-crt"
        ;;
    minimal|cosmic)
        show_style "minimal"
        ;;
    extruded|3d)
        show_style "extruded-3d"
        ;;
    grok|blackhole)
        show_style "grok-blackhole"
        ;;
    accretion|disk|swirl)
        show_style "accretion"
        ;;
    lensed|lensing)
        show_style "lensed"
        ;;
    *)
        echo "Unknown command: $1"
        list_styles
        exit 1
        ;;
esac
