FILES = boost_1_79_0.tar.bz2

all: $(FILES)

boost_1_79_0.tar.bz2:
	cat boost_1_79_0.tar.bz2.1 boost_1_79_0.tar.bz2.2 | tee $@ >/dev/null
