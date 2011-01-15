<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="2.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
    xmlns:xs="http://www.w3.org/2001/XMLSchema" 
    xmlns:f="http://example.com/"
    exclude-result-prefixes="f xs"
    >


<xsl:output method="html" indent="yes"/>


<xsl:template match="test">

    <html>
        <head>
            <title>Test of parallel columns</title>
            <style type="text/css">
                tr { vertical-align: top; }

                tr:nth-child(even) { background: #CCC; }
                tr:nth-child(odd) { background: #EEE; }

                td { padding-bottom: 1em; }
            </style>
        </head>
        <body>

            <xsl:call-template name="align-paragraphs">
                <xsl:with-param name="a" select="//div[@id='ch1']"/>
                <xsl:with-param name="b" select="//div[@id='ch2']"/>
            </xsl:call-template>
        
        </body>
    </html>
</xsl:template>



<xsl:template name="align-paragraphs">
    <xsl:param name="a"/>
    <xsl:param name="b"/>

    <xsl:variable name="anchors" as="xs:string*">
        <xsl:for-each-group select="$a/p/@name, $b/p/@name" group-by=".">
            <xsl:if test="count(current-group()) = 2">
                <xsl:sequence select="string(.)"/>
            </xsl:if>
        </xsl:for-each-group>
    </xsl:variable>

    <table>
        <xsl:for-each select="$a/p[@name = $anchors]">
            <xsl:variable name="name" select="@name"/>

            <tr>
                <td>
                    <p><xsl:apply-templates select="."/></p>
                    <xsl:call-template name="output-inserted-lines">
                        <xsl:with-param name="start" select="."/>
                        <xsl:with-param name="anchors" select="$anchors"/>
                    </xsl:call-template>
                </td>
                <td>
                    <p><xsl:apply-templates select="$b/p[@name = $name]"/></p>
                    <xsl:call-template name="output-inserted-lines">
                        <xsl:with-param name="start" select="$b/p[@name = $name]"/>
                        <xsl:with-param name="anchors" select="$anchors"/>
                    </xsl:call-template>
                </td>
            </tr>
        </xsl:for-each>
    </table>
</xsl:template>


<xsl:template name="output-inserted-lines">
    <xsl:param name="start" as="node()"/>
    <xsl:param name="anchors"/>
    <xsl:variable name="next" select="$start/following-sibling::*[1]"/>

    <xsl:if test="not($next/@name = $anchors)">
        <xsl:if test="$next">
            <p><xsl:apply-templates select="$next"/></p>

            <xsl:call-template name="output-inserted-lines">
                <xsl:with-param name="start" select="$next"/>
                <xsl:with-param name="anchors" select="$anchors"/>
            </xsl:call-template>
        </xsl:if>
    </xsl:if>
</xsl:template>





<xsl:template name="sample-input">
    <test>
        <div id="ch1">
            <p name="a1">Eerste Alinea.</p>
            <p name="a1.1">Zomaar ertussen.</p>
            <p name="a2">Tweede Alinea.</p>
            <p name="a3">Derde Alinea.</p>
        </div>
        <div id="ch2">
            <p name="a1">First Paragraph.</p>
            <p name="a2">Second Paragraph.</p>
            <p name="a2.1">Something added here.</p>
            <p name="a3">Third Paragraph.</p>
        </div>
    </test>
</xsl:template>

<xsl:template name="sample-output">
    <table>
        <tr><td>Eerste Alinea.</td>  <td>First Paragraph.</td></tr>
        <tr><td>Zomaar ertussen.</td><td/></tr>
        <tr><td>Tweede Alinea.</td>   <td>Second Paragraph.</td></tr>
        <tr><td/>                       <td>Something added here.</td></tr>
        <tr><td>Derde Alinea.</td>   <td>Third Paragraph.</td></tr>
    </table>
</xsl:template>


<xsl:template name="old-code">
    <xsl:param name="a"/>
    <xsl:param name="b"/>

    <table>
        <xsl:for-each-group group-by="@name" select="$a/p, $b/p">
            <xsl:sort select="@name"/>
            <xsl:variable name="name" select="@name"/>
            <xsl:comment select="current-grouping-key()"/> 
            <tr>
                <td>
                    <xsl:apply-templates select="current-group()[.. is $a]"/> 
                </td>
                <td>
                    <xsl:apply-templates select="current-group()[.. is $b]"/> 
                </td>
             </tr>
        </xsl:for-each-group>
    </table>

</xsl:template>

</xsl:stylesheet>