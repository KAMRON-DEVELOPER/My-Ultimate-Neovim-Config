# 🚀 MY ULTIMATE NEOVIM SETUP 🚀

### ⭐ NAVIGATION ⭐

| Mode | Key        | Action                          |
| ---- | ---------- | ------------------------------- |
| (n)  | `h`        | Move cursor left                |
| (n)  | `l`        | Move cursor right               |
| (n)  | `j`        | Move cursor below               |
| (n)  | `k`        | Move cursor up                  |
| (n)  | `w`        | Bring cursor to next word head  |
| (n)  | `e`        | Bring cursor to end of word     |
| (n)  | `gg`       | Go to start of file             |
| (n)  | `G`        | Go to end of file               |
| (n)  | `{`        | Go to start of paragraph        |
| (n)  | `}`        | Go to end of paragraph          |
| (n)  | `0`        | Go to start of line             |
| (n)  | `^`        | Go to first non-blank character |
| (n)  | `$`        | Go to end of line               |
| (n)  | `Ctrl + u` | Move up half page               |
| (n)  | `Ctrl + d` | Move down half page             |
| (n)  | `Ctrl + b` | Move one page up                |
| (n)  | `Ctrl + f` | Move one page down              |

## ⭐ EDITING ⭐

| Mode | Key        | Action                            |
| ---- | ---------- | --------------------------------- |
| (n)  | `x`        | Delete character after cursor     |
| (n)  | `dw`       | Delete to word end                |
| (n)  | `diw`      | Delete whole word                 |
| (n)  | `dd`       | Delete entire line                |
| (n)  | `D`        | Delete from cursor to end of line |
| (n)  | `u`        | Undo                              |
| (n)  | `Ctrl + r` | Redo                              |
| (n)  | `>>`       | Indent right                      |
| (n)  | `<<`       | Indent left                       |
| (n)  | `~`        | Toggle case                       |
| (n)  | `.`        | Repeat last action                |
| (n)  | `viw`      | Select inside word                |
| (n)  | `ciw`      | Change inside word                |
| (n)  | `cw`       | Change word (partial)             |
| (n)  | `caw`      | Change entire word                |

## ⭐ VISUAL MODE ⭐

| Mode | Key | Action              |
| ---- | --- | ------------------- |
| (v)  | `v` | Start visual mode   |
| (v)  | `V` | Select whole line   |
| (v)  | `y` | Yank (copy)         |
| (v)  | `p` | Paste               |
| (v)  | `P` | Paste before cursor |


## 📦 PLUGINS CONFIGURATION 📦

### ⚙️ nvim-treesitter
| Mode | Key            | Action                |
| ---- | -------------- | --------------------- |
| (v)  | `Ctrl + Space` | Incremental selection |
| (v)  | `Backspace`    | Decremental selection |


### ⚙️ vim-maximizer
| Mode | Key        | Action                         |
| ---- | ---------- | ------------------------------ |
| (n)  | `Ctrl + M` | Maximize/minimize split window |


### ⚙️ mason, mason-lspconfig, nvim-lspconfig
| Mode | Key           | Action                      |
| ---- | ------------- | --------------------------- |
| (n)  | `Leader + ch` | Show code hover information |
| (n)  | `Leader + cd` | Go to code definition       |
| (n)  | `Leader + cr` | Show code references        |
| (n)  | `Leader + ca` | Show code actions           |


### ⚙️ nvim-surround
| Mode | Key                     | Action                           |
| ---- | ----------------------- | -------------------------------- |
| (n)  | `ysiw + character`      | Surround word with a character   |
| (n)  | `yss + character`       | Surround line with a character   |
| (n)  | `ds + character`        | Delete surrounding character     |
| (n)  | `cs + character`        | Change surrounding character     |
| (n)  | `cs + character + text` | Change surrounding with new text |

#### (official)
|    Old text                 |   Command      |   New text                |  
| --------------------------- | -------------- | ------------------------- |
|    surr*ound_words          |   ysiw)        |   (surround_words)        |
|    *make strings            |   ys$"         |   "make strings"          |
|    [delete ar*ound me!]     |   ds]          |   delete around me!       |
|    remove <b>HTML t*ags</b> |   dst          |   remove HTML tags        |
|    'change quot*es'         |   cs'"         |   "change quotes"         |
|    <b>or tag* types</b>     |   csth1<CR>    |   <h1>or tag types</h1>   | 
|    delete(functi*on calls)  |   dsf          |   function calls          |


### ⚙️ vim-fugitive
| Mode | Key            | Action                      |
| ---- | -------------- | --------------------------- |
| (n)  | `Leader + gs`  | Open Git status window      |
| (n)  | `Leader + gd`  | Show Git diff               |
| (n)  | `Leader + gaa` | Stage all files             |
| (n)  | `Leader + ga`  | Stage current file          |
| (n)  | `Leader + gc`  | Commit changes with message |

| Fugitive Shortcuts                      |
| --------------------------------------- |
| `-` : Stage/unstage current file        |
| `cc` : Commit changes                   |
| `s` : Stage the current file            |
| `u` : Unstage the current file          |
| `X` : Discard changes                   |
| `=` : View file differences             |
| `ZZ` : Save and exit the commit message |



### ⚙️ flutter-tools
* FlutterRun - Run the current project. Respects config.debugger.enabled setting.
* FlutterDebug - Force run current project in debug mode.
* FlutterDevices - Brings up a list of connected devices to select from.
* FlutterEmulators - Similar to devices but shows a list of emulators to choose from.
* FlutterReload - Reload the running project.
* FlutterRestart - Restart the current project.
* FlutterQuit - Ends a running session.
* FlutterAttach - Attach to a running app.
* FlutterDetach - Ends a running session locally but keeps the process running on the device.
* FlutterOutlineToggle - Toggle the outline window showing the widget tree for the given file.
* FlutterOutlineOpen - Opens an outline window showing the widget tree for the given file.
* FlutterDevTools - Starts a Dart Dev Tools server.
* FlutterDevToolsActivate - Activates a Dart Dev Tools server.
* FlutterCopyProfilerUrl - Copies the profiler url to your system clipboard (+ register). Note that commands FlutterRun and FlutterDevTools must be executed first.
* FlutterLspRestart - This command restarts the dart language server, and is intended for situations where it begins to work incorrectly.
* FlutterSuper - Go to super class, method using custom LSP method dart/textDocument/super.
* FlutterReanalyze - Forces LSP server reanalyze using custom LSP method dart/reanalyze.
* FlutterRename - Renames and updates imports if lsp.settings.renameFilesWithClasses == "always"
* FlutterLogClear - Clears the log buffer.
* FlutterLogToggle - Toggles the log buffer.
