<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:import href="/usr/share/asciidoc/docbook-xsl/xhtml.xsl"/>
<xsl:import href="virtuozzo.xhtml.titlepages.xsl"/>

<xsl:param name="html.stylesheet" select="'stylesheets/virtuozzo.xhtml.stylesheet.css'"/>

<xsl:param name="use.role.for.mediaobject">1</xsl:param>
<xsl:param name="preferred.mediaobject.role">html</xsl:param>

<xsl:param name="shade.verbatim" select="0"/>
<xsl:attribute-set name="shade.verbatim.style">
  <xsl:attribute name="border">0</xsl:attribute>
  <xsl:attribute name="background-color">#E0E0E0</xsl:attribute>
</xsl:attribute-set>

<xsl:param name="section.autolabel.max.depth">3</xsl:param>
<xsl:param name="admon.textlabel" select="1"/>
<xsl:param name="generate.legalnotice.link" select="0"/>
<xsl:param name="formal.object.break.after">0</xsl:param>

<xsl:param name="table.borders.with.css" select="1"/>
<xsl:param name="table.cell.border.color" select="'#C0C0C0'"/>
<xsl:param name="table.cell.border.style" select="'solid'"/>
<xsl:param name="table.cell.border.thickness" select="'1px'"/>
<xsl:param name="table.footnote.number.format" select="'a'"/>
<xsl:param name="table.footnote.number.symbols" select="''"/>
<xsl:param name="table.frame.border.color" select="'#C0C0C0'"/>
<xsl:param name="table.frame.border.style" select="'solid'"/>
<xsl:param name="table.frame.border.thickness" select="'1px'"/>
<xsl:param name="tablecolumns.extension" select="'1'"/>

<!--
  Table of contents inserted by <?asciidoc-toc?> processing instruction.
-->
<xsl:param name="toc.section.depth">3</xsl:param>
<xsl:param name="generate.toc">
   <xsl:choose>
      <xsl:when test="/processing-instruction('asciidoc-toc')">
book    toc,title
      <!-- The only way I could find that suppressed book chapter TOCs -->
         <xsl:if test="$generate.section.toc.level != 0">
chapter   toc,title
sect1     toc
sect2     toc
sect3     toc
sect4     toc
sect5     toc
section   toc
         </xsl:if>
      </xsl:when>
      <xsl:otherwise>
book    nop
      </xsl:otherwise>
   </xsl:choose>
</xsl:param>

</xsl:stylesheet>

