



Install Cytoscape
================================================================================

From <http://www.network-science.org/cytoscape-download-install-ubuntu-linux-unix.html>


Set exec rights

    chmod a+x Cytoscape_3_4_0_unix.sh

Install locally

    ./Cytoscape_3_4_0_unix.sh 



Install Cytoscape Plugins
================================================================================

Cytoscape __2__ extensions are called: __plugins__  
Cytoscape __3__ extensions are called: __apps__  

- app [CyREST](http://apps.cytoscape.org/apps/cyrest)                is needed by Bioconductor __RCy3__       package whic uses Cytoscape 2.
- plugin [CytoscapeRPC](http://apps.cytoscape.org/apps/cytoscaperpc) is needed by Bioconductor __RCytoscape__ package whic uses Cytoscape 3.

__CyREST__ is installed by default in Cytoscape 3.4.  

It can be __upgraded__: 

1. open Cytoscape
2. open <http://apps.cytoscape.org/apps/cyrest> in your browser and click upgrade.


R / Bioconductor
================================================================================

Use:

- [RCy3](http://master.bioconductor.org/packages/release/bioc/html/RCy3.html)           for __Cytoscape version >= 3__
- [RCytoscape](https://www.bioconductor.org/packages/release/bioc/html/RCytoscape.html) for   Cytoscape version  < 3

