build:
	mkdir build
	swiftc kbswitch.swift -o build/kbswitch

clean:
	rm build/*
