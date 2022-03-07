for file in ./*.o
do
	objdump -d "$file" >> $file.objdump.d
done
