# runext

Installation:

    cp .extsyn.conf ~
	cp runext nvidia_libraries.sh ~/bin
	<set nvidia driver version in ~/bin/nvidia_libraries.sh>

Usage examples:

	runext java -jar Minecraft.jar
	runext steam
	runext mplayer foo.ogg

When in need of 32 bit libraries, supply `-32` parameter:

	runext -32 wine foo.exe

