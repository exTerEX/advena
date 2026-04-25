# Parameters

## Input / output

| Parameter  | Type   | Default    | Description                 |
| ---------- | ------ | ---------- | --------------------------- |
| `--input`  | string | (required) | Path to the samplesheet CSV |
| `--outdir` | string | `results`  | Directory for output files  |

---

## ICEscreen

| Parameter           | Type    | Default      | Description                                                      |
| ------------------- | ------- | ------------ | ---------------------------------------------------------------- |
| `--phylum`          | string  | `bacillota`  | Taxonomic phylum; controls the detection mode file used          |
| `--codon_table`     | integer | `11`         | NCBI genetic code for CDS translation                            |
| `--icescreen_root`  | string  | auto-detect  | Path to the ICEscreen installation; overrides `ICESCREEN_ROOT`   |
| `--icescreen_db`    | string  | `null`       | Override path to pre-indexed databases (BLAST + HMM)             |

`icescreen_root` is resolved in order: `--icescreen_root` parameter → `ICESCREEN_ROOT` environment
variable → `~/repo/icescreen` → `/opt/icescreen`.

---

## BLASTP

| Parameter                   | Type    | Default | Description                                   |
| --------------------------- | ------- | ------- | --------------------------------------------- |
| `--blastp_evalue`           | float   | `0.001` | E-value threshold for BLASTP hits             |
| `--blastp_max_target_seqs`  | integer | `10`    | Maximum number of target sequences per query  |

---

## Mobile element detection

| Parameter                     | Type    | Default | Description                                              |
| ----------------------------- | ------- | ------- | -------------------------------------------------------- |
| `--min_cds_between_segments`  | integer | `100`   | Minimum CDS count allowed between two ME segments        |
| `--max_cds_for_ime_size`      | integer | `10`    | Maximum CDS count for classifying an element as an IME   |

---

## Generic options

| Parameter            | Type    | Default  | Description                                                 |
| -------------------- | ------- | -------- | ----------------------------------------------------------- |
| `--publish_dir_mode` | string  | `copy`   | Nextflow `publishDir` mode: `copy`, `symlink`, `move`, etc. |
| `--monochrome_logs`  | boolean | `false`  | Disable ANSI colour in log output                           |
| `--help`             | boolean | `false`  | Display the help message and exit                           |
| `--version`          | boolean | `false`  | Display the pipeline version and exit                       |
