INSTALL_PATH=~/.local/share/FoundryVTT/Data/modules/ready-set-roll-5e
VERSION=2.1.3b

.PHONY: compress install

compress:
	rm -f releases/rsr5e-release-$(VERSION).zip
	zip -r releases/rsr5e-release-$(VERSION).zip css/ icons/ lang/ lib/ src/ templates/ LICENSE module.json

install: compress
	rm -rf $(INSTALL_PATH)
	mkdir $(INSTALL_PATH)
	unzip releases/rsr5e-release-$(VERSION).zip -d $(INSTALL_PATH)