#!/usr/bin/env bash

# By rewriting the markdown headings to HTML we prevent Nextra from
# including them in the RHS TOC sidebar.
find pages/api_reference -type f -exec perl -i -pe 's/^>.*\n//; s/^(#+) (Returns|Source|Parameters|Properties|Type declaration|Type parameters|Extends|Overrides)/"<h" . length($1) . " class=\"nx-font-semibold nx-tracking-tight nx-text-slate-900 dark:nx-text-slate-100 nx-mt-8 nx-text-" . (length($1) > 3 ? "lg" : "2xl") . "\">" . $2 . "<\/h" . length($1) . ">"/eg' {} +