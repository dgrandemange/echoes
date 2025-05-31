<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="2.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="text" />
	<xsl:strip-space elements="*" />

	<!-- https://stackoverflow.com/questions/723226/producing-a-new-line-in-xslt -->
	<xsl:variable name='newline'>
		<xsl:text>&#xa;</xsl:text>
	</xsl:variable>

	<xsl:template match="CHAPTER">
		<xsl:text>&quot;</xsl:text>
		<xsl:text>Chapter marker </xsl:text>
		<xsl:value-of select="@no" />
		<xsl:text>&quot;</xsl:text>
		<xsl:value-of select="$newline" />

		<xsl:apply-templates select="./*" />
	</xsl:template>

	<xsl:template match="COMMENT" /> <!-- NOP -->

	<xsl:template match="DIALOG">
		<xsl:text>&quot;</xsl:text>
		<xsl:text>Speaker : </xsl:text>

		<!-- Translate speakers french names to english names -->
		<xsl:choose>
			<xsl:when test="@character = 'Meris'">
				<xsl:text>Melisse</xsl:text>
			</xsl:when>
			<xsl:when test="@character = 'Bagus'">
				<xsl:text>Bugs</xsl:text>
			</xsl:when>
			<xsl:when test="@character = 'Michael'">
				<xsl:text>Mikhail</xsl:text>
			</xsl:when>
			<xsl:when test="@character = 'Elrich'">
				<xsl:text>Erich</xsl:text>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="@character" />
			</xsl:otherwise>
		</xsl:choose>
		<xsl:text>&quot;</xsl:text>
		<xsl:value-of select="$newline" />

<!-- 		<xsl:text>"index","en","jp","de",</xsl:text> -->
		<xsl:text>,</xsl:text>
		<xsl:text>&quot;</xsl:text>
		<!-- Replace any quote char by tilde char to avoid messing up CSV structure -->
		<xsl:value-of select="translate(.,'&quot;','~')" />
		<xsl:text>&quot;</xsl:text>
		<xsl:value-of select="$newline" />

		<xsl:apply-templates select="./*" />
	</xsl:template>

	<xsl:template match="IMAGE" /><!-- NOP -->

</xsl:stylesheet>
