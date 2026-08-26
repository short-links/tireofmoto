#!/bin/bash
# Auto-Post Generator for Tire of Moto
# Generates optimized posts for Reddit, Facebook, Pinterest, Quora

echo "=== Tire of Moto - Auto Post Generator ==="

ARTICLES=($(ls /Volumes/claude\ code/被动收入/Googel\ Adsense/tireofmoto.com/posts/ 2>/dev/null))
COUNT=${#ARTICLES[@]}
echo "Found $COUNT articles to process"

for article in "${ARTICLES[@]}"; do
  TITLE=$(grep -oP "<title>\K[^<]+" /Volumes/claude\ code/被动收入/Googel\ Adsense/tireofmoto.com/posts/$article/index.html 2>/dev/null | sed "s/ | Tire of Moto//")
  URL="https://tireofmoto.com/posts/$article/"
  echo "--- Processing: $TITLE ---"
  echo ""
  echo "=== REDDIT (r/motorcycles, r/superbikes) ==="
  echo "Title: Tire guide for every rider - complete OEM sizes + buying tips"
  echo "Body: Hey riders, I put together a comprehensive tire size guide covering OEM specs, DOT dates, and brand recommendations. Happy to help with your bike-specific questions! $URL"
  echo ""
  echo "=== FACEBOOK ==="
  echo "Tire replacement guide with OEM sizes, replacement intervals, and top picks from Michelin/Bridgestone/Pirelli. Read more: $URL #MotorcycleTires #BikeMaintenance"
  echo ""
  echo "=== PINTERPIN ==="
  echo "Pin Title: Motorcycle Tire Sizes Complete Guide (2026) - Save for next tire change!"
  echo "Description: Front & rear OEM specs + buying tips. $URL"
  echo ""
  echo "=== QUORA ==="
  echo "Answer: Check out this complete guide - $URL"
  echo ""
done

echo "=== Done! Copy any text above and paste into target platform ==="
