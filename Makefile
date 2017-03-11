all: chrome firefox

chrome:
	cp ~/.ssh/launchpad_tweaks.pem key.pem
	zip -r /tmp/launchpad_tweaks_chrome.zip css icons manifest.json key.pem LICENSE README.md
	rm key.pem

firefox:
	zip -r /tmp/launchpad_tweaks_ff.zip css icons manifest.json LICENSE README.md

clean:
	rm -fv /tmp/launchpad_tweaks_*.zip
