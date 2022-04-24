<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:output method="html" />

   <xsl:template match="PERSONNAGES">
      <xsl:processing-instruction name="cocoon-format">type="text/html"</xsl:processing-instruction>

      <HTML>
         <HEAD>
            <meta http-equiv="content-type" content="text/html;charset=ISO-8859-1" />

            <TITLE>Personnages</TITLE>
         </HEAD>

         <BODY>
            <P align="left">
		   <IMG src="res/img/echoes_project.jpg" alt="ECHOES : un projet de traduction de Xenosaga Pied Piper"/>
            </P>

            <TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0" WIDTH="100%">
               <TR>
                  <TD ALIGN="left">
                     <FONT FACE="Arial,Helvetica" SIZE="3"><U>Personnages</U>
                     </FONT>
                  </TD>
               </TR>
            </TABLE>

            <BR />

            <TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0" WIDTH="100%">
               <TR>
                  <TD ALIGN="left">
                     <xsl:apply-templates select="./PERSONNAGE" />
                  </TD>
               </TR>
            </TABLE>

            <BR />


            <TABLE BORDER="0" CELLSPACING="0" CELLPADDING="0" WIDTH="100%">
               <TR>
                  <TD ALIGN="center">

	<xsl:element name="A">
      		<xsl:attribute name="href"><xsl:text>index.xml#TRADUCTION</xsl:text></xsl:attribute><xsl:text>Index</xsl:text>
      	</xsl:element>
                  </TD>
               </TR>
            </TABLE>

         </BODY>
      </HTML>
   </xsl:template>


   <xsl:template match="PERSONNAGE">
      <TABLE BORDER="0" CELLSPACING="0" CELLPADDING="2" WIDTH="100%">
         <TR>
            <TD ALIGN="left" VALIGN="top" width="10%">
              <xsl:element name="IMG">
      		<xsl:attribute name="src">res/img/<xsl:value-of select="@image"/></xsl:attribute>
                <xsl:attribute name="valign">top</xsl:attribute>
              </xsl:element>
            </TD>

            <TD ALIGN="left" VALIGN="center">
		<xsl:value-of select="@name"/><BR/>
                <xsl:if test="@age">
		  Age : <xsl:value-of select="@age"/> ans<BR/>
                </xsl:if>
		<xsl:value-of select="."/>
            </TD>

         </TR>
      </TABLE>

      <BR />
   </xsl:template>


</xsl:stylesheet>


