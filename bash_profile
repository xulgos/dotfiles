if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

PATH=$PATH \
  :$HOME/.rvm/bin \
  :$HOME/bin/nodejs/bin/ \
  :./node_modules/.bin \
  :$ANDROID_HOME/tools \
  :$ANDROID_HOME/platform-tools \
  :$HOME/.local/bin \
  :$HOME/bin \
  :/opt/gradle/gradle-4.4/bin

export PATH
