# some setup
# ===============================================================================
mkdir learnLinux && cd learnLinux
touch linux_file
mkdir ../test
touch test_file
# ===============================================================================
# Let's begin

# cp : copies a file # format : cp <file_to_copy> <optional_new_file_name>
cp test_linux . #. means current folder (and .. means parent folder)
cp test_linux new_test_linux
ls
# -----------------------------------------------------------------------------
cd ../learnLinux
# mv : moves a file. This can also be used to rename a file. Formats are 
# moving : mv <old_file> <new_file>
mv linux_file ./test #moving
mv ./test/renamed_linux_file ./test/linux_file # renaming
# -----------------------------------------------------------------------------
