# Makefile for building Swift project

# Variables
SRC_DIR = src
BUILD_DIR = build
EXECUTABLE = $(BUILD_DIR)/Quanta
SWIFT_FILES = $(wildcard $(SRC_DIR)/*.swift)

# Default target
all: $(EXECUTABLE)

# Build target: Compile Swift files into an executable
$(EXECUTABLE): $(SWIFT_FILES)
	mkdir -p $(BUILD_DIR)
	swiftc -o $(EXECUTABLE) $(SWIFT_FILES)

# Clean target: Remove build artifacts
clean:
	rm -rf $(BUILD_DIR)

# Phony targets (not actual files)
.PHONY: all clean