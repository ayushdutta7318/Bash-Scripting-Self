# Always log destructive action:
echo "delete file"
if [ -f "test.txt" ]; then
    rm -rvf "test.txt";
else
    echo "file does not exist";
fi

exit 0;