find "/c/Users/Vicen/Desktop/IABD" -type d -name ".git" | while read repo; do
  dir=$(dirname "$repo")
  echo "Actualizando $dir..."
  (cd "$dir" && git pull)
done
