# Introduction #

Currently there are several options to change the generated output. These can be configured by
using a file named `tei2html.config` in which various parameters can be set. If you add such a file to
the directory where you TEI file is located, the tei2html perl script will automatically pick it up.

It is only necessary to specify those items that differ from the default in your configuration file.

# Current Status #

The default configuration file is:

```
        <tei2html.config>
            <defaultStylesheet>style/arctic.css</defaultStylesheet>     <!-- Stylesheet to include. -->
            <inlineStylesheet>true</inlineStylesheet>                   <!-- use an inline (embedded in HTML) stylesheet; ignored for ePub. -->
            <numberTocEntries>true</numberTocEntries>                   <!-- Provide numbers with TOC entries. -->
            <showParagraphNumbers>false</showParagraphNumbers>          <!-- Output paragraph numbers, using the value of the @n attribute. -->
            <includePGHeaders>false</includePGHeaders>                  <!-- Include Project Gutenberg headers and footers. -->
            <includeImages>true</includeImages>                         <!-- Include images in the generated output. -->
            <defaultTocEntries>false</defaultTocEntries>                <!-- Use generic heads in entries in the TOC, if no head is present -->
            <useDittoMarks>true</useDittoMarks>                         <!-- Use ditto marks where items are marked with the DITTO tag. -->
            <dittoMark>,,</dittoMark>                                   <!-- The symbol to use as a ditto mark. -->
            <generateFacsimile>false</generateFacsimile>                <!-- Output section with and links to facsimile images if required information is present. -->
            <facsimilePath>page-images</facsimilePath>                  <!-- Path where page images for a facsimile edition is present. -->
            <useRegularizedUnits>false</useRegularizedUnits>            <!-- Use the regularized units specified in the measure-tag. (false: both are shown, the original in the text, the regularized units in a 
                                                                             pop-up; true: regularized in text, original in pop-up) -->
            <outputExternalLinks>always</outputExternalLinks>           <!-- Generate external links, possible values: always | never | colophon -->
            <outputExternalLinksTable>false</outputExternalLinksTable>  <!-- Place external links in a separate table in the colophon. -->

            <!-- Output format specific settings: these override the general settings defined above for a specific output format. Supported formats: "html" and "epub". -->
            <output format="html">
                <useMouseOverPopups>true</useMouseOverPopups>           <!-- Use mouse-over pop-ups on various items (links, etc) -->
            </output>
            <output format="epub">
                <useMouseOverPopups>false</useMouseOverPopups>
                <outputExternalLinks>always</outputExternalLinks>
                <outputExternalLinksTable>true</outputExternalLinksTable>
            </output>
        </tei2html.config>
```

This can also be found `configuration.xsl`.

# Future Ideas #

  * Use Mouseover pop-ups. (for showing corrections, etc.)
  * Include images (Y/N/All/Important)
  * Image path (`<path>`)
  * Footnote location (Page/Chapter/Work)
  * Generate colophon (Y/N)
  * Generate table of contents (Front/Back/None)
  * Additional CSS stylesheets (`<name>`)
  * Generate marginal page-numbers (Y/N)
  * Generate links to page-images (Y/N)

# Things that can be handled via CSS #

  * Default table alignment (Left/Right/Center)
  * Default verse alignment (Left/Right/Center)