<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:output method="html" />

   <xsl:template match="CHAPTER">
      <xsl:processing-instruction name="cocoon-format">type="text/html"</xsl:processing-instruction>

      <HTML>
         <HEAD>
            <meta http-equiv="content-type" content="text/html;charset=ISO-8859-1" />

            <TITLE>Pied Piper Chapitre 
            <xsl:value-of select="@no" />

            : 
            <xsl:value-of select="@title" />
            </TITLE>
         </HEAD>

         <BODY>
            <P align="left">
		   <IMG src="res/img/echoes_project.jpg" alt="ECHOES : un projet de traduction de Xenosaga Pied Piper"/>
            </P>

            <TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0" WIDTH="100%">
               <TR>
                  <TD ALIGN="left">
                     <FONT FACE="Arial,Helvetica" SIZE="3">
                        <U>Pied Piper Chapitre 
                        <xsl:value-of select="@no" />

                        : 
                        <xsl:value-of select="@title" />
                        </U>
                     </FONT>
                  </TD>

		  <TD align="right">
			<FONT FACE="Arial,Helvetica" SIZE="-1">
      			<xsl:element name="A">
      			<xsl:attribute name="href"><xsl:text>all_chapters_html.xml</xsl:text></xsl:attribute>
			<xsl:text>Version intégrale imprimable</xsl:text> 
      			</xsl:element>
			</FONT>
		  </TD>
               </TR>
            </TABLE>

            <BR />

            <TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0" WIDTH="100%">
               <TR>
                  <TD ALIGN="left">
                     <xsl:apply-templates select="./*" />
                  </TD>
               </TR>
            </TABLE>

			<!--
			<TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0" WIDTH="100%">
               <TR>
                  <TD ALIGN="right">
                     <xsl:element name="A">
                        <xsl:attribute name="href">index.html</xsl:attribute>

                        <FONT FACE="Arial,Helvetica" SIZE="-1">Retour accueil</FONT>
                     </xsl:element>
                  </TD>
               </TR>
            </TABLE>
            -->

            <BR />


            <TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0" WIDTH="100%">
               <TR>
                  <TD ALIGN="center">
        <xsl:if test="@previous">
        <xsl:element name="A">
      		<xsl:attribute name="href">chapter<xsl:value-of select="@previous" />.xml</xsl:attribute><xsl:text>Précédent</xsl:text>
      	</xsl:element>

	<xsl:text> - </xsl:text>
        </xsl:if>

        <xsl:if test="@next">
        <xsl:element name="A">
      		<xsl:attribute name="href">chapter<xsl:value-of select="@next" />.xml</xsl:attribute><xsl:text>Suivant</xsl:text>
      	</xsl:element>

	<xsl:text> - </xsl:text>
        </xsl:if>

	<xsl:element name="A">
      		<xsl:attribute name="href"><xsl:text>index.xml#TRADUCTION</xsl:text></xsl:attribute><xsl:text>Index</xsl:text>
      	</xsl:element>
                  </TD>
               </TR>
            </TABLE>

         </BODY>
      </HTML>
   </xsl:template>

   <xsl:template match="COMMENT">
      <P>

      <TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0" WIDTH="100%">
         <TR>
            <TD ALIGN="left" VALIGN="top">
              <I>
                <xsl:value-of select="." />
              </I>
            </TD>
         </TR>
       </TABLE>

      </P>
   </xsl:template>

   <xsl:template match="DIALOG">
      <TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0" WIDTH="100%">
         <TR>
            <TD ALIGN="left" VALIGN="top" width="10%">
            <xsl:value-of select="@character" />

            :</TD>

            <TD ALIGN="left" VALIGN="top">
		<xsl:apply-templates/>
                <!-- xsl:value-of select="." /-->
            </TD>

         </TR>
      </TABLE>

      <BR />
   </xsl:template>

   <xsl:template match="IMAGE">

      <TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0" WIDTH="100%">
         <TR>
            <TD ALIGN="center" VALIGN="top">

      <xsl:element name="IMG">
      		<xsl:attribute name="src">res/img/<xsl:value-of select="@src"/></xsl:attribute>
                <xsl:attribute name="valign">top</xsl:attribute>
      </xsl:element>
            </TD>
         </TR>
       </TABLE>
   </xsl:template>

   <xsl:template match="CR">
	<xsl:element name="BR"/>
        <xsl:element name="BR"/>
   </xsl:template>

</xsl:stylesheet>


