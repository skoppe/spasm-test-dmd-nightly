build:
	sed 's^%@P%^'$$(dirname $$(which dmd))'^g' dmd.conf.templ > dmd.conf
	@-dub build --compiler=dmd > got.txt 2>&1 1>/dev/null || true
	diff expected.txt got.txt
