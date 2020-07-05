#!/bin/bash

./same.sh a b > /tmp/result-$$

echo "error" > /tmp/ans-$$

diff /tmp/ans-$$ /tmp/result-$$ || exit 1

./same.sh a a > /temp/result-$$

echo "same" > /tmp/ans-$$

diff /tmp/ans-$$ /tmp/result-$$ || exit 1

echo "complete"
