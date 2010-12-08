# We need a way to prevent the stuff Google Apps replaces from being included in the build.
# This is a hacky way to do that.
ifdef OXYGEN_WITH_GOOGLE
    PACKAGES.Email.OVERRIDES := Home Development SpareParts Term
endif
