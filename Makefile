INSTALL_PATH=~/.local/share/FoundryVTT/Data/modules/ready-set-roll-5e
VERSION=1.5.2a

.PHONY: compress install

compress:
	zip -r releases/rsr5e-release-$(VERSION).zip css/ icons/ lang/ lib/ src/ templates/ LICENSE module.json

install: compress
	rm -rf $(INSTALL_PATH)
	mkdir $(INSTALL_PATH)
	unzip rsr5e-release-$(VERSION).zip -d $(INSTALL_PATH)