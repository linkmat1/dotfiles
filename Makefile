.PHONY: install installdev

install:
	xargs -d '\n' -a packages/package.list yay --noconfirm -S

installdev: install
	xargs -d '\n' -a packages/dev.list yay --noconfirm -S
