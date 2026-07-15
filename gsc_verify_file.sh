#!/usr/bin/env bash
set -e

# ==============================================================
# Google Search Console HTML-file verification
# Run from the repo root.
# ==============================================================

echo "Adding GSC verification file..."
cat > google6e619352a339a2d1.html <<'EOF_GPC'
google-site-verification: google6e619352a339a2d1.html
EOF_GPC

git add google6e619352a339a2d1.html
git commit -m "Add Google Search Console HTML verification file"
git push

echo "Done. Test with:"
echo "curl -s https://global-personal-color.vercel.app/google6e619352a339a2d1.html"
echo "Once that shows the file content, click Verify in Search Console."
