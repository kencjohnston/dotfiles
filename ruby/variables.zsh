unset RUBY_FREE_MIN
# this doesn't work because it is later set again, so we set RUBY_GC_HEAP_FREE_SLOTS instead
export RUBY_GC_HEAP_FREE_SLOTS=200000
# that works because of https://bugs.ruby-lang.org/issues/9276
