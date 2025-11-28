# Zero Language Highlight VS Code Extension Makefile

.PHONY: all installdeps fmt clean build package help

# Default target
all: build

# Install dependencies
installdeps:
	@echo "Installing dependencies..."
	npm install

# Format code (JSON files)
fmt:
	@echo "Formatting JSON files..."
	@npx prettier --write "*.json" "syntaxes/*.json" 2>/dev/null || \
		(npm install --save-dev prettier && npx prettier --write "*.json" "syntaxes/*.json")

# Clean build artifacts
clean:
	@echo "Cleaning build artifacts..."
	rm -rf out/
	rm -rf node_modules/
	rm -f *.vsix

# Build/Compile TypeScript
build:
	@echo "Building..."
	npm run compile

# Package extension
package: build
	@echo "Packaging extension..."
	npm run package

# Full rebuild and package
repack: clean installdeps build package

# Help
help:
	@echo "Available targets:"
	@echo "  make installdeps  - Install npm dependencies"
	@echo "  make fmt          - Format JSON files with prettier"
	@echo "  make clean        - Remove build artifacts and node_modules"
	@echo "  make build        - Compile TypeScript"
	@echo "  make package      - Build and package the extension (.vsix)"
	@echo "  make repack       - Full rebuild: clean -> installdeps -> build -> package"
	@echo "  make help         - Show this help message"