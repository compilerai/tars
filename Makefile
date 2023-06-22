FILES = boost_1_79_0.tar.bz2

all: $(FILES)

boost_1_79_0.tar.bz2:
	cat boost_1_79_0.tar.bz2.1 boost_1_79_0.tar.bz2.2 | tee $@ >/dev/null

.PHONY: distclean
distclean: clean_boost

clean_boost:
	rm -f boost_1_79_0.tar.bz2

install_boost: boost_1_79_0.tar.bz2
	# uninstall system boost
	apt-get purge -y libboost-all-dev
	# install our boost
	tar xf boost_1_79_0.tar.bz2 && cd boost_1_79_0 && ./bootstrap.sh --prefix=/usr/ && ./b2 && ./b2 install
	# rm temp files
	rm -rf boost_1_79_0
	rm boost_1_79_0.tar.bz2
