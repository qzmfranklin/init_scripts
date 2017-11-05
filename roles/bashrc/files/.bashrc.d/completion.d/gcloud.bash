os=$(uname)
case $os in
    "Darwin"*)
        # This is retrieved from the `brew casks install google-cloud-sdk`.
        [ -f /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc ]  && \
            . /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc
        [ -f /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc ]  && \
            . /usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc
        ;;
    "Linux"*)
        ;;
esac
