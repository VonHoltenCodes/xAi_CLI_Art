#!/usr/bin/env bash
#
# xAi_CLI_Art Display Tool — Full Variety Edition
# Supports: styles, subjects, in-the-style-of, by-purpose
#
# Usage:
#   ./scripts/display.sh list
#   ./scripts/display.sh styles neon
#   ./scripts/display.sh subjects vehicles racecar
#   ./scripts/display.sh in-the-style-of monet
#   ./scripts/display.sh all
#

set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
ART_ROOT="$ROOT/art"

list_all() {
    echo "xAi CLI Art Library — All Categories"
    echo "===================================="
    echo
    for category in subjects styles in-the-style-of by-purpose; do
        if [[ -d "$ART_ROOT/$category" ]]; then
            echo "[$category]"
            for sub in $(ls "$ART_ROOT/$category"); do
                count=$(find "$ART_ROOT/$category/$sub" -name "*.txt" | wc -l)
                printf "  %-20s (%d pieces)\n" "$sub" "$count"
            done
            echo
        fi
    done
}

show_piece() {
    local file="$1"
    echo "──────────────────────────────────────────────────────────────────────────────"
    cat "$file"
    echo
    echo "──────────────────────────────────────────────────────────────────────────────"
    echo
}

show_sub() {
    local category="$1"
    local sub="$2"
    local dir="$ART_ROOT/$category/$sub"

    if [[ ! -d "$dir" ]]; then
        echo "Not found: $category/$sub"
        exit 1
    fi

    echo
    echo "══════════════════════════════════════════════════════════════════════════════"
    echo "  CATEGORY: $category / $sub"
    echo "══════════════════════════════════════════════════════════════════════════════"
    echo

    find "$dir" -name "*.txt" | sort | while read -r file; do
        echo "▶ $(basename "$file" .txt)"
        show_piece "$file"
    done
}

case "${1:-list}" in
    list|--list|-l)
        list_all
        ;;
    all)
        for category in subjects styles in-the-style-of by-purpose; do
            if [[ -d "$ART_ROOT/$category" ]]; then
                for sub in $(ls "$ART_ROOT/$category"); do
                    show_sub "$category" "$sub"
                done
            fi
        done
        ;;
    styles|subjects|in-the-style-of|by-purpose)
        if [[ $# -lt 2 ]]; then
            echo "Usage: $0 $1 <sub-category> [piece]"
            exit 1
        fi
        if [[ $# -eq 2 ]]; then
            show_sub "$1" "$2"
        else
            file="$ART_ROOT/$1/$2/$3.txt"
            if [[ -f "$file" ]]; then
                echo "▶ $3"
                show_piece "$file"
            else
                echo "Piece not found: $3"
            fi
        fi
        ;;
    *)
        echo "Unknown command: $1"
        list_all
        exit 1
        ;;
esac
