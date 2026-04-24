# Justfile for website-blog

# Usage: just <recipe>
# Run `just` alone to list all recipes

# ----------------------------------------------------------------------
# Local Development
# ----------------------------------------------------------------------

# Start Hugo server with drafts (live reload)
serve:
    hugo server -D

# Build for production (outputs to docs/)
build:
    ./scripts/build.sh

# Initialize/update theme submodule
theme-update:
    git submodule update --init --recursive

# ----------------------------------------------------------------------
# Content Management
# ----------------------------------------------------------------------
# just new-post my-title -> creates content/post/my-title.md
# Usage: just new-post <slug>
new-post slug:
    hugo new "post/{{ slug }}.md"

# Publish a draft from the private content repo
# Usage: just publish <slug>
publish slug:
    ../content/publish-blog-post {{ slug }}

# ----------------------------------------------------------------------
# Deployment
# ----------------------------------------------------------------------
# Build and push to origin/main
deploy:
    ./scripts/build.sh && git add docs/ assets/ layouts/ resources/_gen/ && git commit -m "Release: $(git rev-parse --short HEAD)" && git push
