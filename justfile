_default:
  @just --list

# Install required tools
install:
    cargo install mdbook mdbook-i18n-helpers

# Build the book (English)
build:
    mdbook build

# Build all languages (English + translations)
build-all:
    mdbook build
    MDBOOK_BOOK__LANGUAGE=sv mdbook build -d book/sv

# Serve the book locally
serve:
    mdbook serve

# Extract translatable strings into po/messages.pot
extract:
    MDBOOK_OUTPUT='{"xgettext": {}}' mdbook build -d po

# Update existing PO files after source changes
update-po lang:
    msgmerge --update po/{{lang}}.po po/messages.pot

# Build a translated version of the book
build-translation lang:
    MDBOOK_BOOK__LANGUAGE={{lang}} mdbook build -d book/{{lang}}

# Serve a translated version locally
serve-translation lang:
    MDBOOK_BOOK__LANGUAGE={{lang}} mdbook serve -d book/{{lang}}

# Clean build artifacts
clean:
    rm -rf book
