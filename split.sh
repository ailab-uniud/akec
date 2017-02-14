display_usage() { 
	echo "Usage: split [pure|raw]"
	echo "Splits the [pure|raw] dataset using the ids contained in train.ids and test.ids." 


}

if [  $# -ne 1 ];
then 
		display_usage
		exit 1
fi 

if [ $1 != "pure" ] && [ $1 != "raw" ];
then
	display_usage
	exit 1
fi

echo "Copying training files..."

mkdir train
while IFS='' read -r line || [[ -n "$line" ]]; do cp documents/$1/$line train/$line; done < train.ids

echo "Copying testing files..."

mkdir test
while IFS='' read -r line || [[ -n "$line" ]]; do cp documents/$1/$line test/$line; done < test.ids

echo "Done."
exit 0
