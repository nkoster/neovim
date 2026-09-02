# Neovim Cheatsheet

Normal mode is de startmodus. `<C-x>` = Ctrl+x, `<Esc>` = Escape.

## Modes & selectie

| Toets | Actie |
| --- | --- |
| `i` | Insert voor cursor |
| `a` | Insert na cursor |
| `o` / `O` | Nieuwe regel onder / boven |
| `<Esc>` | Terug naar Normal mode |
| `v` | Visual: tekens selecteren |
| `V` | Visual Line: hele regels |
| `<C-v>` | Visual Block: rechthoek / kolom |
| `gv` | Vorige visual selectie opnieuw |

## Bewegen

| Toets | Actie |
| --- | --- |
| `h` `j` `k` `l` | Links / beneden / boven / rechts |
| `w` / `b` | Volgend / vorig woord |
| `0` / `^` / `$` | Begin / eerste tekst / einde regel |
| `gg` / `G` | Begin / einde bestand |
| `{` / `}` | Vorige / volgende alinea |
| `<C-d>` / `<C-u>` | Halve pagina omlaag / omhoog |
| `%` | Bijpassende haak: `()` `[]` `{}` |

## Bewerken

| Toets | Actie |
| --- | --- |
| `x` | Teken verwijderen |
| `dd` | Regel verwijderen |
| `D` | Tot einde regel verwijderen |
| `yy` | Regel kopiëren |
| `p` / `P` | Plakken na / voor cursor |
| `ciw` | Woord vervangen |
| `diw` | Woord verwijderen |
| `cc` | Hele regel vervangen |
| `u` | Undo |
| `<C-r>` | Redo |
| `.` | Laatste wijziging herhalen |

## Zoeken & vervangen

| Toets | Actie |
| --- | --- |
| `/tekst` | Vooruit zoeken |
| `?tekst` | Achteruit zoeken |
| `n` / `N` | Volgende / vorige match |
| `*` / `#` | Woord onder cursor vooruit / achteruit |
| `:%s/foo/bar/g` | Vervang `foo` door `bar` in het hele bestand |
| `:%s/foo/bar/gc` | Hetzelfde, maar bevestig per match |

## Buffers

| Toets | Actie |
| --- | --- |
| `:ls` | Buffers tonen |
| `:bn` / `:bp` | Volgende / vorige buffer |
| `:b 3` | Naar buffer nummer 3 |
| `:b naam` | Naar buffer op naam |
| `:bd` | Huidige buffer sluiten |
| `<C-^>` | Wissel met laatst gebruikte buffer |

Buffer = een geopend bestand of tekstobject. Een buffer hoeft niet zichtbaar te zijn.

## Windows / views

| Toets | Actie |
| --- | --- |
| `:split` | Horizontale split |
| `:vsplit` | Verticale split |
| `<C-w> h/j/k/l` | Naar window links / onder / boven / rechts |
| `<C-w> w` | Naar volgend window |
| `<C-w> q` | Huidig window sluiten |
| `<C-w> =` | Splits weer even groot maken |
| `<C-w> H/J/K/L` | Window verplaatsen |

Window = een view op een buffer. Dezelfde buffer kan in meerdere windows staan.

## Tabs

| Toets | Actie |
| --- | --- |
| `:tabnew` | Nieuwe tab |
| `gt` | Volgende tab |
| `gT` | Vorige tab |
| `3gt` | Naar tab 3 |
| `:tabs` | Alle tabs tonen |
| `:tabclose` | Huidige tab sluiten |
| `:tabonly` | Alle andere tabs sluiten |

Tab = een verzameling windows, niet hetzelfde als een buffer.

## Dezelfde tekst op meerdere plekken

| Toets | Actie |
| --- | --- |
| `:%s/oud/nieuw/gc` | Veiligste ingebouwde manier: vervang alle matches met bevestiging |
| `*` `N` | Zoek woord onder cursor en ga terug naar de oorspronkelijke match |
| `cgn` | Wijzig de huidige zoekmatch |
| `.` | Herhaal die wijziging op de volgende match |

Workflow zonder plugin:

`cursor op woord` → `*` → `N` → `cgn` → typ nieuw → `<Esc>` → `.` → `.` → ...

## Echte multiple cursors (plugin)

**vim-visual-multi**: plugin `mg979/vim-visual-multi`

| Toets | Actie |
| --- | --- |
| `<C-n>` | Selecteer woord onder cursor / volgende occurrence |
| `n` / `N` | Volgende / vorige occurrence zoeken |
| `q` | Huidige occurrence overslaan |
| `<Esc>` | Multi-cursor mode verlaten |

Na meerdere selecties kun je tegelijk typen en bewerken. De exacte mappings kunnen door je configuratie afwijken.
