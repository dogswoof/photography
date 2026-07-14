# t7 workflow

## folder structure

```
t7/
├── catalogue/
├── inbox/
├── photos/
│   └── yyyy/
│       └── yymmdd/
├── exports/
└── working/
```

## folders

- **catalogue/** — lrc catalogue file (.lrcat) and previews (.lrdata)
- **inbox/** — all imports land here flat; target is inbox zero
- **photos/** — reviewed keepers, organised by year then shoot date (yymmdd)
- **exports/** — all lrc export jobs (jpeg, web, print, etc.)
- **working/** — photoshop psds and tiffs generated during editing

## import workflow

1. import all files (nef, tif, jpg) into `inbox/` — flat, no subfolders
2. cull in lrc — flag rejects with `x`, keepers rated or starred
3. delete rejects via lrc (removes from catalogue and disk together)
4. move keepers to `photos/yyyy/yymmdd/` via lrc folder panel

always move or rename files through lrc, never finder — lrc updates paths automatically; finder moves break catalogue links.

## notes

- file naming convention: `yymmdd.nnn` (e.g. `260714.001`)
- organisation within lrc via keywords, not folder names
- encryption: not enabled
- nas is backup destination only — all working files live on t7
- import with xmp reading off — starting fresh, no legacy edit data carried over
