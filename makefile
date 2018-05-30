all: hello.js classes.js javascript.js dom_test.js custom_elements.js

hello.js: hello.pas
	/usr/local/bin/pas2js -Jc -Jirtl.js -Tbrowser hello.pas

classes.js: classes.pas
	/usr/local/bin/pas2js -Jc -Jirtl.js -Tbrowser classes.pas

javascript.js: javascript.pas
	/usr/local/bin/pas2js -Jc -Jirtl.js -Tbrowser javascript.pas

dom_test.js: dom_test.pas
	/usr/local/bin/pas2js -Jc -Sc -Jirtl.js -Tbrowser dom_test.pas

custom_elements.js: custom_elements.pas
	/usr/local/bin/pas2js -Jc -Sc -Jirtl.js -Tbrowser custom_elements.pas

clean:
	rm hello.js classes.js javascript.js dom_test.js custom_elements.js
