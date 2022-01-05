for i in *.png*; do 
  mv "$i" "${i%\_*}"
done

for y in *; do
  mv "$y" "${y}.png"
done
