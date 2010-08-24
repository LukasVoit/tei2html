<!DOCTYPE xsl:stylesheet>
<!--

    Stylesheet to format the HTML header, to be imported in tei2html.xsl.

-->

<xsl:stylesheet
    xmlns="http://www.w3.org/1999/xhtml"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    version="2.0"
    >


    <xsl:param name="customCssFile"/>


    <!--====================================================================-->
    <!-- HTML Header -->


    <xsl:template match="TEI.2">
        <xsl:comment>
            <xsl:text> This HTML file has been automatically generated from an XML source on </xsl:text><xsl:value-of select="current-dateTime()"/><xsl:text>. </xsl:text>
        </xsl:comment>

        <xsl:text> <!-- insert extra new-line for PG -->
        </xsl:text>

        <html>
            <xsl:call-template name="set-lang-id-attributes"/>
            <xsl:call-template name="generate-html-header"/>

            <body>
                <xsl:text> <!-- insert extra new-line for PG -->
                </xsl:text>

                <xsl:if test="$optionPGHeaders = 'Yes'">
                    <xsl:call-template name="PGHeader"/>
                </xsl:if>

                <xsl:apply-templates/>

                <xsl:if test="$optionPGHeaders = 'Yes'">
                    <xsl:call-template name="PGFooter"/>
                </xsl:if>
            </body>
        </html>

        <xsl:text> <!-- insert extra new-line for PG -->
        </xsl:text>

    </xsl:template>


    <xsl:template name="generate-html-header">
        <head>
            <title>
                <xsl:value-of select="$title"/>
            </title>

            <xsl:call-template name="generate-metadata"/>
            <xsl:call-template name="include-stylesheets"/>
        </head>
    </xsl:template>


    <xsl:template name="generate-metadata">

        <meta http-equiv="Content-Type" content="{$mimeType}; charset={$encoding}"/>
        <meta name="generator" content="tei2html.xsl, see http://code.google.com/p/tei2html/"/>
        <meta name="author"             content="{$author}"/>

        <!-- Insert Dublin Core metadata -->
        <link rel="schema.DC"     href="http://dublincore.org/documents/1998/09/dces/"/> <!-- WAS: http://purl.org/DC/elements/1.0/ -->

        <meta name="DC.Creator"   content="{$author}"/>
        <meta name="DC.Title"     content="{$title}"/>
        <meta name="DC.Date"      content="{$pubdate}"/>
        <meta name="DC.Language"  content="{$language}"/>
        <meta name="DC.Format"    content="text/html"/>
        <meta name="DC.Publisher" content="{$publisher}"/>
        <xsl:if test="//idno[@type='PGnum'] and not(contains(//idno[@type='PGnum'], '#'))">
            <meta name="DC.Rights" content="{$strNotCopyrightedUS}"/>
            <meta name="DC.Identifier">
                <xsl:attribute name="content">http://www.gutenberg.org/etext/<xsl:value-of select="//idno[@type='PGnum']"/></xsl:attribute>
            </meta>
        </xsl:if>

        <xsl:for-each select="teiHeader/profileDesc/textClass/keywords/list/item">
            <meta name="DC:Subject">
                <xsl:attribute name="content"><xsl:value-of select="."/></xsl:attribute>
            </meta>
        </xsl:for-each>

    </xsl:template>


    <xsl:template name="include-stylesheets">

        <xsl:choose>
            <xsl:when test="$outputformat = 'epub'">
                <!-- In ePub, we collect all stylesheets into a single file -->
                <link href="{$basename}.css"    rel="stylesheet"            type="text/css"/>
            </xsl:when>

            <xsl:otherwise>
                <xsl:variable name="stylesheetname">
                    <xsl:choose>
                        <xsl:when test="contains(/TEI.2/text/@rend, 'stylesheet(')">
                            <xsl:value-of select="substring-before(substring-after(/TEI.2/text/@rend, 'stylesheet('), ')')"/>
                        </xsl:when>
                        <xsl:otherwise>style/arctic.css</xsl:otherwise>
                    </xsl:choose>.xml
                </xsl:variable>


                <!-- Pull in CSS sheets. This requires the CSS to be wrapped in an XML tag at toplevel, so they become valid XML -->
                <style type="text/css">
                    <!-- Standard CSS stylesheet -->
                    <xsl:copy-of select="document('style/gutenberg.css.xml')/*/node()"/>

                    <!-- Supplement CSS stylesheet -->
                    <xsl:copy-of select="document(normalize-space($stylesheetname))/*/node()"/>

                    <!-- Standard Aural CSS stylesheet -->
                    <xsl:copy-of select="document('style/aural.css.xml')/*/node()"/>
                </style>

                <!-- Pull in CSS sheet for print (using Prince). -->
                <xsl:if test="$optionPrinceMarkup = 'Yes'">
                    <style type="text/css" media="print">
                        <xsl:copy-of select="document('style/print.css.xml')/*/node()"/>
                    </style>
                </xsl:if>

                <style type="text/css">
                    <xsl:if test="$customCssFile">
                        <!-- Custom CSS stylesheet, overrides build in stylesheets, so should come later -->
                        <xsl:copy-of select="document(normalize-space($customCssFile))/*/node()"/>
                    </xsl:if>

                    <!-- Generate CSS for rend attributes, overrides all other CSS, so should be last -->
                    <xsl:apply-templates select="/" mode="css"/>
                </style>

            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>


    <!--====================================================================-->
    <!-- TEI Header -->

    <!-- Suppress the header in the output -->

    <xsl:template match="teiHeader"/>


</xsl:stylesheet>
