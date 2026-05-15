#!/usr/bin/env bash
#
# xAi_CLI_Art Display Tool — High Variety Edition
# Usage examples:
#   ./scripts/display.sh list
#   ./scripts/display.sh subjects vehicles
#   ./scripts/display.sh in-the-style-of picasso
#   ./scripts/display.sh styles neon
#   ./scripts/display.sh all
#

set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
ART_ROOT="$ROOT/art"

list_categories() {
    echo "xAi CLI Art Library — Categories"
    echo "=================================="
    echo
    for cat in subjects styles in-the-style-of by-purpose; do
        if [[ -d "$ART_ROOT/$cat" ]]; then
            subdirs=$(find "$ART_ROOT/$cat" -mindepth 1 -maxdepth 1 -type d | wc -l)
            files=$(find "$ART_ROOT/$cat" -type f -name "*.txt" | wc -l)
            printf "  %-20s → %2d sub-categories, %2d pieces\n" "$cat" "$subdirs" "$files"
        fi
    done
    echo
    echo "Usage:"
    echo "  ./scripts/display.sh list"
    echo "  ./scripts/display.sh <category> <sub>"
    echo "  ./scripts/display.sh all"
}

show_piece() {
    local file="$1"
    echo "──────────────────────────────────────────────────────────────────────────────"
    cat "$file"
    echo
    echo "──────────────────────────────────────────────────────────────────────────────"
}

show_subcategory() {
    local category="$1"
    local sub="$2"
    local dir="$ART_ROOT/$category/$sub"

    if [[ ! -d "$dir" ]]; then
        echo "Not found: $category/$sub"
        exit 1
    fi

    echo
    echo "══════════════════════════════════════════════════════════════════════════════"
    echo "  $category / $sub"
    echo "══════════════════════════════════════════════════════════════════════════════"
    echo

    find "$dir" -type f -name "*.txt" | sort | while read -r file; do
        echo "▶ $(basename "$file" .txt)"
        show_piece "$file"
    done
}

case "${1:-list}" in
    list|--list|-l)
        list_categories
        ;;
    all)
        for catdir in "$ART_ROOT"/*/; do
            catname=$(basename "$catdir")
            for subdir in "$catdir"/*/; do
                subname=$(basename "$subdir")
                if [[ -d "$subdir" ]]; then
                    show_subcategory "$catname" "$subname"
                fi
            done
        done
        ;;
    subjects|styles|in-the-style-of|by-purpose)
        if [[ $# -lt 2 ]]; then
            echo "Usage: $0 $1 <sub-category>"
            exit 1
        fi
        show_subcategory "$1" "$2"
        ;;
    *)
        echo "Unknown command."
        list_categories
        exit 1
        ;;
esac
