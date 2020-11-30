reset:
	rm "./generated/proxy.xml"
	rm "./generated/policy.xml"
	rm "./final/proxy.xml"
	rm "./final/policy.xml"

generate:
	./scripts/generate.sh
	cp ./generated/* ./final/

create_patch:
	diff -u ./generated/ ./final/ > ./patch/diff.patch

apply_patch:
	patch -p0 <./patch/diff.patch
