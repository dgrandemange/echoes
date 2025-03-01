<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text" />
	<xsl:strip-space elements="*" />

	<!-- https://stackoverflow.com/questions/723226/producing-a-new-line-in-xslt -->
	<xsl:variable name='newline'>
		<xsl:text>&#xa;</xsl:text>
	</xsl:variable>

	<xsl:template match="CHAPTER">
		<xsl:text>"</xsl:text>
		<xsl:text>Chapter marker </xsl:text>
		<xsl:value-of select="@no" />
		<xsl:text>"</xsl:text>
		<xsl:value-of select="$newline" />

		<xsl:apply-templates select="./*" />
	</xsl:template>

	<xsl:template match="COMMENT" /> <!-- NOP -->

	<xsl:template match="DIALOG">
		<xsl:text>"</xsl:text>
		<xsl:text>Speaker : </xsl:text>

		<!-- Translate speakers french names to english names -->
		<xsl:choose>
			<xsl:when test="@character = 'Inconnu'">
				<xsl:text>stranger</xsl:text>
			</xsl:when>
			<xsl:when test="@character = 'Opérateur réseau'">
				<xsl:text>network operator</xsl:text>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="@character" />
			</xsl:otherwise>
		</xsl:choose>
		<xsl:text>"</xsl:text>
		<xsl:value-of select="$newline" />

		<xsl:text>"index","en","jp","de",</xsl:text>
		<xsl:text>"</xsl:text>
		<xsl:value-of select="." />
		<xsl:text>"</xsl:text>
		<xsl:value-of select="$newline" />

		<xsl:apply-templates select="./*" />
	</xsl:template>

	<xsl:template match="IMAGE" /><!-- NOP -->

</xsl:stylesheet>
