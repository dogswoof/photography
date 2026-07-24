# t7 workflow

## folder structure

```
t7/
├── catalogue/
├── photos/
│   └── yyyy/
│       └── mm/
└── exports/
    └── yyyy/
```

## folders

- **catalogue/** — lrc catalogue file (.lrcat) and previews (.lrdata)
- **photos/** — all raws and round-trip tiffs, organised by year then month
- **exports/** — all lrc export jobs (jpeg, web, print, etc.), organised by year

## import workflow

1. import all files (nef, tif, jpg) direct from card into `photos/yyyy/mm/` — no inbox staging
2. cull in lrc — flag rejects with `x`
3. delete rejects via lrc (removes from catalogue and disk together)

always move or rename files through lrc, never finder — lrc updates paths automatically; finder moves break catalogue links.

## notes

- file naming convention: `yymmdd.nnn` (e.g. `260714.001`)
- organisation within lrc via keywords, not folder names
- encryption: not enabled
- nas is backup destination only — all working files live on t7
- import with xmp reading off — starting fresh, no legacy edit data carried over
