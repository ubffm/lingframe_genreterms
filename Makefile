# Copyright 2020-2022, UB JCS, Goethe University Frankfurt am Main
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

OUT_DIR=./dist
SRC_DIR=./src
MAIN_FILE=lingframe-genreterms.ttl

$(OUR_DIR)/$(MAIN_FILE): $(OUT_DIR)/$(MAIN_FILE).tmp.ttl
	skosify -F turtle $(OUT_DIR)/$(MAIN_FILE).tmp.ttl > $(OUT_DIR)/$(MAIN_FILE)
	rm $(OUT_DIR)/$(MAIN_FILE).tmp.ttl

$(OUT_DIR)/$(MAIN_FILE).tmp.ttl: $(OUT_DIR)
	bin/add-modified.sh $(SRC_DIR)/$(MAIN_FILE) $(OUT_DIR)/$(MAIN_FILE).tmp.ttl

$(OUT_DIR): 
	mkdir $(OUT_DIR)

clean:
	rm -rf $(OUT_DIR)
