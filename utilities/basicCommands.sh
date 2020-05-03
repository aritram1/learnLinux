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
# netstat : netstat provides all connections to the host. It is easy to use the flags where 
-a (all connections), 
-i (only incoming connections), 
-s (only sending connections)
Additionally a second flag shows more specific results.
-at/-au : shows all tcp/udp connections 
-st/-su : shows only sending connections
-it/-iu : shows only incoming connections
# -----------------------------------------------------------------------------

