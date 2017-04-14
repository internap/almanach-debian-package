PKG_DIR=/tmp

almanach-api:
	@ docker run --rm \
		-v ${PKG_DIR}:/packages \
		-v `pwd`/debian:/debian \
		internap/python2debian \
		--package-name=almanach-api \
		--package-version="${version}" \
		--package-desc="Almanach records the utilization of OpenStack resources for each tenant" \
		--package-author="Internap Hosting <opensource@internap.com>" \
		--python-package="almanach==${version}" \
		--postinst=/debian/almanach-api.postinst \
		--prerm=/debian/almanach-api.prerm \
		--postrm=/debian/almanach-common.postrm \
		--file "/debian/almanach-api.upstart:/etc/init/almanach-api.conf" \
		--file "/debian/almanach-common.logrotate:/etc/logrotate.d/almanach" \
		--file "/debian/almanach.conf:/etc/almanach/almanach.conf"

almanach-collector:
	@ docker run --rm \
		-v ${PKG_DIR}:/packages \
		-v `pwd`/debian:/debian \
		internap/python2debian \
		--package-name=almanach-collector \
		--package-version="${version}" \
		--package-desc="Almanach records the utilization of OpenStack resources for each tenant" \
		--package-author="Internap Hosting <opensource@internap.com>" \
		--python-package="almanach==${version}" \
		--postinst=/debian/almanach-collector.postinst \
		--prerm=/debian/almanach-collector.prerm \
		--postrm=/debian/almanach-common.postrm \
		--file "/debian/almanach-collector.upstart:/etc/init/almanach-collector.conf" \
		--file "/debian/almanach-common.logrotate:/etc/logrotate.d/almanach" \
		--file "/debian/almanach.conf:/etc/almanach/almanach.conf"
