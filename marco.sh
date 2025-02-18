marco () {
	echo $(pwd) > ~/Projects/missing/scripts/storage_files/marco.txt
}

polo () {
	cd $(cat ~/Projects/missing/scripts/storage_files/marco.txt)
}

