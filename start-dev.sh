#!/bin/sh
cd `dirname $0`
exec erl -pa $PWD/ebin $PWD/deps/*/ebin $PWD/ebin $PWD/deps/*/deps/*/ebin -DTEST  -config sys -boot start_sasl -kernel error_logger '{file,"./priv/log/crawler.log"}' -s ssl -s reloader -s inets -s ebot
