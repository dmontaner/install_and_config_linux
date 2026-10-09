## Disk usage tools on Ubuntu

The direct successor to KDirStat is **QDirStat**. It's by the same author, it's still maintained, and it's in the Ubuntu repos.

```bash
sudo apt install qdirstat
qdirstat .
```

Other good options:

| Tool | Type | Install | Notes |
|---|---|---|---|
| **QDirStat** | GUI | `apt install qdirstat` | KDirStat look: treemap plus tree view, with cleanup actions |
| **ncdu** | Terminal (TUI) | `apt install ncdu` | The usual terminal choice. Browse with the arrow keys and press `d` to delete |
| **gdu** | Terminal (TUI) | `apt install gdu` | Works like ncdu but is much faster on SSDs because it scans in parallel |
| **dust** | CLI | `apt install du-dust` (or `cargo install du-dust`) | Prints a one-shot tree with bars, like a better `du` |
| **Baobab** ("Disk Usage Analyzer") | GUI | Usually preinstalled on GNOME | Shows ring charts and is simpler than QDirStat |
| **Filelight** | GUI | `apt install filelight` | KDE's radial-chart viewer |

If you liked KDirStat, use `qdirstat`. To look around quickly without leaving the terminal, use `gdu .` or `ncdu .`.
