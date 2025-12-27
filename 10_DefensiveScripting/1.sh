# Defensive shell scripting:

str="hello, from a shell script"

echo "$str";


# check if var is empty:
name="ayush";

if [ -z $name ]; then  # -z mean is var empty, -n means is var contain somethign
    echo "empty var";
else
    echo "$name";
fi

# check arg count

if [ $# -ne 1 ]; then
    echo "Usage: $0";
else
    echo "$#";
fi
