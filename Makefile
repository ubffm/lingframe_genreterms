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
