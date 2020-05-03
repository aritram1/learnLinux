# Terminal prompt can be changed with this.
# PS1 variable in ~/.bashrc file produces the terminal prompt. To override that a custom function
# can be utilized.
# This one changes the prompt based on result of the issued command. 
# A successful command (like ls) -> 😎 🐶 🌼
# A failed command (like ls123) -> 💩

# location : Place this function and export in user's local .bashrc file (i.e. in ~/.bashrc)

function success_indicator() {
    if [ $? -eq 0 ] ; then
        echo "😎 🐶 🌼"
    else
        echo "💩"
    fi
}

# finally export the PS1 variable
export PS1='$(success_indicator) $ '

#End of fun :)
